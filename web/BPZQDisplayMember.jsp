<%-- 
    Document   : BPZQDisplayMember
    Created on : Feb 1, 2016, 12:50:08 PM
    Author     : bpaquette6801
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="BPZQBanner.jsp" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section>
            <h2>Thanks for joining our club</h2>
            <br>
            <p>Here is the information you entered.</p>
            <form action="BPZQRegister.jsp" method="post" id="form1">
                <b><p>Full Name: &nbsp;&nbsp;&nbsp;&nbsp;</b>${param.fullname}</p>
                <b><p>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> ${param.email}</p>
                <b><p>Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> ${param.phone}</p>
                <b><p>IT Program:</b> ${param.itProgram}</p>
                <b><p>Year:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> ${param.year}</p>
                <p>To register another member, click on the back button in your browser or return button shown below.</p>
                <input type="Submit" value="return">
            </form>
        </section>
        <jsp:include page="BPZQFooter.jsp" />
    </body>
</html>
