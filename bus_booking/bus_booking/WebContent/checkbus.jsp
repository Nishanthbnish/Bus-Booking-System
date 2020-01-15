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

<%! String srcdb ;
String depdb;
int i=1;
%>
<% 
String from=request.getParameter("fr");
String to=request.getParameter("to");
Class.forName("com.mysql.jdbc.Driver");
String url=("jdbc:mysql://localhost:3306/bus_booking");
String un="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,un,pwd);
String sql="select * from bus where src=? and destination=?";
PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1,from);
ps.setString(2,to);
ResultSet rs=ps.executeQuery();
%>
<%while(rs.next())
{%>
<p><b>Bus Id:</b> <%=rs.getString(1) %></p>
<p><b>Bus Name:</b> <%=rs.getString(2) %></p>
<p><b>Source:</b> <%=rs.getString(3) %></p>
<p><b>Arrival:</b> <%=rs.getString(4) %></p>
<p><b>Distination:</b> <%=rs.getString(5) %></p>
<p><b>departure:</b> <%=rs.getString(6) %></p>
<p><b>date:</b> <%=rs.getString(7) %></p>
<p><b>r_id: </b><%=rs.getString(8) %></p>
<a href="passenger.html">Book Now</a>
<%i=0; %>
<%}%>
<%if(i==0){%>
<%i=i+1; %>
<%}
else if(i>0){ %>
<p><b>Sorry buses in this route are not available</b></p>
<%}%>
</body>
</html>