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
package com.googlecode.fahweb.service;

import com.googlecode.fahweb.dao.TeamDao;
import com.googlecode.fahweb.model.Team;
import java.util.List;

/**
 *
 * @author Michael Thomas <michael4.thomas@live.uwe.ac.uk>
 */
public class TeamService {

    TeamDao teamDao;
    
    public void setTeamDao(TeamDao teamDao) {
        this.teamDao = teamDao;
    }

    public void addTeam(Team team) {
        teamDao.addTeam(team);
    }

    public List<Team> listTeam(int firstResult, int maxResults) {
        return teamDao.listTeam(firstResult, maxResults);
    }
}
