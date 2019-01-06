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
    Document   : results
    Created on : Sep 22, 2012, 9:50:16 PM
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
            <ul class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">Features</a></li>
                <li><a href="#">Gene Splicing</a></li>
                <li class="active">Home</li>
            </ul>
        </div>

        <div class="row">

            <!-- Nav Sidebar -->
            <div class="col-md-3">
                <div class="well sidebar-nav">
                    <img class="img-polaroid" alt="" src="http://placehold.it/175x125&text=[img]"/>

                    <ul class="nav nav-list">
                        <li class="nav-header">Statistics</li>
                        <li class="active"><a href="#">User Statistics</a></li>
                        <li><a href="#">Team Statistics</a></li>
                        <li class="nav-header">Other Statistics</li>
                        <li><a href="http://folding.stanford.edu/English/Stats/">Folding@home</a></li>
                        <li><a href="http://folding.extremeoverclocking.com/">Extreme Overclocking</a></li>
                        <li><a href="http://kakaostats.com/">Kakao Stats</a></li>
                        <li><a href="http://hardfolding.com/fh_stats/">Hard Folding</a></li>
                    </ul>

                </div>
            </div>

            <!-- Main Feed -->
            <div class="col-md-9">

                <!-- Results Table -->
                <table class="table table-bordered table-condensed table-hover table-striped">
                    <thead>
                        <tr>
                            <th><s:text name="Column1"/></th>
                            <th><s:text name="Column2"/></th>
                            <th><s:text name="Column3"/></th>
                            <th><s:text name="Column4"/></th>
                            <th><s:text name="Column5"/></th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator status="team" value="teamList">
                            <tr>
                                <th><s:property value="%{#team.index + 1 + ((page - 1) * 100)}"/></th>
                                <td><s:property value="team"/></td>
                                <td><s:property value="teamName"/></td>
                                <td><s:property value="score"/></td>
                                <td><s:property value="wu"/></td>
                            </tr>
                        </s:iterator>
                        <s:iterator status="user" value="userList">
                            <tr>
                                <th><s:property value="%{#user.index + 1 + ((page - 1) * 100)}"/></th>
                                <td><s:property value="name"/></td>
                                <td><s:property value="newCredit"/></td>
                                <td><s:property value="sum"/></td>
                                <td><s:property value="team"/></td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>

                <!-- End Results Table -->
                <ul class="pagination">
                    <li<s:if test="page <= 1"> class="disabled"</s:if>>
                        <s:a>
                            <s:param name="page" value="page - 1"/>
                            &laquo;
                        </s:a>
                    </li>
                    <s:iterator begin="1" end="10" status="pageNumber">
                        <li<s:if test="page == #pageNumber.index + 1"> class="active"</s:if>>
                            <s:a>
                                <s:param name="page" value="#pageNumber.index + 1"/>
                                <s:property value="#pageNumber.index + 1"/>
                            </s:a>
                        </li>
                    </s:iterator>
                    <li>
                        <s:a>
                            <s:param name="page" value="page + 1"/>
                            &raquo;
                        </s:a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
