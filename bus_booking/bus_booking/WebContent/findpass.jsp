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
String pass=request.getParameter("find");
Class.forName("com.mysql.jdbc.Driver");
String url=("jdbc:mysql://localhost:3306/bus_booking");
String un="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,un,pwd);
%>
<center>
<h2>Booking details</h2>
</center>
<%PreparedStatement ptk=con.prepareStatement("select p.p_id,p.p_name,p.t_id,seat_no,t.tik_price,t.b_id,b.b_name from  passenger p,ticket t,bus b where p.b_id=t.b_id and p.p_id=?");
ptk.setString(1,pass);
ResultSet rs=ptk.executeQuery();
%>
<center>
<%while(rs.next()) {%>

<p>Passenger Id:</b> <%=rs.getString(1) %></p>

<p>Passenger name:</b> <%=rs.getString(2) %></p>

<p>ticket Id:</b> <%=rs.getString(3) %></p>

<p> SEAT NO:</b><%=rs.getString(4) %></p>

<p>ticket price: </b><%=rs.getString(5) %></p>

<p> bus id: </b><%=rs.getString(6) %></p>

<p>bus name: </b><%=rs.getString(7) %></p>
</b>

<%}%>
<br>
<br>
<center>
<h2>Ratings</h2>
</center>
<%PreparedStatement revt=con.prepareStatement("select * from revi where p_id=?");
revt.setString(1,pass);
ResultSet ts=revt.executeQuery();

%>

<center>
<%while(ts.next()) {%>

<p>Rating:</b> <%=ts.getString(3) %></p>
<% }%>
<a href="welcome_user.jsp">back</a>
</center>
</body>
</html>