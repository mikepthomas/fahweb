package com.googlecode.fahweb.dao;

/*
 * #%L
 * This file is part of FAHWeb.
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

import com.googlecode.fahweb.model.Team;
import java.util.List;
import org.junit.AfterClass;
import static org.junit.Assert.*;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Michael Thomas (mikepthomas@outlook.com)
 */
@ContextConfiguration({ "classpath:applicationContext.xml" })
@TransactionConfiguration(defaultRollback = true)
@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
public class TeamDaoTest extends AbstractTransactionalJUnit4SpringContextTests {

    @Autowired
    private TeamDao teamDao;

    public TeamDaoTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    /**
     * Test of addTeam method, of class TeamDao.
     */
    @Ignore @Test
    public void testAddTeam() {
        System.out.println("addTeam");
        Team team = null;
        TeamDao instance = new TeamDao();
        instance.addTeam(team);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of listTeam method, of class TeamDao.
     */
    @Ignore @Test
    public void testListTeam() {
        System.out.println("listTeam");
        int firstResult = 0;
        int maxResults = 100;
        TeamDao instance = teamDao;
        List result = instance.listTeam(firstResult, maxResults);
        assertNotNull(result);
        assertFalse(result.isEmpty());
    }
}
