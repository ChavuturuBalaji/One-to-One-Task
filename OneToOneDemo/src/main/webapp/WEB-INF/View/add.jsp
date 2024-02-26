<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

</head>
<body>
<!DOCTYPE html>

<style>
    .button-container {
        text-align: center;
    }

    .button-container form {
        display: inline-block;
        margin: 0 10px;
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
<form:form modelAttribute="person" action="store">
    <table>
        <tr>
            <td> Person Name</td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td>Mobile</td>
            <td><form:input path="mobile"/></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td>Street</td>
            <td><form:input path="personAddress.street"/></td>
        </tr>
        <tr>
            <td>City</td>
            <td><form:input path="personAddress.city"/></td>
        </tr>
        <tr>
            <td>State</td>
            <td><form:input path="personAddress.state"/></td>
        </tr>
        <tr>
            <td>PinCode</td>
            <td><form:input path="personAddress.zip"/></td>
        </tr>
    </table>
    <input type="submit" value="Submit">
</form:form>


</body>
</html>
