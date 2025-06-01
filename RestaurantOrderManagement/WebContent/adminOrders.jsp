<%@ page import="java.sql.*, restaurant.util.DBUtil" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Admin - Orders</title></head>
<body>
<h2>All Orders</h2>
<%
    Connection conn = DBUtil.getConnection();
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT o.id, o.customer_name, m.name, m.price FROM orders o JOIN menu m ON o.item_id = m.id");
%>
<table border="1">
    <tr>
        <th>Order ID</th>
        <th>Customer Name</th>
        <th>Item Name</th>
        <th>Price</th>
    </tr>
    <%
        while(rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("customer_name") %></td>
        <td><%= rs.getString("name") %></td>
        <td>₹<%= rs.getDouble("price") %></td>
    </tr>
    <%
        }
        rs.close();
        stmt.close();
        conn.close();
    %>
</table>
<a href="index.jsp">Logout</a>
</body>
</html>
