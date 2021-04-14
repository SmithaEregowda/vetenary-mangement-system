<%@page import="java.sql.*" %>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	PreparedStatement statement=con.prepareStatement("select username,password from doctorregistration where username=?and password=? "); 
	statement.setString(1,username);
	statement.setString(2,password);
	ResultSet rs=statement.executeQuery();
	 HttpSession se=request.getSession();
	

	while(rs.next()){
		 se.setAttribute("username", username);
		 se.setAttribute("password", password);
		response.sendRedirect("doctorscreen.jsp");
		
	}
    response.sendRedirect("doctorLogin.jsp");
    out.println("<script type=\"text/javascript\">");
    out.println("alert('User or password incorrect');");
    out.println("</script>");
}
catch(Exception e){
	out.println(e);
}

%>