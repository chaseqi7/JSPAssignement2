<%-- 
    Document   : BPZQDisplayBooks
    Created on : Feb 29, 2016, 12:28:46 PM
    Author     : Bpaquette6801
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="border">
    <jsp:include page="BPZQBanner.jsp" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Books</title>
    </head>
    <body>
        <h1>List of Books</h1>
        <table>
            <tr>
                <th>Code</th>
                <th>Description</th>
                <th>Quantity</th>
            </tr>
        <c:forEach var="item" items="${books}">
            <tr>
                <td>${item.code}</td>
                <td>${item.description}</td>
                <td>${item.quantity}</td>
            </tr>
        </c:forEach>
            
        </table>
        <a href="BPZQAddBook.jsp"><button>Add Book</button></a>
            
            
    </body>
    <jsp:include page="BPZQFooter.jsp" />
</html>
