<%@ page import="java.sql.*"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String registernum=request.getParameter("registernum");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");

	
	PreparedStatement statement=con.prepareStatement("select username,password from userregistration where username=? and password=?");
	statement.setString(1, username);
	statement.setString(2, password);
	ResultSet rs=statement.executeQuery();
	HttpSession se=request.getSession();
	while(rs.next()){
		 se.setAttribute("user", username);
		 se.setAttribute("pass", password);
		response.sendRedirect("userscreen.jsp");
		
	}
	out.print("<script type=\"text/javscript\"" );
	out.print("alert('incorrect username or password')" );
	out.print("</script>");
	response.sendRedirect("userLogin.jsp");
	
}
catch(Exception e){
	out.println(e);
}



%>
