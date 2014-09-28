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
    Document   : footer
    Created on : Sep 23, 2012, 10:58:24 AM
    Author     : Michael Thomas (mikepthomas@outlook.com)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <p><s:text name="Copyright"/></p>
            </div>
            <div class="col-md-6">
                <ul class="footer-links pull-right">
                    <li><a href="#">Link 1</a></li>
                    <li><a href="#">Link 2</a></li>
                    <li><a href="#">Link 3</a></li>
                    <li><a href="<s:url action="index" namespace="/config-browser"/>">Launch the configuration browser</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
                
<!-- Included JS Files (Compressed) -->
<script src="<s:url value="/js/jquery-2.0.3.min.js"/>"></script>
<script src="<s:url value="/js/bootstrap.min.js"/>"></script>

<!-- Included JS Files (Uncompressed) -->
<!--
<script src="<s:url value="/js/jquery-2.0.3.js"/>"></script>
<script src="<s:url value="/js/bootstrap.js"/>"></script>
-->

<script>
    $(document).ready(function() {
        $(function(){
            $('#carousel').carousel();
        });
    });
</script>

</body>
</html>
