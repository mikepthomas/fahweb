package info.mikethomas.fahweb.action;

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

import info.mikethomas.fahweb.model.Team;
import info.mikethomas.fahweb.model.User;
import info.mikethomas.fahweb.service.TeamService;
import info.mikethomas.fahweb.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

/**
 * <p>UpdateAction class.</p>
 *
 * @author Michael Thomas (mikepthomas@outlook.com)
 * @version $Id: $Id
 */
public class UpdateAction extends ActionSupport {

    /** Constant <code>LINE_DELIMITER="\t"</code> */
    public static final String LINE_DELIMITER = "\t";
    private final TeamService teamService;
    private final UserService userService;

    /**
     * <p>Constructor for UpdateAction.</p>
     *
     * @param teamService a {@link info.mikethomas.fahweb.service.TeamService} object.
     * @param userService a {@link info.mikethomas.fahweb.service.UserService} object.
     */
    public UpdateAction(TeamService teamService, UserService userService) {
        this.teamService = teamService;
        this.userService = userService;
    }

    /** {@inheritDoc} */
    @Override
    public String execute() throws Exception {
        updateTeams();
        //updateUsers();
        return SUCCESS;
    }

    /**
     * <p>updateTeams.</p>
     *
     * @return a {@link java.lang.String} object.
     * @throws java.lang.Exception if any.
     */
    public String updateTeams() throws Exception {
        InputStream in = this.getClass().getResourceAsStream("/daily_team_summary.txt");
        InputStreamReader read = new InputStreamReader(in);
        BufferedReader buf = new BufferedReader(read);

        LOG.info(buf.readLine()); // Time
        LOG.info(buf.readLine()); // Headings

        while (buf.ready()) {
            String line = buf.readLine();

            if (line.split(LINE_DELIMITER).length != 4) {
                line += buf.readLine().replace("\\n", "");
            }

            teamService.addTeam(createTeamFromLine(line));
        }
        return SUCCESS;
    }

    /**
     * <p>updateUsers.</p>
     *
     * @return a {@link java.lang.String} object.
     * @throws java.lang.Exception if any.
     */
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
        long sum = Long.parseLong(array[2]);
        int team = Integer.parseInt(array[3]);

        return new User(name, newcredit, sum, team);
    }
}
