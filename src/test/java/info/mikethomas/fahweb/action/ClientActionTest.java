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

import com.opensymphony.xwork2.ActionProxy;
import com.opensymphony.xwork2.ActionSupport;
import java.util.HashMap;
import java.util.Map;
import org.apache.struts2.StrutsSpringTestCase;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author Michael Thomas (mikepthomas@outlook.com)
 */
public class ClientActionTest extends StrutsSpringTestCase {

    public ClientActionTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    /**
     * Test of execute method, of class ClientAction.
     * @throws java.lang.Exception if any
     */
    @Test
    public void testExecute() throws Exception {
        request.setParameter("control", "settings");
        ActionProxy actionProxy = getActionProxy("/client/client.action");
        Map<String, Object> sessionMap = new HashMap<>();
        actionProxy.getInvocation().getInvocationContext().setSession(sessionMap);
        ClientAction action = (ClientAction) actionProxy.getAction();
        assertNotNull("The action is null but should not be.", action);
        String result = actionProxy.execute();
        assertEquals("The execute method did not return " + ActionSupport.SUCCESS + " but should have.", ActionSupport.SUCCESS, result);
    }
}
