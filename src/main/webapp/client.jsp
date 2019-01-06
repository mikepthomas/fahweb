<%--
  #%L
  FAHWeb
  %%
  Copyright (C) 2012 - 2017 Michael Thomas <mikepthomas@outlook.com>
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
    Document   : client
    Created on : Sep 24, 2012, 12:44:41 AM
    Author     : Michael Thomas (mikepthomas@outlook.com)
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="col-md-10 col-md-offset-1">
        <div class="row">
            <div class="well well-lg">
                <br/>
                <h2><s:property value="pageTitle" default="Results"/></h2>
            </div>
        </div>

        <div class="row">
            <div class="btn-toolbar">
                <div class="btn-group hidden-sm">
                    <a href="<s:url value="/configure.jsp"/>" role="button" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#configureModal">
                        <span class="glyphicon glyphicon-cog"></span> Configure
                    </a>
                    <a href="<s:url value="/preferences.jsp"/>" role="button" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#preferencesModal">
                        <span class="glyphicon glyphicon-dashboard"></span> Preferences
                    </a>
                </div>
                <div class="btn-group">
                    <s:url action="client" var="fold">
                        <s:param name="control">fold</s:param>
                    </s:url>
                    <a href="${fold}" class="btn btn-lg btn-primary">
                        <span class="glyphicon glyphicon-play"></span> Fold
                    </a>
                    <s:url action="client" var="pause">
                        <s:param name="control">pause</s:param>
                    </s:url>
                    <a href="${pause}" class="btn btn-lg btn-primary">
                        <span class="glyphicon glyphicon-pause"></span> Pause
                    </a>
                    <s:url action="client" var="finish">
                        <s:param name="control">finish</s:param>
                    </s:url>
                    <a href="${finish}" class="btn btn-lg btn-primary">
                        <span class="glyphicon glyphicon-step-forward"></span> Finish
                    </a>
                </div>
                <div class="btn-group pull-right hidden-sm">
                    <a href="<s:url value="/about.jsp"/>" role="button" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#aboutModal">
                        <span class="glyphicon glyphicon-star-empty"></span> About
                    </a>
                </div>
            </div>

            <!-- Modal -->
            <div id="configureModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="configureModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 id="configureModalLabel">Configure</h4>
                        </div>
                        <div class="modal-body">
                            <div class="progress progress-striped active">
                                <div class="progress-bar" style="width: 100%;">
                                    Loading…
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="preferencesModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="preferencesModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 id="preferencesModalLabel">Preferences</h4>
                        </div>
                        <div class="modal-body">
                            <div class="progress progress-striped active">
                                <div class="progress-bar" style="width: 100%;">
                                    Loading…
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="aboutModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="aboutModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 id="aboutModalLabel">About</h4>
                        </div>
                        <div class="modal-body">
                            <div class="progress progress-striped active">
                                <div class="progress-bar" style="width: 100%;">
                                    Loading…
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <fieldset>
                <legend>localhost <span class="text-success">Online</span> <s:property value="status" default="Status"/></legend>

                <div class="row">
                    <div class="col-md-6">
                        <div class="well">
                            <fieldset>
                                <legend>Identity</legend>
                                <p><strong>Name: </strong> <a href="#">montycrabapple</a> <strong>Team: </strong> <a href="#">39299</a></p>
                            </fieldset>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="well">
                            <fieldset>
                                <legend>Stats</legend>
                                <p><strong>PPD: </strong><s:property value="ppd" default="PPD"/></p>
                            </fieldset>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div>
                        <fieldset>
                            <legend>Work Queue</legend>
                            <table class="table table-condensed table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Status</th>
                                        <th>Progress</th>
                                        <th>ETA</th>
                                        <th>Credit</th>
                                        <th class="hidden-sm">PRCG</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>
                                            <s:property value="id" default="ID"/>
                                        </th>
                                        <td>
                                            <s:property value="status" default="Status"/>
                                        </td>
                                        <td>
                                            <div class="progress progress-striped active">
                                                <div class="progress-bar" style="width: <s:property value="progress" default="Progress"/>;">
                                                    <s:property value="progress" default="Progress"/>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <s:property value="eta" default="ETA"/>
                                        </td>
                                        <td>
                                            <s:property value="credit" default="Credit"/>
                                        </td>
                                        <td class="hidden-sm">
                                            <s:property value="prcg" default="PRCG"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </fieldset>
                    </div>
                </div>

                <div class="row">
                    <div>
                        <div class="well">
                            <fieldset>
                                <legend>About Project: <s:property value="prcg" default="PRCG"/></legend>
                                <p><s:property value="description" default="Description" escapeHtml="false"/></p>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
