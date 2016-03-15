<%-- 
    Document   : BPZQError
    Created on : Feb 29, 2016, 3:20:12 PM
    Author     : bpaquette6801
--%>

<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html id="border">
    <jsp:include page="BPZQBanner.jsp" />
    <head>
        <meta charset="utf-8">
        <title>Error Page</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>

    <h1>Java Error</h1>
    <p>Sorry, Java has thrown an exception.</p>
    <p>To continue, click the Back button.</p>

    <h2>Details</h2>
    <p>Type: ${pageContext.exception["class"]}</p>
    <p>Message: ${pageContext.exception.message}</p>

    </body>
    <jsp:include page="BPZQFooter.jsp" />
</html>