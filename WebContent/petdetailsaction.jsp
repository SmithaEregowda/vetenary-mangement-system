
<%@page import="java.sql.*"%>
<% 

String petname=request.getParameter("petname");
String petsp=request.getParameter("petsp");
String petbloodgrp=request.getParameter("petbloodgrp");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem",
"root","smitha");
Statement st=con.createStatement();
st.executeUpdate("insert into  petdetails values('"+petname+"','"+petsp+"','"+petbloodgrp+"')");
 response.sendRedirect("suceess.html");
}	
catch(Exception e){
	System.out.println(e);
}
%>