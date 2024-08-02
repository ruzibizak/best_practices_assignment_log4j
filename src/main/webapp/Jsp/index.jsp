<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <style>
        body { font-family: Arial, sans-serif; }
        table { width: 80%; margin: auto; border-collapse: collapse; }
        th, td { padding: 10px; border: 1px solid #ddd; text-align: left; }
        th { background-color: #f2f2f2; }
        tr:hover { background-color: #f5f5f5; }
        .add-user-btn { margin: 20px auto; display: block; width: 200px; padding: 10px; background-color: #4CAF50; color: white; text-align: center; text-decoration: none; border-radius: 5px; }
        .add-user-btn:hover { background-color: #45a049; }
    </style>
</head>
<body>
    <h2 style="text-align: center;">User List</h2>
    <a class="add-user-btn" href="${pageContext.request.contextPath}Jsp/editUser.jsp">Add New User</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.email}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/jsp/editUser.jsp?id=${user.id}">Edit</a> | 
                        <a href="${pageContext.request.contextPath}/user/delete?id=${user.id}" onclick="return confirm('Are you sure?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>