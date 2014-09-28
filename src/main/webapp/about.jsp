<%--
  #%L
  FAHWeb
  %%
  Copyright (C) 2012 - 2014 Michael Thomas <mikepthomas@outlook.com>
  %%
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as
  published by the Free Software Foundation, either version 3 of the 
  License, or (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public 
  License along with this program.  If not, see
  <http://www.gnu.org/licenses/gpl-3.0.html>.
  #L%
  --%>
<%-- 
    Document   : about
    Created on : Nov 18, 2012, 12:41:44 PM
    Author     : Michael Thomas (mikepthomas@outlook.com)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 id="aboutModalLabel">About</h4>
        </div>
        <div class="modal-body">
            <h2 class="center"><s:property value="pageTitle" default="Folding@home Client Control"/></h2>
            <h4 class="center">Version: <s:property value="clientVersion"/></h4>
            <p>This web site allows you to monitor and control one or more Folding@home version 7 or newer console clients</p>
            <p><s:text name="Copyright"/></p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </div>
</div>
</div>
