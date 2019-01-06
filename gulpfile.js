 /*
 * #%L
 * This file is part of FAHWeb.
 * %%
 * Copyright (C) 2012 - 2017 Michael Thomas <mikepthomas@outlook.com>
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program.  If not, see
 * <http://www.gnu.org/licenses/gpl-3.0.html>.
 * #L%
 */

var gulp = require('gulp');
var wiredep = require('wiredep').stream;
var plugins = require('gulp-load-plugins')({
    lazy: true,
    pattern: ['gulp-*', 'inject']
});
var tsProject = plugins.typescript.createProject("tsconfig.json");

gulp.task('css', function () {
    var injectGlobalFiles = gulp.src('src/sass/global/*.scss', {read: false});
    var injectAppFiles = gulp.src('src/sass/styles/*.scss', {read: false});

    var injectGlobalOptions = {
        transform: plugins.inject.transform.scss,
        starttag: '// inject:global',
        endtag: '// endinject',
        addRootSlash: false
    };

    var injectAppOptions = {
        transform: plugins.inject.transform.scss,
        starttag: '// inject:app',
        endtag: '// endinject',
        addRootSlash: false
    };

    return gulp.src('src/sass/main.scss')
            .pipe(wiredep())
            .pipe(plugins.inject(injectGlobalFiles, injectGlobalOptions))
            .pipe(plugins.inject(injectAppFiles, injectAppOptions))
            .pipe(plugins.sass())
            .pipe(plugins.autoprefixer())
            .pipe(gulp.dest('css'))
            .pipe(plugins.rename({suffix: '.min'}))
            .pipe(plugins.sourcemaps.init())
            .pipe(plugins.cleanCss())
            .pipe(plugins.sourcemaps.write('.', {
                includeContent: false,
                sourceRoot: '.',
                mapSources: function (sourcePath) {
                    return sourcePath.replace('.min', '');
                }
            }))
            .pipe(gulp.dest('css'));
});

gulp.task('docs', function (cb) {
    var config = require('./jsdoc.json');
    gulp.src(['README.md', 'js/**/*.js'], {read: false})
        .pipe(plugins.jsdoc3(config, cb));
});

gulp.task('js', function () {
    var tsResult = tsProject.src()
        .pipe(plugins.sourcemaps.init())
        .pipe(tsProject());

    return tsResult.js
        .pipe(plugins.uglify())
        .pipe(plugins.sourcemaps.write('.', {
            includeContent: false
        }))
        .pipe(gulp.dest('src/main/webapp/js'));
});

gulp.task('watch', function () {
    gulp.watch('src/sass/**/*.scss', ['css']);
    gulp.watch('src/img/**/*.{png, jpg, bmp}', ['img']);
    gulp.watch('src/js/**/*.js', ['js']);
});

gulp.task('default', ['css', 'img','js'], function () {
    var injectFiles = gulp.src('css/*.min.css');

    var injectOptions = {
        addRootSlash: false
    };

    return gulp.src('index.html')
            .pipe(plugins.inject(injectFiles, injectOptions))
            .pipe(gulp.dest('.'));
});
