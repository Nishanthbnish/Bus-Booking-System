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
PreparedStatement ps=con.prepareStatement("select * from passenger");
ResultSet rs=ps.executeQuery();
%>

<center>
<p><h3 style="color:brown;"> Passenger Details</h3></p>
<%while(rs.next()) {%>
<p>
<b>Passenger Id: </b> <%=rs.getString(1) %>
,
<b>Passenger Name: </b> <%=rs.getString(2) %>
,
<b>Age: </b> <%=rs.getString(3) %>
,
<b>Contact: </b> <%=rs.getString(4) %>
,
<b>Gender: </b> <%=rs.getString(5) %>
,
<b>Adress:</b> <%=rs.getString(6) %>
,
<b>Bus Id:</b> <%=rs.getString(7) %>
,
<b>Seat No:</b> <%=rs.getString(8) %>
,
<b>Ticket Id:</b> <%=rs.getString(9) %>
</p>
<%}%>
</center>
<a href="welcomeadmin.jsp">Back</a>
</body>
</html>