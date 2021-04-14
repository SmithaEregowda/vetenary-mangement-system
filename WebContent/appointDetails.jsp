<%@page import="java.sql.*" %>
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
             color:white;
             text-align:center;
        }

        #logo {
            width: 80px;
            height: 80px;
            margin-top: 10px;
        }
        body {
            background-image: url(docscreen.jpg);
             background-size:120% 130%;
        }
        table{
            border-collapse: collapse;
        margin-left: 300px;
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
<h1>APPOINTMENTS DETAILS</h1>
<table border="1">
<tr>
<th>USER NAME</th>
<th>MOBILE NUMBER</th>
<th>EMAIL ID</th>
<th>PET GENDER</th>
<th>PET BLOOD GROUP</th>
<th>SYMPTOMS</th>

</tr>
<% 


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	Statement st=con.createStatement();
	HttpSession se=request.getSession();
    String username =(String)session.getAttribute("username");
    String sql="select  * from appointment where slection='"+username+"'";
ResultSet rs=st.executeQuery(sql);
	
	while(rs.next()){
%>
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("mobile_no") %></td>
<td><%=rs.getString("email_id") %></td>
<td><%=rs.getString("pet_gender") %></td>
<td><%=rs.getString("blood_group") %></td>
<td><%=rs.getString("symptoms") %></td>

</tr>
        <%
}
con.close();
st.close();
rs.close();
}catch(Exception e){
	System.out.println(e);
}
%>