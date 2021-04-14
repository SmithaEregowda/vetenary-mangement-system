<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
    <title>view account</title>
    <style>
         img{
                width:150px;
                height: 150px;
                border-radius:50%;
                
            }
             body{
            background-image: url(drop.jpg);
            background-size:100% 120%;
        }
        table{
            font-size: xx-large;
            margin-left: 600px;
            background-color: transparent;
           margin-top: 50px;
            box-shadow:  5px 5px black;
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
       
    </style>
</head>
<body>
<a href="userscreen.jsp"><button><< BACK</button></a>
 <%

try{
	
	HttpSession se=request.getSession();
    String username =(String)session.getAttribute("user");
    String password =(String)session.getAttribute("pass");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	 Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from userRegistration where username='"+username+"' and  password='"+password+"' ");
	while(rs.next()){
		%>s
<form>
  
	
    <table>
        <th colspan="2" style="color:red;"><img src="patient2.jpg"><br><%=rs.getString("petowner") %></th>
        <tr>
       
        
        </tr>
        

        <tr>
             <td>Name:</td>
            <td><input type="text"  value="<%=rs.getString("petowner") %>" readonly>
               
            </td>
        </tr>
        <tr>
            <td>Mobile No:</td>
            <td><input type="text" value="<%=rs.getString("mobileno") %>" readonly>
            </td>
        </tr>
         <tr>
          <td>pet_species:</td>
            <td><input type="text" value="<%=rs.getString("pet_species") %>" readonly>
            </td>
        </tr>
         <tr>
            <td>pet_gender</td>
            <td><input type="text" value="<%=rs.getString("pet_gender") %>" readonly>
            </td>
        </tr>
        <tr>
            <td>blood_group</td>
            <td><input type="text" value="<%=rs.getString("blood_group") %>" readonly>
            </td>
        </tr>
        <tr>
            <td>symptoms</td>
            <td><input type="text" value="<%=rs.getString("symptoms") %>" readonly>
            </td>
        </tr>
        <tr>
            <td>username</td>
            <td><input type="text" value="<%=rs.getString("username") %>" readonly>
            </td>
        </tr>
        <tr>
            <td>password</td>
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