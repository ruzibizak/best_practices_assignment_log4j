<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit User</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .form-container { max-width: 500px; margin: auto; padding: 20px; border: 1px solid #ccc; border-radius: 10px; }
        .form-container input[type="text"], .form-container input[type="email"] { width: 100%; padding: 10px; margin: 5px 0 20px 0; border: 1px solid #ccc; border-radius: 5px; }
        .form-container input[type="submit"] { background-color: #4CAF50; color: white; border: none; padding: 10px 20px; cursor: pointer; border-radius: 5px; }
        .form-container input[type="submit"]:hover { background-color: #45a049; }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Edit User</h2>
        <form action="${pageContext.request.contextPath}/user/update" method="post">
            <input type="hidden" name="id" value="${user.id}">

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${user.name}" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${user.email}" required>

            <input type="submit" value="Update User">
        </form>
    </div>
</body>
</html>