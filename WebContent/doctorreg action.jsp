<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String mobileno=request.getParameter("mobileno");
String gender=request.getParameter("gender");
String specialization=request.getParameter("specialization");
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	Statement st=con.createStatement();
String query="insert into  doctorregistration values('"+name+"',"+mobileno+",'"+gender+"','"+specialization+"','"+username+"','"+password+"') ";
	st.executeUpdate(query);
	response.sendRedirect("doctorLogin.jsp"); 
}
catch(Exception e){
	System.out.println(e);
	
}
%>