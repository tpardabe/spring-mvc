<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ru">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Language" content="ru">
<title>Technodom project</title>

 
<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
</head>

</head>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="navbar-header">
                <p>CREATE USER</p>
                <form modelAttribute="user" action="createUser" method="post">

                    <table align="center">
                        <tr>
                            <td>
                                <label>FirstName</label>
                            </td>
                            <td>
                                <input path="firstname" name="firstname" id="firstname" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label path="lastname">LastName</label>
                            </td>
                            <td>
                                <input path="lastname" name="lastname" id="lastname" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label path="email">Email</label>
                            </td>
                            <td>
                                <input path="email" name="email" id="email" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label path="URI">URI</label>
                            </td>
                            <td>
                                <input path="URI" name="URI" id="URI" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button id="register" name="register" class="btn btn-primary">Create User</button>
                            </td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td></td>
                            <td><a href="/">Home</a>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <div class="navbar-header">
                <p>USER INFORMATION</p>
                <form action="user">
                    User ID:<br>
                    <input type="text" name="userID"><br>
                    <button id="searchByID" class="btn btn-primary" >Search</button>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <div class="navbar-header">
                <p >USER STATISTICS</p>
                <form action="users">
                    <select name="status">
                        <option value="ONLINE">ONLINE</option>
                        <option value="OFFLINE">OFFLINE</option>
                    </select>
                    <button type="submit" class="btn btn-primary">Search</button>
                </form>
            </div>
        </div>
    </div>
</div>

 
<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />
 
<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
 
</body>
</html>