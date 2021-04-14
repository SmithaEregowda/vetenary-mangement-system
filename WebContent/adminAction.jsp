<%@page import="java.sql.*"%>
<% 
String username=request.getParameter("name");
String password=request.getParameter("password");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem",
"root","smitha");
Statement st=con.createStatement();

if(username.equals("smitha")&&password.equals("smitha/123"))
{
	out.println("<p style=\"color:green\">sucesss</p>");
    response.sendRedirect("adminscreen.jsp");          
}
else
{
    out.println("<script type=\"text/JavaScript\">");
    out.println("alert(\"Insertion Failed\")");
    out.println("</script>");
    response.sendRedirect("admin.jsp");
}       
}	
catch(Exception e){
	System.out.println(e);
}
%>