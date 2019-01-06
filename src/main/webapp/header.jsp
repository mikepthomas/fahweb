<%--
  #%L
  FAHWeb
  %%
  Copyright (C) 2012 - 2017 Michael Thomas <mikepthomas@outlook.com>
  %%
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as
  published by the Free Software Foundation, either version 3 of the 
  License, or (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public 
  License along with this program.  If not, see
  <http://www.gnu.org/licenses/gpl-3.0.html>.
  #L%
  --%>
<%--
    Document   : header
    Created on : Sep 23, 2012, 10:58:12 AM
    Author     : Michael Thomas (mikepthomas@outlook.com)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <s:head/>
        <meta charset="utf-8"/>

        <!-- Set the viewport width to device width for mobile -->
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <meta content="" name="description">
        <meta content="" name="author">

        <title>
            FAHWeb - <s:property value="pageTitle" default="Welcome To FAHWeb"/>
        </title>

        <!--
        <link href="<s:url value="/img/favicon.ico"/>" rel="shortcut icon">
        -->

        <!-- Included CSS Files (Compressed) -->
        <link rel="stylesheet" href="<s:url value="/css/bootstrap.min.css"/>"/>
        <link rel="stylesheet" href="<s:url value="/css/bootstrap-theme.min.css"/>"/>

        <!-- Included CSS Files (Uncompressed) -->
        <!--
        <link rel="stylesheet" href="<s:url value="/css/bootstrap.css"/>">
        <link rel="stylesheet" href="<s:url value="/css/bootstrap-theme.css"/>">
        -->
        <link rel="stylesheet" href="<s:url value="/css/app.css"/>"/>

        <!-- IE Fix for HTML5 Tags -->
        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>
    <body>

        <!-- Header and Nav -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<s:url value="/index.jsp"/>"><s:text name="Home"/></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">

                        <li><a href="#"><s:text name="Learn"/></a></li>

                        <li class="dropdown" id="stats">
                            <a class="dropdown-toggle" data-toggle="dropdown">
                                <s:text name="Stats"/>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="<s:url namespace="/stats" action="listTeams"/>">Team Stats</a></li>
                                <li><a href="<s:url namespace="/stats" action="listUsers"/>">User Stats</a></li>
                            </ul>
                        </li>
                        <li><a href="#"><s:text name="About"/></a></li>
                        <li><a href="<s:url namespace="/client" action="client"/>">Client</a></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-default">Submit</button>
                            </span>
                        </div>
                    </form>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End Header and Nav -->
