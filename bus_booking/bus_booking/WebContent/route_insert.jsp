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
String route_id=request.getParameter("ri");
String frome=request.getParameter("fr");
String too=request.getParameter("to");
Class.forName("com.mysql.jdbc.Driver");
String url=("jdbc:mysql://localhost:3306/bus_booking");
String un="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,un,pwd);
PreparedStatement ps=con.prepareStatement("insert into route values(?,?,?)");
ps.setString(1,route_id);
ps.setString(2,frome);
ps.setString(3,too);
try{
 flag=ps.executeUpdate();
}
catch(Exception e)
{
	System.out.println(e);
}

%>
<center>
<% if(flag>0){%>
<h3>Sucessfull</h3>
<p><b>route details</b><a href="routedis.jsp">click here</a></p>
<br>
<a href="welcomeadmin.jsp">Back</a>
<% }else{%>
<h3>route id is in use please use different route id</h3>
<a href="welcomeadmin.jsp">Back</a>
<% }%>
</center>
</body>
</html>