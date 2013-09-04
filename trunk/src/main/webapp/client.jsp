<%-- 
    Document   : client
    Created on : Sep 24, 2012, 12:44:41 AM
    Author     : Michael Thomas <michael4.thomas@live.uwe.ac.uk>
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="header.jsp"/>

<div class="container-fluid">
    <div class="span10 offset1">
        <div class="row-fluid">
            <div class="well">
                <br class="hidden-phone"/>
                <h2><s:property value="pageTitle" default="Results"/></h2>
            </div>
        </div>

        <div class="row-fluid">
            <div class="btn-toolbar">
                <div class="btn-group hidden-phone">
                    <a href="<s:url value="/configure.jsp"/>" role="button" class="btn btn-large btn-primary" data-toggle="modal" data-target="#configureModal">
                        <i class="icon-cog icon-white"></i> Configure
                    </a>
                    <a href="<s:url value="/preferences.jsp"/>" role="button" class="btn btn-large btn-primary" data-toggle="modal" data-target="#preferencesModal">
                        <i class="icon-wrench icon-white"></i> Preferences
                    </a>
                </div>
                <div class="btn-group">
                    <s:url action="client" var="fold">
                        <s:param name="control">fold</s:param>
                    </s:url>
                    <a href="${fold}" class="btn btn-large btn-primary">
                        <i class="icon-play icon-white"></i> Fold
                    </a>
                    <s:url action="client" var="pause">
                        <s:param name="control">pause</s:param>
                    </s:url>
                    <a href="${pause}" class="btn btn-large btn-primary">
                        <i class="icon-pause icon-white"></i> Pause
                    </a>
                    <s:url action="client" var="finish">
                        <s:param name="control">finish</s:param>
                    </s:url>
                    <a href="${finish}" class="btn btn-large btn-primary">
                        <i class="icon-step-forward icon-white"></i> Finish
                    </a>
                </div>
                <div class="btn-group pull-right hidden-phone">
                    <a href="<s:url value="/about.jsp"/>" role="button" class="btn btn-large btn-primary" data-toggle="modal" data-target="#aboutModal">
                        <i class="icon-star-empty icon-white"></i> About
                    </a>
                </div>
                <div class="btn-group pull-right hidden-phone">
                    <a class="btn btn-large btn-primary">
                        <i class="icon-list icon-white"></i> Novice
                    </a>
                    <a class="btn btn-large btn-primary dropdown-toggle" data-toggle="dropdown">
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Novice</a></li>
                        <li><a href="#">Advanced</a></li>
                        <li><a href="#">Expert</a></li>
                    </ul>
                </div>
            </div>

            <!-- Modal -->
            <div id="configureModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="configureModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="configureModalLabel">Configure</h3>
                </div>
                <div class="modal-body">
                    <div class="progress progress-striped active">
                        <div class="bar" style="width: 100%;">
                            Loading…
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <s:url namespace="client" action="client" var="configure">
                        <s:param name="control">configure</s:param>
                    </s:url>
                    <a href="#" class="btn" data-dismiss="modal" aria-hidden="true">Close</a>
                    <a href="${configure}" class="btn btn-primary">Save changes</a>
                </div>
            </div>
            <div id="preferencesModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="preferencesModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="preferencesModalLabel">Preferences</h3>
                </div>
                <div class="modal-body">
                    <div class="progress progress-striped active">
                        <div class="bar" style="width: 100%;">
                            Loading…
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <s:url namespace="client" action="client" var="preferences">
                        <s:param name="control">preferences</s:param>
                    </s:url>
                    <a href="#" class="btn" data-dismiss="modal" aria-hidden="true">Close</a>
                    <a href="${preferences}" class="btn btn-primary">Save changes</a>
                </div>
            </div>
            <div id="aboutModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="aboutModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="aboutModalLabel">About</h3>
                </div>
                <div class="modal-body">
                    <div class="progress progress-striped active">
                        <div class="bar" style="width: 100%;">
                            Loading…
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">
                        <i class="icon-remove icon-white"></i> Close
                    </a>
                </div>
            </div>
        </div>

        <div class="row-fluid">
            <fieldset>
                <legend>localhost <span class="text-success">Online</span> <s:property value="status" default="Status"/></legend>

                <div class="row-fluid">
                    <div class="span6">
                        <div class="well">
                            <fieldset>
                                <legend>Identity</legend>
                                <p><strong>Name: </strong> <a href="#">montycrabapple</a> <strong>Team: </strong> <a href="#">39299</a></p>
                            </fieldset>
                        </div>
                    </div>

                    <div class="span6">
                        <div class="well">
                            <fieldset>
                                <legend>Stats</legend>
                                <p><strong>PPD: </strong><s:property value="ppd" default="PPD"/></p>
                            </fieldset>
                        </div>
                    </div>
                </div>

                <div class="row-fluid">
                    <div>
                        <fieldset>
                            <legend>Work Queue</legend>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Status</th>
                                        <th>Progress</th>
                                        <th>ETA</th>
                                        <th>Credit</th>
                                        <th class="hidden-phone">PRCG</th>
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
                                                <div class="bar" style="width: <s:property value="progress" default="Progress"/>;">
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
                                        <td class="hidden-phone">
                                            <s:property value="prcg" default="PRCG"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </fieldset>
                    </div>
                </div>

                <div class="row-fluid">
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
