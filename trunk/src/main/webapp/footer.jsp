<%--
    Document   : footer
    Created on : Sep 23, 2012, 10:58:24 AM
    Author     : Michael Thomas <michael4.thomas@live.uwe.ac.uk>
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
