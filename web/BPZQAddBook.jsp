<%-- 
    Document   : BPZQAddBook
    Created on : Feb 29, 2016, 1:25:04 PM
    Author     : Bpaquette6801
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="border">
    <jsp:include page="BPZQBanner.jsp" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add book</title>
    </head>
    <body>
        <h1>Add a Book</h1>
        <p style="color:red"><i>${message}</i></p>
        <form action="BPZQAddBook" method="post">
            <label for="code">Code: </label>
            <input type="text" name="code" size="10">
            <br><br>
            <label for="desc" >Description: </label>
            <input type="text" name="desc" size="30">
            <br><br>
            <label for="quant">Quantity: </label>
            <input type="text" name="quant" size="5"><br><br>
            <input type="submit" value="Save"></input>
            <input onclick="location.href='BPZQDisplayBooks';" type="button" value="Cancel"></input>
        </form>
    </body>
    <jsp:include page="BPZQFooter.jsp" />
</html>
