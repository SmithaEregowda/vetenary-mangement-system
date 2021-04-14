<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
    <title>Admin Page</title>
    <style>
        h1 {
            font-size: 80px;
            background-color: cornflowerblue;
            margin-left: -10px;
            margin-top: -30px;
            margin-right: -10px;
            color:white;
            text-align:center;
        }
        }
       body {
            background-image: url(drop.jpg);
            background-size:100% 130%;
        }
        table{
            border-collapse: collapse;
        margin-left: 500px;
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
    <h1>FEEDBACK FROM  USERS</h1>

    <div class="container">
       <table border="1" >
           <tr>
            <th>satisfaction</th>
            <th>Using_in_future</th>
            <th>suggestions</th>      
            </tr>
 <% 
try{
Class.forName("com.mysql.jdbc.Driver");	
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha"); 
Statement st=con.createStatement();
String sql="select * from feedback";
ResultSet rs=st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("satisfaction") %></td>
<td><%=rs.getString("Using_in_future") %></td>
<td><%=rs.getString("suggestions") %></td>
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