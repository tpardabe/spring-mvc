<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>User Found</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <table class="table table-condensed">
            <tr>
                <td>userId</td>
                <td>Firstname</td>
                <td>Lastname</td>
                <td>email</td>
                <td>URI</td>
                <td>status</td>
            </tr>
            <tr>
                <td>${user.ID}</td>
                <td>${user.firstname}</td>
                <td>${user.lastname}</td>
                <td>${user.email}</td>
                <td>${user.URI}</td>
                <td >${user.status}</td>
            </tr>
            <tr>
                <td>
                    <form modelAttribute="user" action="user/${user.ID}/${user.status}" method="post">
                        <button class="btn btn-primary" id="changeStatus" >Change Status</button>
                    </form>
                </td>
            </tr>
            <tr>
                <td><a href="/">Home</a>
                </td>
            </tr>
        </table>
    </body>
    </html>