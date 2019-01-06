package info.mikethomas.fahweb.dao;

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

import info.mikethomas.fahweb.model.User;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * <p>UserDao class.</p>
 *
 * @author Michael Thomas (mikepthomas@outlook.com)
 * @version $Id: $Id
 */
@Repository
public class UserDao {

    private SessionFactory sessionFactory;

    /**
     * <p>Setter for the field <code>sessionFactory</code>.</p>
     *
     * @param sessionFactory a {@link org.hibernate.SessionFactory} object.
     */
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    /**
     * <p>addUser.</p>
     *
     * @param user a {@link info.mikethomas.fahweb.model.User} object.
     */
    @Transactional
    public void addUser(User user) {
        sessionFactory.getCurrentSession().save(user);
    }

    /**
     * <p>listUser.</p>
     *
     * @param firstResult a int.
     * @param maxResults a int.
     * @return a {@link java.util.List} object.
     */
    @Transactional
    public List<User> listUser(int firstResult, int maxResults) {
        Query query = sessionFactory.getCurrentSession().createQuery("FROM User ORDER BY newCredit DESC");
        query.setFirstResult(firstResult);
        query.setMaxResults(maxResults);
        return query.list();
    }

    /**
     * <p>listUserForTeam.</p>
     *
     * @param team a int.
     * @param firstResult a int.
     * @param maxResults a int.
     * @return a {@link java.util.List} object.
     */
    @Transactional
    public List<User> listUserForTeam(int team, int firstResult, int maxResults) {
        Query query = sessionFactory.getCurrentSession().createQuery("FROM User WHERE team=:team ORDER BY newCredit DESC");
        query.setFirstResult(firstResult);
        query.setMaxResults(maxResults);
        query.setInteger("team", team);
        return query.list();
    }
}
