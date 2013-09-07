<%-- 
    Document   : about
    Created on : Nov 18, 2012, 12:41:44 PM
    Author     : Michael Thomas <michael4.thomas@live.uwe.ac.uk>
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
