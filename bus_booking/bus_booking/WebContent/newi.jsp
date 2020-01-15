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
String name=request.getParameter("n");
String  uname=request.getParameter("a");
String  password=request.getParameter("password");
String  ph=request.getParameter("m");
Class.forName("com.mysql.jdbc.Driver");
String url=("jdbc:mysql://localhost:3306/bus_booking");
String un="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,un,pwd);
PreparedStatement ps=con.prepareStatement("insert into login values(?,?,?,?)");
ps.setString(1,name);
ps.setString(2,uname);
ps.setString(3,password);
ps.setString(4,ph);
int flag=ps.executeUpdate();
%>
<center>
<% if(flag>0){%>
<h3>Sucessfully registered</h3>
 <p>  <a href="Admin.html"> login</a></p>
 
<% }else{%>
<h3>values not inserted</h3>
<p> <a href="newu.html">click here to register again</a></p>

<% }%>
</center>
</body>
</html>