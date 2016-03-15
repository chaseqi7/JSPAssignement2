<%-- 
    Document   : index
    Created on : Jan 19, 2016, 12:59:39 PM
    Author     : bpaquette6801
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="border">
    <jsp:include page="BPZQBanner.jsp" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BPZQ Programming Club</title>
        <link href="Styles/Styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body >
        <section id="pad">
            <p><b>Java Web Tech :Section 3</b></p>
            <br>
            <section >
                <p>Pair Programming Team</p>
                <p><b>Assignment 1</b></p>
                <p><b>Driver: Brian Paquette</b></p>
                <p><b>Observer: Ziming Qi</b></p>
                <br>
                <p>Current Date and Time</p>
                <b><%= new java.util.Date() %></b>
            </section>
        </section>
        <jsp:include page="BPZQFooter.jsp" />
    </body>
    
</html>
