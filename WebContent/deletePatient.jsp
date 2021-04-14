<%@page import="java.sql.*"%>
<html>

</html>



<%

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	String petowner=request.getParameter("petowner");
	Statement st=con.createStatement();
	String sql="delete * from  userRegistration where petowner="+petowner;
	st.executeUpdate(sql);
}
catch(Exception e){
	out.print(e);
}
%>