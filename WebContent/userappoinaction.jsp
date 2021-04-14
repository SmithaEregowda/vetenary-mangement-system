<%@page import="java.sql.*" %>
<%
try{
	String name=request.getParameter("name");
	String number=request.getParameter("number");
	String email=request.getParameter("email");
	String gender=request.getParameter("gender");
	String checkbox=request.getParameter("checkbox");
	String symptoms=request.getParameter("symptoms");
	String  slection=request.getParameter(" slection");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	Statement st=con.createStatement();
	String sql="insert into  appointment values('"+name+"','"+number+"','"+email+"','"+gender+"','"+checkbox+"','"+symptoms+"','"+ slection+"')";
	st.executeUpdate(sql);
	
}catch(Exception e){
	System.out.println(e);
}
%>