<%@page import="java.sql.*" %>
 <%
           String satisfaction=request.getParameter("radio");
           String Using_in_future=request.getParameter("future");
           String suggestions=request.getParameter("input");
           try{
        	  Class.forName("com.mysql.jdbc.Driver");
        	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
        	  Statement st=con.createStatement();
        	 
        	  st.executeUpdate("insert into feedback values('"+satisfaction+"','"+Using_in_future+"','"+suggestions+"')");
        	 response.sendRedirect("suceess.html");
           }
           catch(Exception e){
        	   out.println(e);
           }
           %>