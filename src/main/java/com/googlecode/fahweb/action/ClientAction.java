package com.googlecode.fahweb.action;

/*
 * #%L
 * FAHWeb
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

import com.googlecode.jfold.ClientConnection;
import com.googlecode.jfold.Connection;
import com.googlecode.jfold.unit.Unit;
import com.opensymphony.xwork2.ActionSupport;

/**
 * <p>ClientAction class.</p>
 *
 * @author Michael Thomas (mikepthomas@outlook.com)
 * @version $Id: $Id
 */
public class ClientAction extends ActionSupport {

    private Unit unit;
    private String control;

    /** {@inheritDoc} */
    @Override
    public String execute() throws Exception {
        Connection connection = new ClientConnection();
        this.unit = connection.queueInfo().get(0);
        System.out.println(control);
        return SUCCESS;
    }

    /**
     * <p>getPageTitle.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getPageTitle() {
        return "Folding@home Client Control";
    }

    /**
     * <p>getPpd.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getPpd() {
        return String.valueOf(unit.getPpd());
    }

    /**
     * <p>getId.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getId() {
        return unit.getId();
    }

    /**
     * <p>getStatus.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getStatus() {
        String status = unit.getState().toLowerCase();
        return status.substring(0, 1).toUpperCase() + status.substring(1, status.length());
    }

    /**
     * <p>getProgress.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getProgress() {
        return unit.getPercentDone();
    }

    /**
     * <p>getEta.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getEta() {
        return unit.getEta();
    }

    /**
     * <p>getCredit.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getCredit() {
        return String.valueOf(unit.getCreditEstimate());
    }

    /**
     * <p>getPrcg.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getPrcg() {
        return unit.getProject() + " (" + unit.getRun() + ", " + unit.getClone() + ", " + unit.getGen() + ")";
    }

    /**
     * <p>getDescription.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getDescription() {
        return unit.getDescription().replace("\n", "<br/>");
    }

    /**
     * <p>Getter for the field <code>control</code>.</p>
     *
     * @return a {@link java.lang.String} object.
     */
    public String getControl() {
        return control;
    }

    /**
     * <p>Setter for the field <code>control</code>.</p>
     *
     * @param control a {@link java.lang.String} object.
     */
    public void setControl(String control) {
        this.control = control;
    }
}
