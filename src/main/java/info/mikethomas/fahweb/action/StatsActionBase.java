package info.mikethomas.fahweb.action;

/*
 * #%L
 * This file is part of FAHWeb.
 * %%
 * Copyright (C) 2012 - 2014 Michael Thomas <mikepthomas@outlook.com>
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

import com.opensymphony.xwork2.ActionSupport;

/**
 * <p>Abstract StatsActionBase class.</p>
 *
 * @author Michael Thomas (mikepthomas@outlook.com)
 * @version $Id: $Id
 */
public abstract class StatsActionBase extends ActionSupport {

    /** Constant <code>RESULTS_PER_PAGE=100</code> */
    public static final int RESULTS_PER_PAGE = 100;

    private String pageTitle;
    private int page = 1;

    /**
     * <p>Getter for the field <code>pageTitle</code>.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getPageTitle() {
        return pageTitle;
    }

    /**
     * <p>Setter for the field <code>pageTitle</code>.</p>
     *
     * @param pageTitle a {@link java.lang.String} object.
     */
    protected void setPageTitle(String pageTitle) {
        this.pageTitle = pageTitle;
    }

    /**
     * <p>Getter for the field <code>page</code>.</p>
     *
     * @return a int.
     */
    public int getPage() {
        return page;
    }

    /**
     * <p>Setter for the field <code>page</code>.</p>
     *
     * @param page a int.
     */
    public void setPage(int page) {
        this.page = page;
    }
}
