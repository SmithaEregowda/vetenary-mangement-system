<%@page import="java.sql.*"%>
<% 

String start=request.getParameter("start");
String end=request.getParameter("end");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem",
"root","smitha");
Statement st=con.createStatement();

st.executeUpdate("insert into bookingdetails values('"+start+"','"+end+"')");
 response.sendRedirect("suceess.html");
}	
catch(Exception e){
	System.out.println(e);
}
%>