<%@page import="java.sql.*"%>
<% 
String ownername=request.getParameter("ownername");
String mobileno=request.getParameter("mobileno");
String address=request.getParameter("address");


try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem",
"root","smitha");
Statement st=con.createStatement();
st.executeUpdate("insert into persondetails  values('"+ownername+"','"+mobileno+"','"+address+"')");

 response.sendRedirect("suceess.html");
}	
catch(Exception e){
	System.out.println(e);
}
%>