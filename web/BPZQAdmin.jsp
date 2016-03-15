<%-- 
    Document   : BPZQAdmin
    Created on : Jan 19, 2016, 1:16:45 PM
    Author     : bpaquette6801
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="border">
    <jsp:include page="BPZQBanner.jsp" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Styles/Styles.css" rel="stylesheet" type="text/css"/>
        <title>Admin Page</title>
    </head>
    <body>
        <h1>Admin : Data Maintenance</h1>
        <a href="BPZQDisplayBooks" method="post">Maintain Books</a>
    </body>
    <jsp:include page="BPZQFooter.jsp" />
</html>
