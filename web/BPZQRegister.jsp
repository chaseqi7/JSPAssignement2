<%-- 
    Document   : BPZQRegister
    Created on : Jan 19, 2016, 1:15:39 PM
    Author     : bpaquette6801
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="border">
    <jsp:include page="BPZQBanner.jsp" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Styles/Styles.css" rel="stylesheet" type="text/css"/>
        <title>JSP Register Page</title>
    </head>
    <body>
        <section id="pad">
            <h2>New Member Registration Form</h2>
            <br>
            <form action="BPZQDisplayMember.jsp" method="post" id="form1">
            <b><label for="fullname">Full Name:</label></b>
            <input type="text" name="fullname" style="width: 200px"><br><br>
            <b><label for="email">Email:</label></b>
            <input type="text" name="email" style="width: 300px"><br><br>
            <b><label for="phone">Phone:</label></b>
            <input type="text" name="phone" style="width: 100px"><br><br>
            <b><label for="itProgram">IT Program:</label></b>
            <select name="itProgram">
                <option value="CAD">CAD</option>
                <option value="CP">CP</option>
                <option value="CPA">CPA</option>
                <option value="ITID">ITID</option>
                <option value="ITSS">ITSS</option>
                <option value="MSD">MSD</option>
                <option value="Other">Other</option>
            </select><br><br>
            <b><label for="year">Year:</label></b>
            <select name="year">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
            <br><br>
            <input type="submit" value="Register Now!">
            <input type="reset">
            </form>
        </section>
        <jsp:include page="BPZQFooter.jsp" />
    </body>
</html>
