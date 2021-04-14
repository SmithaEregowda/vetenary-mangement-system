<%@page import="java.sql.*" %>
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

        a {
            background-color: black;
            color: white;
          margin:10px;

        }

        a:hover {
            transform: scale(1.2);
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
    <h1 >PATIENT DETAILS</h1>
   
      <div class="container">
       <table border="1" >
           <tr>
            <th>PETOWNER</th>
            <th>MOBILE-NO</th>
            <th>PET-SPECIES</th>
            <th>PET-GENDER</th>
            <th>BLOOD-GROUP</th>         
            <th>PET-SYMPTOMS</th>
            <th>USERNAME</th>
            <th>PASSWORD</th>
            
           </tr>
          <%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery("select * from userRegistration");
	 while(rs.next()){

    
%>
          <tr>
          <td><%=rs.getString("petowner") %></td>
           <td><%=rs.getString("mobileno") %></td>
           <td><%=rs.getString("pet_species") %></td>
           <td><%=rs.getString("pet_gender") %></td>
           <td><%=rs.getString("blood_group") %></td>
           <td><%=rs.getString("symptoms") %></td>
           <td><%=rs.getString("username") %></td>
           <td><%=rs.getString("password") %></td>
           
          </tr>
          <% 
          }
            con.close();
          }catch(Exception e){
    	out.println(e);
    }
    %>
    
         
       
       </table> 
    </div>
    <script>
    document.getElementById("dlt").addEventListener("click",function(){
    	alert("Permantly delete this user");
    	        });
    </script>
</body>

</html>

