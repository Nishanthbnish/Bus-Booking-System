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
String bus_id=request.getParameter("bi");
String bus_name=request.getParameter("bn");
String source=request.getParameter("src");
String sorce_arrival=request.getParameter("sa");
String Distination=request.getParameter("dt");
String dist_arr=request.getParameter("da");
String depart_date=request.getParameter("dd");
String route=request.getParameter("rt");

Class.forName("com.mysql.jdbc.Driver");
String url=("jdbc:mysql://localhost:3306/bus_booking");
String un="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,un,pwd);
PreparedStatement ps=con.prepareStatement("insert into bus values(?,?,?,?,?,?,?,?)");
ps.setString(1,bus_id);
ps.setString(2,bus_name);
ps.setString(3,source);
ps.setString(4,sorce_arrival);
ps.setString(5,Distination);
ps.setString(6,dist_arr);
ps.setString(7,depart_date);
ps.setString(8,route);
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
<h3>Sucessfull entered bus details</h3>
<p>click here to see details</p>
<p><a href="busdis.jsp">click here</a></p>
<br>
<a href="welcomeadmin.jsp">Back</a>
<% }else{%>
<h3>please use different bus id/enter the details correctly</h3>
<% }%>
<a href="welcomeadmin.jsp">Back</a>
</center>

</body>
</html>