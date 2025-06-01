<%@ page import="java.sql.*, restaurant.util.DBUtil" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Menu</title></head>
<body>
<h2>Menu</h2>
<form action="OrderServlet" method="post">
    <%
        Connection conn = DBUtil.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM menu");
        while(rs.next()) {
    %>
        <input type="checkbox" name="item" value="<%= rs.getInt("id") %>">
        <%= rs.getString("name") %> - ₹<%= rs.getDouble("price") %><br>
    <%
        }
        rs.close();
        stmt.close();
        conn.close();
    %>
    <input type="submit" value="Place Order">
</form>
</body>
</html>
