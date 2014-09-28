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

import java.io.Serializable;

/**
 * <p>Team class.</p>
 *
 * @author Michael Thomas (mikepthomas@outlook.com)
 * @version $Id: $Id
 */
public class Team implements Serializable {

    private int uniqueId;
    private int team;
    private String teamName;
    private long score;
    private int wu;

    /**
     * <p>Constructor for Team.</p>
     */
    public Team() {}

    /**
     * <p>Constructor for Team.</p>
     *
     * @param team a int.
     * @param teamName a {@link java.lang.String} object.
     * @param teamName a {@link java.lang.String} object.
     * @param score a long.
     * @param wu a int.
     */
    public Team(int team, String teamName, long score, int wu) {
        this.team = team;
        this.teamName = teamName;
        this.score = score;
        this.wu = wu;
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
     * Get the value of Team
     *
     * @return the value of Team
     */
    public int getTeam() {
        return team;
    }

    /**
     * Set the value of Team
     *
     * @param team new value of Team
     */
    public void setTeam(int team) {
        this.team = team;
    }

    /**
     * Get the value of teamName
     *
     * @return the value of teamName
     */
    public String getTeamName() {
        return teamName;
    }

    /**
     * Set the value of teamName
     *
     * @param teamName new value of teamName
     */
    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    /**
     * Get the value of score
     *
     * @return the value of score
     */
    public long getScore() {
        return score;
    }

    /**
     * Set the value of score
     *
     * @param score new value of score
     */
    public void setScore(long score) {
        this.score = score;
    }

    /**
     * Get the value of wu
     *
     * @return the value of wu
     */
    public int getWu() {
        return wu;
    }

    /**
     * Set the value of wu
     *
     * @param wu new value of wu
     */
    public void setWu(int wu) {
        this.wu = wu;
    }
}
