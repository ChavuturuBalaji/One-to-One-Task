<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <style>
        .button-container {
            text-align: center; /* Align buttons to the center */
        }

        .button-container form {
            display: inline-block; /* Make forms display inline */
            margin: 0 10px; /* Add some spacing between buttons */
        }
    </style>
</head>
<body>
<div class="button-container">
    <form action="/add">
        <input type="submit" value="Add">
    </form>
    <form action="/all">
        <input type="submit" value="Get All">
    </form>
</div><br>
<br>
<table border="1">
    <tr>
        <th>Person ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>Street</th>
        <th>city</th>
        <th>state</th>
        <th>pincode</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="person" items="${persons}">
        <tr>
            <td><c:out value="${person.getId()}"/></td>
            <td><c:out value="${person.getName()}"/></td>
            <td><c:out value="${person.getEmail()}"/></td>
            <td><c:out value="${person.getMobile()}"/></td>
            <td><c:out value="${person.getPersonAddress().getStreet()}"/></td>
            <td><c:out value="${person.getPersonAddress().getCity()}"/></td>
            <td><c:out value="${person.getPersonAddress().getState()}"/></td>
            <td><c:out value="${person.getPersonAddress().getZip()}"/></td>
            <td>
                <form action="/updateDetails">
                    <input type="hidden" name="personId" value="${person.getId()}">
                    <input type="submit" value="Update">
                </form>
            </td>
            <td>
                <form action="/delete">
                    <input type="hidden" name="personId" value="${person.getId()}">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>