<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
        <%@page import="java.io.*" %>
         <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%!int flag; %>
<body>
<%!static int no=0; %>
<%no++; %>
<%
String p_id=request.getParameter("pi");
String p_name=request.getParameter("pn");
String cont=request.getParameter("co");
String gender=request.getParameter("gd");
String address=request.getParameter("ad");
String bus_id=request.getParameter("bui");
int age=Integer.parseInt(request.getParameter("ag"));

Random r=new Random();
HashSet<Integer> set=new HashSet<>();
while(set.size()<1)
{
	int random=r.nextInt(2000)+10;
	set.add(random);
}


Class.forName("com.mysql.jdbc.Driver");
String url=("jdbc:mysql://localhost:3306/bus_booking");
String un="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,un,pwd);
PreparedStatement ps=con.prepareStatement("insert into passenger(p_id,p_name,age,contact,gender,address,b_id,seat_no,t_id) values(?,?,?,?,?,?,?,?,?);");
ps.setString(1,p_id);
ps.setString(2,p_name);
ps.setInt(3,age);
ps.setString(4,cont);
ps.setString(5,gender);
ps.setString(6,address);
ps.setString(7,bus_id);
ps.setString(8,p_id);
for(int randomNumbaers:set)
{
	ps.setInt(9,randomNumbaers);
}
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
<%PreparedStatement ptk=con.prepareStatement("select p.p_id,p.p_name,p.t_id,seat_no,t.tik_price,t.b_id,b.b_name from  passenger p,ticket t,bus b where p.b_id=t.b_id and p.p_id=?");
ptk.setString(1,p_id);
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
<p><b>Share Your Experience</b></p><p><a href="review.html">Click here</a>
</center>
<%}else{%>
<p>Something went wrong try again/enter the different passenger id</p>
<p><a href="passenger.html">back</a></p>
<% }%>
<a href="welcome_user.jsp">Main menu</a>
</center>


</body>
</html>