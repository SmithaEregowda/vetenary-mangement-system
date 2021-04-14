<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
    <title>view account</title>
    <style>
        body{
            background-image: url(drop.jpg);
            background-size:100% 130%;
        }
        table{
            font-size: xx-large;
            margin-left: 600px;
            background-color: transparent;
           margin-top: 50px;
            
            position:realative;
        }
        table,td,th{
           
            border-collapse: collapse;
            padding: 20px;
           
        }
        button{
            background-color: black;
            color: white;
            margin-left: 40px;
            height: 30px;
            width: 90px;
        }
        img{
                width:150px;
                height: 150px;
                border-radius:50%;
                
            }
       
    </style>
</head>
<body>
<%

try{
	
	HttpSession se=request.getSession();
    String username =(String)session.getAttribute("username");
    String password =(String)session.getAttribute("password");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	 Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from doctorregistration where username='"+username+"' and  password='"+password+"' ");
	while(rs.next()){
		%>
<a href="doctorscreen.jsp"><button><< BACK</button></a>
<form>
  
	
    <table>
        <th colspan="2" style="color:red;"><img src="doclogo2.jpg"><br><%=rs.getString("name") %></th>
        <tr>
       
        
        </tr>
        
 
        <tr>
             <td>NAME:</td>
            <td><input type="text"  value="<%=rs.getString("name") %>" readonly>
               
            </td>
        </tr>
        <tr>
            <td>MOBILE-NO:</td>
            <td><input type="text" value="<%=rs.getString("mobileno") %>" readonly>
            </td>
        </tr>
         <tr>
          <td>GENDER:</td>
            <td><input type="text" value="<%=rs.getString("gender") %>" readonly>
            </td>
        </tr>
         <tr>
            <td>SPECIALIZATION</td>
            <td><input type="text" value="<%=rs.getString("specialization") %>" readonly>
            </td>
        </tr>
        <tr>
            <td>USERNAME</td>
            <td><input type="text" value="<%=rs.getString("username") %>" readonly>
            </td>
        </tr>
        <tr>
            <td>PASSWORD</td>
            <td><input type="text" value="<%=rs.getString("password") %>" readonly>
            </td>
        </tr>
        <%
}
con.close();
s.close();
rs.close();
}catch(Exception e){
	out.println(e);
}
%>
       </table>
       
</form>



</body>

</html>