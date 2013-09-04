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
import com.googlecode.fahweb.model.User;
import com.googlecode.fahweb.service.TeamService;
import com.googlecode.fahweb.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

/**
 *
 * @author Michael Thomas <michael4.thomas@live.uwe.ac.uk>
 */
public class UpdateAction extends ActionSupport {

    public static final String LINE_DELIMITER = "\t";
    private TeamService teamService;
    private UserService userService;

    public UpdateAction(TeamService teamService, UserService userService) {
        this.teamService = teamService;
        this.userService = userService;
    }

    @Override
    public String execute() throws Exception {
        //updateTeams();
        updateUsers();
        return SUCCESS;
    }

    public String updateTeams() throws Exception {
        InputStream in = this.getClass().getResourceAsStream("/daily_team_summary.txt");
        InputStreamReader read = new InputStreamReader(in);
        BufferedReader buf = new BufferedReader(read);

        LOG.info(buf.readLine()); // Time
        LOG.info(buf.readLine()); // Headings

        while (buf.ready()) {
            String line = buf.readLine();

            if (line.split(LINE_DELIMITER).length != 4) {
                line += (buf.readLine().replace("\\n", ""));
            }

            teamService.addTeam(createTeamFromLine(line));
        }
        return SUCCESS;
    }

    public String updateUsers() throws Exception {
        InputStream in = this.getClass().getResourceAsStream("/daily_user_summary.txt");
        InputStreamReader read = new InputStreamReader(in);
        BufferedReader buf = new BufferedReader(read);

        LOG.info(buf.readLine()); // Time
        LOG.info(buf.readLine()); // Headings

        while (buf.ready()) {
            String line = buf.readLine();

            if (line.split(LINE_DELIMITER).length != 4) {
                LOG.error(line);
                continue;
            }

            userService.addUser(createUserFromLine(line));
        }
        return SUCCESS;
    }

    private Team createTeamFromLine(String line) {
        String[] array = line.split(LINE_DELIMITER);

        int team = Integer.parseInt(array[0]);
        String teamname = array[1];
        long score = Long.parseLong(array[2]);
        int wu = Integer.parseInt(array[3]);

        return new Team(team, teamname, score, wu);
    }

    private User createUserFromLine(String line) {
        String[] array = line.split(LINE_DELIMITER);

        String name = array[0];
        long newcredit = Long.parseLong(array[1]);
        int sum = Integer.parseInt(array[2]);
        int team = Integer.parseInt(array[3]);

        return new User(name, newcredit, sum, team);
    }
}
