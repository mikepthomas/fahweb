<%--
    Document   : results
    Created on : Sep 22, 2012, 9:50:16 PM
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
            <ul class="breadcrumb">
                <li><a href="#">Home</a><span class="divider">/</span></li>
                <li><a href="#">Features</a><span class="divider">/</span></li>
                <li><a href="#">Gene Splicing</a><span class="divider">/</span></li>
                <li class="active">Home</li>
            </ul>
        </div>

        <div class="row-fluid">

            <!-- Nav Sidebar -->
            <div class="span3">
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
            <div class="span9">

                <!-- Results Table -->
                <table class="table table-bordered table-condensed table-hover">
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
                <div class="pagination pagination-centered">
                    <ul>

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
</div>

<jsp:include page="footer.jsp"/>
