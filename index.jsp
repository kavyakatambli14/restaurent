<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Restaurant Login</title>
</head>
<body>
    <h2>Welcome to Restaurant Order System</h2>
    <form action="menu.jsp" method="get">
        <input type="submit" value="Enter as Customer">
    </form>

    <h3>Admin Login</h3>
    <form action="AdminLoginServlet" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Login as Admin">
    </form>
</body>
</html>
