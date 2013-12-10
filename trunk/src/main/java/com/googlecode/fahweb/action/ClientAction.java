/*
 * Copyright (C) 2012 Michael Thomas <michael4.thomas@live.uwe.ac.uk>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.googlecode.fahweb.action;

import com.googlecode.jfold.examples.ExampleUnit;
import com.googlecode.jfold.unit.Unit;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Michael Thomas <michael4.thomas@live.uwe.ac.uk>
 */
public class ClientAction extends ActionSupport {

    private Unit unit;
    private String control;

    @Override
    public String execute() throws Exception {
        this.unit = new ExampleUnit();
        System.out.println(control);
        return SUCCESS;
    }

    public String getPageTitle() {
        return "Folding@home Client Control";
    }

    public String getPpd() {
        return String.valueOf(unit.getPpd());
    }

    public String getId() {
        return unit.getId();
    }

    public String getStatus() {
        String status = unit.getState().toLowerCase();
        return status.substring(0, 1).toUpperCase() + status.substring(1, status.length());
    }

    public String getProgress() {
        return unit.getPercentDone();
    }

    public String getEta() {
        return unit.getEta();
    }

    public String getCredit() {
        return String.valueOf(unit.getCreditEstimate());
    }

    public String getPrcg() {
        return unit.getProject() + " (" + unit.getRun() + ", " + unit.getClone() + ", " + unit.getGen() + ")";
    }

    public String getDescription() {
        return unit.getDescription().replace("\n", "<br/>");
    }

    public String getControl() {
        return control;
    }

    public void setControl(String control) {
        this.control = control;
    }
}
