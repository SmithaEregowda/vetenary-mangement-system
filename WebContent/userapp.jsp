<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
<title>user page</title>
    <style>
 h1 {
            background-color: cornflowerblue;
            text-align: center;
            font-size: 80px;
            margin-top:-10px;
            margin-left:-10px;
            margin-right:-10px;
            color:white;
        }      
        #form{
            margin-left: 350px;
            margin-top: 100px;
            background-color: white;
            height: 100px;
            padding:20px;
            box-shadow:5px 5px grey;
        }
        body{
        background-color:#5CDB95;
        }
          #submit{
        background-color: cornflowerblue;
        margin-top:20px;
        margin-left:85px;
        }
        .boxes{
        width:200px;
        margin-top:10px;
         background: #f1f1f1;
        }
        #id01{
         margin-left: 850px;
            margin-top: -300px;
       background-color:grey;
       box-shadow:5px 5px black;
       
        
        }
        
    </style>
</head>

<body>
<h1>APPOINTMENT FORM</h1>
    <form action="userappoinaction.jsp" method="post" name="form1">
        <table id="form">
        <tr>
                <td colspan="2"><b>APPOINTMENT FORM</b><hr></td>
            </tr>
            <tr> 
            
                <td>Name:</td>
                <td><input type="text" placeholder="Enter your name" class="boxes" name="name" id="name" onkeyup="nameValid()">
                    <span style="color: red;" id="nameErr"></span><br><br></td>

            </tr>
            <tr>
                <td>Mobile No:</td>
                <td><input type="text" placeholder="Enter your Mobile No" class="boxes" id="number" name="number"
                        onkeyup="MobileValid()" maxlength="10">
                    <span style="color: red;" id="numberErr"><br><br></span></td>

            </tr>
            <tr>
                <td>Email id</td>
                <td><input type="email" placeholder="Enter your Email" class="boxes" id="email" onkeyup="emailValid()" name="email">
                    <span style="color: red;" id="emailErr"></span><br><br>
                </td>
            </tr>
            
            <tr>
            <td>Pet Gender:</td>
            <td>
                <input type="radio" name="gender" id="male" onchange="genderValid()">male
                <input type="radio" name="gender" id="female" onchange="genderValid()">female
                <span style="color: red;" id="genderErr"></span><br><br>
            </td>
            </tr>
            <tr>
                <td>Blood Group:</td>
                <td><input type="checkbox" name="checkbox" value="O+ve" onchange="checkboxValid()">O+ve
                    <input type="checkbox" name="checkbox" value="A+ve" onchange="checkboxValid()">A+ve
                    <input type="checkbox" name="checkbox" value="B+ve" onchange="checkboxValid()">B+ve
                    <input type="checkbox" name="checkbox" value="Other" onchange="checkboxValid()">Other
                    <span style="color: red;" id="checkboxErr"></span><br><br>
                </td>
            </tr>
            <tr>
                <td colspan="2">animal/patient symptoms in words:<br>
                    <textarea name="input" id="symptoms" cols="45" rows="5" onkeyup="symptomsValid()"></textarea>
                    <span style="color: red;" id="sympErr" name="symptoms"></span><br><br>
                </td>
            </tr>

            <tr>
                <td>Select Doctor:</td>
                <td><input type="text" value="selectDoc"  id="selectDoc" name="slection"
                    onclick="document.getElementById('id01').style.display='block'">
                    <span style="color: red;" id="docErr"></span><br><br>
                </td>
            </tr>
            
            <tr>
                <td colspan="2"><input type="submit" value="REGISTER" id="submit"></td>
            </tr>
        </table>
    </form>
     <div id="id01" style="display: none;">
<table>
   <tr>
    <th>DOCTOR NAME</th>
    <th>AVAILABLE DATE</th>
    <th>AVAILABLE TIME</th>
    <th>SELECT</th>
   </tr>
   <%

try{
	
	HttpSession se=request.getSession();
    String username =(String)session.getAttribute("username");
    String password =(String)session.getAttribute("password");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	 Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from schedule ");
	while(rs.next()){
		%>
   <tr>
   <td><%=rs.getString("name") %></td>
    <td><%=rs.getString("date") %></td>
     <td><%=rs.getString("time") %></td>
     <td><button onclick="selectName(this)">Select</button></td>
   </tr>
    <%
}

}catch(Exception e){
	out.println(e);
}
%>
</table>
    </div>
    <script>
function selectName(td){
	selectrow=td.parentElement.parentElement;
	  document.getElementById("selectDoc").value=selectrow.cells[0].innerHTML;
}

        function MobileValid() {
            var mobileNumber = document.getElementById("number");
            mobileNumber.value = mobileNumber.value.replace(/[^0-9\.]/g, '');
            document.getElementById("numberErr").innerHTML = " ";
        }
        function genderValid() {
            document.getElementById("genderErr").innerHTML = " ";
        }
        function checkboxValid() {
            document.getElementById("checkboxErr").innerHTML = " ";
        }
        document.getElementById("submit").addEventListener("click", function (event) {
            var name = document.getElementById("name");
            if (name.value == "") {
                document.getElementById("nameErr").innerHTML = "*required";
            }
            var number = document.getElementById("number");
            if (number.value == "") {
                document.getElementById("numberErr").innerHTML = "*required";
            }
            var species = document.getElementById("species");
            var gender = document.getElementsByName("gender");
            var found = false;
            for (var i = 0; i < gender.length; i++) {
                if (gender[i].checked) {
                    found = true;
                    document.getElementById("checkboxErr").innerHTML = " ";
                    break;
                }
                else {
                    valid = false;
                    document.getElementById("genderErr").innerHTML = "*required";
                }
            }
            var checkbox = document.getElementsByName("checkbox");
            var valid = false;
            for (var i = 0; i < checkbox.length; i++) {
                if (checkbox[i].checked) {
                    valid = true;
                    document.getElementById("checkboxErr").innerHTML = " ";
                    break;
                }
                else {
                    valid = false;
                    document.getElementById("checkboxErr").innerHTML = "*required";
                }
            }
var symptoms=document.getElementById("symptoms");
var doctor=document.getElementById("doctor");
var Prefered=document.getElementById("Prefered");
var email=document.getElementById("email");
if (email.value == "") {
                document.getElementById("emailErr").innerHTML = "*required";
            }
if (symptoms.value == "") {
                document.getElementById("sympErr").innerHTML = "*required";
            }
            if (doctor.value == "") {
                document.getElementById("docErr").innerHTML = "*required";
            }
            if (Prefered.value == "") {
                document.getElementById("perErr").innerHTML = "*required";
            }
        });

function emailValid(){
    document.getElementById("emailErr").innerHTML = "  ";
}
function symptomsValid(){
    document.getElementById("sympErr").innerHTML = "  ";
}
function doctorValid(){
    document.getElementById("docErr").innerHTML = "  ";
}
function PreferedValid() {
            document.getElementById("perErr").innerHTML = "  ";
        }
        function nameValid() {
            document.getElementById("nameErr").innerHTML = "  ";
        }

    </script>
</body>

</html>