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

import com.googlecode.fahweb.model.User;
import com.googlecode.fahweb.service.UserService;
import java.util.List;

/**
 * <p>UserAction class.</p>
 *
 * @author Michael Thomas (mikepthomas@outlook.com)
 * @version $Id: $Id
 */
public class UserAction extends StatsActionBase {

    private UserService userService;
    private List<User> userList;

    /**
     * <p>Constructor for UserAction.</p>
     *
     * @param userService a {@link com.googlecode.fahweb.service.UserService} object.
     */
    public UserAction(UserService userService) {
        this.userService = userService;
    }

    /** {@inheritDoc} */
    @Override
    public String execute() throws Exception {
        setPageTitle("User Statistics");
        int firstResult = (getPage() - 1) * RESULTS_PER_PAGE;
        userList = userService.listUser(firstResult, RESULTS_PER_PAGE);
        if (userList.isEmpty()) {
            addActionError("No Results Found");
        }

        return SUCCESS;
    }

    /**
     * <p>Getter for the field <code>userList</code>.</p>
     *
     * @return a {@link java.util.List} object.
     */
    public List<User> getUserList() {
        return userList;
    }
}
