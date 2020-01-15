<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
        <%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
String url=("jdbc:mysql://localhost:3306/bus_booking");
String un="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,un,pwd);
PreparedStatement ps=con.prepareStatement("select * from route");
ResultSet rs=ps.executeQuery();
%>

<center>
<p><h3 style="color:brown;"> Route Details</h3></p>
<%while(rs.next()) {%>
<p>
Route Id: <%=rs.getString(1) %>

Route from: <%=rs.getString(2) %>

Route upto: <%=rs.getString(3) %>
</p>
<%}%>
<a href="welcomeadmin.jsp">Back</a>
</center>
</body>
</html>