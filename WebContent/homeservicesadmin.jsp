<%@page import="java.sql.*"%>
<html>
<head>
<title>admin page</title>
<style type="text/css">
 h1 {
            font-size: 80px;
            background-color: cornflowerblue;
            margin-left: -10px;
             margin-top: -10px;
             margin-right: -10px;
            text-align:center;
            color:white;
        }
        body {
            background-image: url(drop.jpg);
            background-size:100% 130%;
        }
        table{
            border-collapse: collapse;
        margin-left: 160px;
        margin-top: 200px;
        
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
<h1>HOME SERVICES DETAILS</h1>
<table border="1">
<tr>
<th>PET OWNER</th>
<th>PET NAME</th>
<th>MOBILE NO</th>
<th>PET NAME</th>
<th>PET SPECIES</th>
<th>PET BLOODGROUP</th>
<th>PACKAGE START DATE</th>
<th>PACKAGE END DATE</th>
</tr>
<%

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	Statement st=con.createStatement();
	String sql=" select * from persondetails,petdetails,bookingdetails;";
	ResultSet rs=st.executeQuery(sql);
	while(rs.next()){
%>
<tr>
<td><%=rs.getString("ownername") %></td>
<td><%=rs.getString("mobileno") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("petname") %></td>
<td><%=rs.getString("petsp") %></td>
<td><%=rs.getString("petbloodgrp") %></td>
<td><%=rs.getString("start") %></td>
<td><%=rs.getString("end") %></td>
</tr>
<%
	}
	con.close();
	st.close();
	rs.close();
}
catch(Exception e){
	out.println(e);
}

%>
</table>
</body>
</html>