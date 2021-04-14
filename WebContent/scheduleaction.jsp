 <%@page import="java.sql.*" %>
  <%
    try{
    	String name=request.getParameter("name");
    	String date=request.getParameter("date");
    	String time=request.getParameter("timings");
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
    	String sql="insert into schedule values('"+name+"','"+date+"','"+time+"')";
    	Statement st=con.createStatement();
    	st.executeUpdate(sql);
    	String username =(String)session.getAttribute("username");
        response.sendRedirect("suceess.html");
    }catch(Exception e){
    	out.println("e");
    }
    %>