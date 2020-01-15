<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>Welcome, <%=session.getAttribute("name")%></p>
<p align="right"><a href="logout.jsp">Logout</a></p>
<h2 style="color:blue;">Route</h2>
<a href="route.html"><h3><b>Insert</b></h3></a>
<a href="routedis.jsp"><h3><b>Display</b></h3></a>
<h2 style="color:green;">BUS</h2>
<a href="bus.html"><h3><b>Insert</b></h3></a>
<a href="busdis.jsp"><h3><b>Display</b></h3></a>
<h2 style="color:green;">Passenger</h2>
<a href="passengerdis.jsp"><h3><b>Display</b></h3></a>
<h2 style="color:brown;">Ticket</h2>
<a href="ticket.html"><h3><b>Insert</b></h3></a>
<a href="ticketdis.jsp"><h3><b>Display</b></h3></a>
<h2 style="color:brown;">Review</h2>
<a href="revdisp.jsp"><h3><b>Display</b></h3></a>


</body>
</html>