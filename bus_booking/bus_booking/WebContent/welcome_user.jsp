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
<h2 style="color:blue;">Book Bus Ticket</h2>
<a href="routefind.html"><h3><b>click here</b></h3></a>
<h2 style="color:green;">Buses ON Various Route</h2>
<a href="busdis.jsp"><h3><b>Display</b></h3></a>
<h2 style="color:brown;">Passenger and ratings</h2>
<a href="findpass.html"><h3><b>Display</b></h3></a>


/body>
</html>