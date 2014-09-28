package com.googlecode.fahweb.service;

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

import com.googlecode.fahweb.dao.UserDao;
import com.googlecode.fahweb.model.User;
import java.util.List;

/**
 * <p>UserService class.</p>
 *
 * @author Michael Thomas (mikepthomas@outlook.com)
 * @version $Id: $Id
 */
public class UserService {

    UserDao userDao;
    
    /**
     * <p>Setter for the field <code>userDao</code>.</p>
     *
     * @param userDao a {@link com.googlecode.fahweb.dao.UserDao} object.
     */
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    /**
     * <p>addUser.</p>
     *
     * @param user a {@link com.googlecode.fahweb.model.User} object.
     */
    public void addUser(User user) {
        userDao.addUser(user);
    }

    /**
     * <p>listUser.</p>
     *
     * @param firstResult a int.
     * @param maxResults a int.
     * @return a {@link java.util.List} object.
     */
    public List<User> listUser(int firstResult, int maxResults) {
        return userDao.listUserForTeam(39299, firstResult, maxResults);
    }
}
