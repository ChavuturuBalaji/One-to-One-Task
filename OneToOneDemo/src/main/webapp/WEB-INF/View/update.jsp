<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

</head>
<body>
<!DOCTYPE html>

<style>
    .button-container {
        text-align: center; /* Align buttons to the center */
    }

    .button-container form {
        display: inline-block; /* Make forms display inline */
        margin: 0 10px; /* Add some spacing between buttons */
    }
</style>

<div class="button-container">
    <form action="/add">
        <input type="submit" value="Add">
    </form>
    <form action="/all">
        <input type="submit" value="Get All">
    </form>

</div>

<form:form modelAttribute="person" method="post" action="/update">
    <table>
        <!-- Person fields -->
        <tr>
            <td> Person ID</td>
            <td><form:input path="id" value="${person.getId()}" /></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><form:input path="name" value="${person.getName()}" /></td>
        </tr>
        <tr>
            <td> Email</td>
            <td><form:input path="email" value="${person.getEmail()}" /></td>
        </tr>
        <tr>
            <td>Mobile</td>
            <td><form:input path="mobile" type="number" value="${person.getMobile()}" /></td>
        </tr>
        <!-- PersonAddress fields -->
        <tr>
            <td>Street</td>
            <td><form:input path="personAddress.street" value="${person.getPersonAddress().getStreet()}" /></td>
        </tr>
        <tr>
            <td>City</td>
            <td><form:input path="personAddress.city" value="${person.getPersonAddress().getCity()}" /></td>
        </tr>
        <tr>
            <td>State</td>
            <td><form:input path="personAddress.state" value="${person.getPersonAddress().getState()}" /></td>
        </tr>
        <tr>
            <td>PinCode</td>
            <td><form:input path="personAddress.zip" type="number" value="${person.getPersonAddress().getZip()}" /></td>
        </tr>
        <tr>
            <td><input type="submit" value="update"></td>
        </tr>
    </table>
</form:form>


</body>
</html>