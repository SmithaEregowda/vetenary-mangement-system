<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
    <title>admin</title>
    <style>
         h1 {
            font-size: 80px;
            background-color: cornflowerblue;
            margin-left: -10px;
            margin-right:-50px;
             margin-top:-15px;
            text-align:center;
            color:white;
    }
    body {
            background-image: url(docscreen2.jpg);
            background-size:100% 130%;
        }
        table{
            border-collapse: collapse;
        margin-left: 400px;
        margin-top: 100px;
        
        }
        th{
        background-color: green;
        padding: 10px;
        }
        tr:nth-child(even){
            background-color:lavender;
        }


    </style>
</head>

<body>
    <h1>DOCTOR DETAILS</h1>

    <div class="container">
       <table border="1" >
           <tr>
            <th>NAME</th>
            <th>MOBILE-NO</th>
            <th>GENDER</th>
            <th>SPECIALISATION</th>
            <th>USERNAME</th>
            <th>PASSWORD</th>          
            </tr>
 <% 
try{
Class.forName("com.mysql.jdbc.Driver");	
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
Statement st=con.createStatement();
String sql="select * from doctorregistration";
ResultSet rs=st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("mobileno") %></td>
<td><%=rs.getString("gender") %></td>
<td><%=rs.getString("specialization") %></td>
<td><%=rs.getString("username") %></td>
<td><%=rs.getString("password") %></td>
</tr>
<%
}
con.close();
st.close();
rs.close();
}catch(Exception e){
	out.println(e);
}
%>
       </table> 
    </div>
</body>

</html>