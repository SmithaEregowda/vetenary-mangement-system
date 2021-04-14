<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>admin login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
       img{
                width:100px;
                height: 80px;
            }
        table {
            margin-left: 600px;
            margin-top: 200px;
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
        .fa.fa-user.icon{
        color:cornflowerblue;
        }
      .fa.fa-key{
      color:cornflowerblue;
      margin-right:5px;
      }
      #input{
       margin-left:8px;
       
      }
      #id01{
      color:cornflowerblue;
      font-size:20px;
      }
    </style>
</head>
<body>

    <h1>ADMIN</h1>
    <form action="adminAction.jsp" method="post">
        <table >
            <tr>
                <th colspan="2"><img src="adminicon.jpg">
                <br><span id="id01">LOGGIN</span>
                <hr></th>
                
            </tr>
            <tr >
                <td>
                    <i class="fa fa-user icon"></i>
                    <input onkeypress="validinput()" name="name" type="text" id="input" class="boxes" placeholder="username">
                    <br>
                    <span style="color: red;" id="inputerr"></span>
                   
                </td>
            </tr>
             
            <tr>
               
                <td>
                <i class="fa fa-key"></i>
                <input onkeypress="passwordValid()" name="password" type="password" class="boxes" id="password" placeholder="password">
                 <br>
                    <span style="color: red;" id="passerr"></span></td>

            </tr>
           <tr>
            <td colspan="2">
           
               <input type="submit" id="submit" value="LOGGIN">
            </td>
            </tr>
        </table>
      
    </form>
   
 
    <script>
        document.getElementById("submit").addEventListener("click", function (event) {
            var input = document.getElementById("input");
            var inputError = document.getElementById("inputerr");
            var password = document.getElementById("password");
            var passwordError = document.getElementById("passerr");
            if (input.value == "") {
                inputError.innerHTML = "*name required";
            }
            
            if (password.value =="") {
                passwordError.innerHTML = "*password required";
                event.preventDefault();
            }
          
        });
        function validinput(){
            var inputError = document.getElementById("inputerr");
               inputError.innerHTML=" ";
           }
           function passwordValid(){
            var passwordError = document.getElementById("passerr");
            passwordError.innerHTML=" ";
           }
        
    </script>
</body>


</html>