<%@ page import="java.sql.*" %>
<%
String petowner=request.getParameter("name");
String mobileno=request.getParameter("number");
String pet_species=request.getParameter("species");
String pet_gender=request.getParameter("gender");
String  blood_group=request.getParameter("checkbox");
String symptoms=request.getParameter("symptom");
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	Statement st=con.createStatement();
	String sql="insert into userRegistration values('"+petowner+"','"+mobileno+"','"+pet_species+"','"+pet_gender+"','"+blood_group+"','"+symptoms+"','"+username+"','"+password+"')";
	st.executeUpdate(sql);
	response.sendRedirect("userLogin.jsp");
}
catch(Exception e){
	out.println(e);
}
%>