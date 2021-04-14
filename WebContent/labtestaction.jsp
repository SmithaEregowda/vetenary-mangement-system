<%@page import="java.sql.*"%>
<%
try{
	
	String name=request.getParameter("name");
	String petname=request.getParameter("petname");
	String mobileno=request.getParameter("mobileno");
	String testDetails=request.getParameter("labtest");
	String serviceAt=request.getParameter("serviceAt");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	Statement st=con.createStatement();
	String sql="insert into labtestDetails values('"+name+"','"+petname+"','"+mobileno+"','"+testDetails+"','"+serviceAt+"')";
	st.executeUpdate(sql);
	response.sendRedirect("suceess.html");
}catch(Exception e){
out.println(e);
}
%>