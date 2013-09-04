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
package com.googlecode.fahweb.dao;

import com.googlecode.fahweb.model.User;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Michael Thomas <michael4.thomas@live.uwe.ac.uk>
 */
@Repository
public class UserDao {

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Transactional
    public void addUser(User user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Transactional
    public List<User> listUser(int firstResult, int maxResults) {
        Query query = sessionFactory.getCurrentSession().createQuery("FROM User ORDER BY newCredit DESC");
        query.setFirstResult(firstResult);
        query.setMaxResults(maxResults);
        return query.list();
    }

    @Transactional
    public List<User> listUserForTeam(int team, int firstResult, int maxResults) {
        Query query = sessionFactory.getCurrentSession().createQuery("FROM User WHERE team=:team ORDER BY newCredit DESC");
        query.setFirstResult(firstResult);
        query.setMaxResults(maxResults);
        query.setInteger("team", team);
        return query.list();
    }
}
