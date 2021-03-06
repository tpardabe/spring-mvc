<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>User Statictics</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
List of users:
<br />
<table class="table table-condensed">
    <tr>
        <td>userId</td>
        <td>Firstname</td>
        <td>Lastname</td>
        <td>URI</td>
        <td>status</td>
        <td>email</td>
    </tr>
    <c:forEach items="${userList}" var="user">
        <tr>
            <td>${user.ID}</td>
            <td>${user.firstname}</td>
            <td>${user.lastname}</td>
            <td>${user.URI}</td>
            <td>${user.status}</td>
            <td>${user.email}</td>
        </tr>
    </c:forEach>
    <tr>
        <td><a href="/">Home</a>
        </td>
    </tr>
</table>
</body>
</html>