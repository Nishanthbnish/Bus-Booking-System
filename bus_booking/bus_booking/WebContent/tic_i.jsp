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
<%!int flag; %>
<%
String bus_id=request.getParameter("tx");
String t_price=request.getParameter("tp");
Class.forName("com.mysql.jdbc.Driver");
String url=("jdbc:mysql://localhost:3306/bus_booking");
String un="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,un,pwd);
PreparedStatement ps=con.prepareStatement("insert into ticket value (?,?)");
ps.setString(1,t_price);
ps.setString(2,bus_id);
try{
 flag=ps.executeUpdate();
}
catch(Exception e)
{
	System.out.println();
}
%>
<center>
<% if(flag>0){%>
<h3>Succesfull</h3>
<p>ticket details<a href="ticketdis.jsp">click here</a></p>
<a href="welcomeadmin.jsp">Back</a>
<% }else{%>
<h3>please use different bus id it is already used</h3>
<a href="welcomeadmin.jsp">Back</a>

<% }%>
</center>
</body>
</html>