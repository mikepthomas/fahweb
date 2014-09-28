package com.googlecode.fahweb.model;

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

/**
 * <p>User class.</p>
 *
 * @author Michael Thomas (mikepthomas@outlook.com)
 * @version $Id: $Id
 */
public class User {

    private int uniqueId;
    private String name;
    private long newCredit;
    private int sum;
    private int team;

    /**
     * <p>Constructor for User.</p>
     */
    public User() {}

    /**
     * <p>Constructor for User.</p>
     *
     * @param name a {@link java.lang.String} object.
     * @param newCredit a long.
     * @param sum a int.
     * @param team a int.
     */
    public User(String name, long newCredit, int sum, int team) {
        this.name = name;
        this.newCredit = newCredit;
        this.sum = sum;
        this.team = team;
    }

    /**
     * Get the value of uniqueId
     *
     * @return the value of uniqueId
     */
    public int getUniqueId() {
        return uniqueId;
    }

    /**
     * Set the value of uniqueId
     *
     * @param uniqueId new value of uniqueId
     */
    public void setUniqueId(int uniqueId) {
        this.uniqueId = uniqueId;
    }

    /**
     * Get the value of name
     *
     * @return the value of name
     */
    public String getName() {
        return name;
    }

    /**
     * Set the value of name
     *
     * @param name new value of name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Get the value of newCredit
     *
     * @return the value of newCredit
     */
    public long getNewCredit() {
        return newCredit;
    }

    /**
     * Set the value of newCredit
     *
     * @param newCredit new value of newCredit
     */
    public void setNewCredit(long newCredit) {
        this.newCredit = newCredit;
    }

    /**
     * Get the value of sum
     *
     * @return the value of sum
     */
    public int getSum() {
        return sum;
    }

    /**
     * Set the value of sum
     *
     * @param sum new value of sum
     */
    public void setSum(int sum) {
        this.sum = sum;
    }

    /**
     * Get the value of team
     *
     * @return the value of team
     */
    public int getTeam() {
        return team;
    }

    /**
     * Set the value of team
     *
     * @param team new value of team
     */
    public void setTeam(int team) {
        this.team = team;
    }
}
