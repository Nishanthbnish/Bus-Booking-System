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
PreparedStatement ps=con.prepareStatement("select * from revi");
ResultSet rs=ps.executeQuery();
%>

<center>
<p><h3 style="color:brown;"> Passenger Review Details</h3></p>
<%while(rs.next()) {%>
<p>
<b>Bus Id: </b> <%=rs.getString(1) %>
,
<b>Passenger Id: </b> <%=rs.getString(2) %>
,
<b>Ratings: </b> <%=rs.getString(3) %>
<%}%>
</center>
</body>
</html>