<!DOCTYPE html>
<html>

<head>
    <title>doctor login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
 h1 {
            background-color:cornflowerblue;
            text-align: center;
            font-size: 80px;
            margin-top:-10px;
            margin-left:-10px;
            margin-right:-10px;
            color:white;
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
        }
         a{
                color: red;
                text-align: center;
            }
            a:hover{
            color: green;
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
        color:	cornflowerblue;
        }
    
      .fa.fa-key{
      color:cornflowerblue;
      margin-right:5px;
      }
      #input{
       margin-left:8px;
      }
      #registernum{
       margin-left:10px;
      }
    </style>

<body>
    <h1>DOCTOR LOGIN</h1>
    <form action="doctorloginaction.jsp"  method="post">
        <table >
            <tr>
                <th colspan="2">LOGGIN<hr></th>
            </tr>
            <tr>
                <td>
                 <i class="fa fa-user icon"></i>
                    <input onkeypress="validinput()" name="username" type="text" id="input" class="boxes" placeholder="username"><br>
                    <span style="color: red;" id="inputerr"></span>
                </td>
            </tr>
            <tr>
               
                <td>
                 <i class="fa fa-key"></i>
                <input onkeypress="passwordValid()" name="password" type="password" id="password" class="boxes" placeholder="password"><br>
                    <span style="color: red;" id="passerr"></span></td>
            </tr>
           
            <tr>
             <td colspan="2">
                <input type="submit" id="submit" value="LOGIN">
            </td>
            </tr>
            <tr>
             <td colspan="2">
                don't have account <a href="DocRegistration.jsp" >Register</a>
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
            var registernum=document.getElementById("registernum");
          if(registernum.value==""){
              document.getElementById("registernumerr").innerHTML="*required";
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
           function registerValid(){
          var registernum=document.getElementById("registernum");
         
              document.getElementById("registernumerr").innerHTML=" ";
        
        }
    </script>
</body>
</head>

</html>