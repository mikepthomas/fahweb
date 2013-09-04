<%--
    Document   : header
    Created on : Sep 23, 2012, 10:58:12 AM
    Author     : Michael Thomas <michael4.thomas@live.uwe.ac.uk>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <s:head/>
        <meta charset="utf-8"/>

        <!-- Set the viewport width to device width for mobile -->
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <meta content="" name="description">
        <meta content="" name="author">

        <title>
            FAHWeb - <s:property value="pageTitle" default="Welcome To FAHWeb"/>
        </title>

        <!--
        <link href="<s:url value="/img/favicon.ico"/>" rel="shortcut icon">
        -->

        <!-- Included CSS Files (Compressed) -->
        <link rel="stylesheet" href="<s:url value="/css/bootstrap.min.css"/>"/>
        <link rel="stylesheet" href="<s:url value="/css/bootstrap-responsive.min.css"/>"/>

        <!-- Included CSS Files (Uncompressed) -->
        <!--
        <link rel="stylesheet" href="<s:url value="/css/bootstrap.css"/>">
        <link rel="stylesheet" href="<s:url value="/css/bootstrap-responsive.css"/>">
        -->
        <link rel="stylesheet" href="<s:url value="/css/app.css"/>"/>

        <!-- IE Fix for HTML5 Tags -->
        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>
    <body>

        <!-- Header and Nav -->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-list-alt icon-white"></span>
                    </a>
                    <a class="brand" href="<s:url value="/index.jsp"/>"><s:text name="Home"/></a>

                    <div class="nav-collapse collapse">
                        <!-- Left Nav Section -->
                        <ul class="nav">
                            <li class="divider-vertical"></li>
                            <li><a href="#"><s:text name="Learn"/></a></li>
                            <li class="divider-vertical"></li>
                            <li class="dropdown" id="stats">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#stats">
                                    <s:text name="Stats"/>
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="<s:url namespace="/stats" action="listTeams"/>">Team Stats</a></li>
                                    <li class="divider"></li>
                                    <li><a href="<s:url namespace="/stats" action="listUsers"/>">User Stats</a></li>
                                </ul>
                            </li>
                            <li class="divider-vertical"></li>
                            <li><a href="#"><s:text name="About"/></a></li>
                            <li class="divider-vertical"></li>
                            <li><a href="<s:url namespace="/client" action="client"/>">Client</a></li>
                            <li class="divider-vertical"></li>
                        </ul>
                    </div>

                    <!-- Right Nav Section -->
                    <form class="navbar-form form-search pull-right hidden-phone">
                        <div class="input-append">
                            <input type="text" class="span2 search-query" placeholder="Search">
                            <button type="submit" class="btn"><i class="icon-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- End Header and Nav -->
