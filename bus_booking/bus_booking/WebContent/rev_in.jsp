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
String bus_id=request.getParameter("bidr");
String p_id=request.getParameter("pidr");
String rat=request.getParameter("rt");
Class.forName("com.mysql.jdbc.Driver");
String url=("jdbc:mysql://localhost:3306/bus_booking");
String un="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,un,pwd);
PreparedStatement ps=con.prepareStatement("insert into revi values(?,?,?)");
ps.setString(1,bus_id);
ps.setString(2,p_id);
ps.setString(3,rat);
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
<p>Booking details</p>
<%PreparedStatement rv=con.prepareStatement("select * from  revi where p_id=?");
rv.setString(1,p_id);
ResultSet rs=rv.executeQuery();
%>
<center>
<%while(rs.next()) {%>

<p><b>Bus Id:</b> <%=rs.getString(1) %></p>

<p><b>Passenger Id:</b> <%=rs.getString(2) %></p>

<p><b>Rating:</b> <%=rs.getString(3) %></p>


<%}%>
</center>
<% }else{%>
<p><b>sorry,something eror occured</b>
<% }%>
</center>
</body>
</html>