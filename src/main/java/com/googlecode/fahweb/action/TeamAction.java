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

import com.googlecode.fahweb.model.Team;
import com.googlecode.fahweb.service.TeamService;
import java.util.List;

/**
 *
 * @author Michael Thomas <michael4.thomas@live.uwe.ac.uk>
 */
public class TeamAction extends StatsActionBase {

    private TeamService teamService;
    private List<Team> teamList;

    public TeamAction(TeamService teamService) {
        this.teamService = teamService;
    }

    @Override
    public String execute() throws Exception {
        setPageTitle("Team Statistics");
        int firstResult = (getPage() - 1) * RESULTS_PER_PAGE;
        teamList = teamService.listTeam(firstResult, RESULTS_PER_PAGE);
        if (teamList.isEmpty()) {
            addActionError("No Results Found");
        }

        return SUCCESS;
    }

    public List<Team> getTeamList() {
        return teamList;
    }
}
