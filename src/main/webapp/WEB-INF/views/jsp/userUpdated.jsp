<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>User Updated</title>
    </head>
    <body>
        <table>
            <tr>
                <td>
                    Updated User ID: ${userModel.get("userID")}
                </td>
            </tr>
            <tr>
                <td>
                    oldStatus: ${userModel.get("oldStatus")}
                </td>
            </tr>
            <tr>
                <td>
                    newStatus: ${userModel.get("newStatus")}
                </td>
            </tr>
            <tr>
                <td><a href="/">Home</a>
                </td>
            </tr>
        </table>
    </body>
    </html>