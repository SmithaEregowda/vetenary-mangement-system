<!DOCTYPE html>
<html>

    <head>
        <title>Doctor registration </title>
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

            #submit {
                margin-left: 100px;
            }

            table {
                margin-left: 300px;
            margin-top: 200px;
            background-color: white;
            height: 100px;
            padding:20px;
            box-shadow:5px 5px grey;
            border-spacing:0 25px; 
            
            }
      #submit{
        background-color: cornflowerblue;
        margin-top:20px;
        margin-left:85px;
        }
       
           
            a {
                color: red;
                text-align: center;
            }
            a:hover{
            color: green;
            }
            

            body{
        background-color:#5CDB95;
       
        }
        .boxes{
        width:200px;
        margin-top:10px;
         background: #f1f1f1;
        }
        #doc{
        text-color:cadetblue;
        }
        
        </style>

    </head>

    <body>
        <h1>DOCTOR REGISTRATION/LOGIN</h1>
        <form action="doctorreg action.jsp" method="post">
            <table>
                <tr><th colspan="2"><span id="doc">DOCTOR REGISTRATION FORM</span><hr></th></tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" id="name" name="name" class="boxes"  onkeyup="nameValid()" placeholder="Enter name"><br>
                        <span id="nameErr" style="color: red;"></span>
                    </td>
                </tr>
                <tr>
                    <td>Mobile no:</td>
                    <td><input type="text" id="number" name="mobileno"  class="boxes" onkeyup="MobileValid()" maxlength="10" placeholder="Enter mobile no"><br>
                        <span id="MobileNoErr" style="color: red;"></span></td>
                </tr>

                <tr>
                    <td>Gender:</td>
                    <td>
                        <input type="radio" name="gender"  value="male" id="male" onchange="genderValid()">male
                        <input type="radio" name="gender" value="female" id="female" onchange="genderValid()">female<br>
                        <span id="genderErr" style="color: red;"></span>
                    </td>
                </tr>

                <tr>
                    <td>specialization:</td>
                    <td><input type="checkbox" onchange="checkboxValid()" id="c1" name="specialization"
                            value="veterinary-technician">veterinary-technician
                        <input type="checkbox" name="specialization"  id="c2" onchange="checkboxValid()"
                            value="veterinary-pharmacologist">veterinary-pharmacologist
                        <input type="checkbox" name="specialization" id="c3" onchange="checkboxValid()"
                            value="veterinary-epidemiologist">veterinary-epidemiologist
                        <input type="checkbox" name="specialization" value="other" id="c4" onchange="checkboxValid()">other<br>
                        <span id="checkboxErr" style="color: red;"></span>
                    </td>
                </tr>
                <tr>
                    <td>UserName:</td>
                    <td><input type="text" id="username" name="username" placeholder="Enter username"  onkeyup="usernameValid()" class="boxes"><br>
                        <span id="UserNameErr" style="color: red;"></span>
                    </td>

                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" id="password" onkeyup="passwordValid()" class="boxes" placeholder="Enter password"
                     pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="must contain atleat one
                        lowecase and uppercase letter and atleast 8 or more chracters"><br>
                        <span id="passwordErr" style="color: red;"></span>
                    </td>
                </tr>
                <tr>
                    <td>ConfirmPassword:</td>
                    <td><input type="password" id="cnfmpassword" name="password" class="boxes" onkeyup="confirmPasswordValid()" placeholder="Enter confirmpassword"><br>
                        <span id="cnfmpasswordErr" style="color: red;"></span>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                    <input type="submit" id="submit" value="REGISTER">
                    </td>
                </tr>
                <tr>
                <td colspan="2">
                     Alerady have <a href="doctorLogin.jsp">Login in?</a>
                    </td>
                </tr>
                
            </table>
           
        </form>
        <br>
       
        <script>
            function MobileValid() {
                var mobileNumber = document.getElementById("number");
                mobileNumber.value = mobileNumber.value.replace(/[^0-9\.]/g, '');
                document.getElementById("MobileNoErr").innerHTML = " ";
            }
            function nameValid() {
                document.getElementById("nameErr").innerHTML = " ";
            }
            function genderValid() {
                document.getElementById("genderErr").innerHTML = " ";
            }
            function checkboxValid() {
                document.getElementById("checkboxErr").innerHTML = " ";
            }
            document.getElementById("submit").addEventListener("click", function (event) {
            	
                var name = document.getElementById("name");
                var mobileNumber = document.getElementById("number");
                if (name.value == "") {
                    document.getElementById("nameErr").innerHTML = "*name required";
                    event.preventDefault();
                }
                if (mobileNumber.value == "") {
                    document.getElementById("MobileNoErr").innerHTML = "*required";
                    event.preventDefault();
                }
                var found=false;
                var male=document.getElementById("male");
                var female=document.getElementById("female");
                if(male.checked){
                    found=true;
                }
                else if(female.checked){
                    found=true;
                }
                else{
                 document.getElementById("genderErr").innerHTML = "*required";
                 event.preventDefault();
                }
               var valid=false;
               if(document.getElementById("c1").checked){
               valid=true;
               }
             else  if(document.getElementById("c2").checked){
                valid=true;
               }
              else if(document.getElementById("c3").checked){
                valid=true;
               }
              else if(document.getElementById("c4").checked){
                valid=true;
               }
               else{
                document.getElementById("checkboxErr").innerHTML = "*required";
                event.preventDefault();
               }
                if (document.getElementById("username").value == "") {
                    document.getElementById("UserNameErr").innerHTML = "*required";
                    event.preventDefault();
                }
                var password = document.getElementById("password");
                if (password.value == "") {
                    document.getElementById("passwordErr").innerHTML = "*required";
                    event.preventDefault();
                }
                var confirmPassword = document.getElementById("cnfmpassword");
                if (password.value != confirmPassword.value) {
                    document.getElementById("cnfmpasswordErr").innerHTML = "please confirm your passwor correctly";
                    event.preventDefault();
                }
                else{
                    document.getElementById("cnfmpasswordErr").innerHTML = "  ";
                }
            });
            function usernameValid(){
                document.getElementById("UserNameErr").innerHTML = "  ";
            }
            function passwordValid(){
                document.getElementById("passwordErr").innerHTML = "  "; 
            }
            function confirmPasswordValid(){
                document.getElementById("cnfmpasswordErr").innerHTML = "  "; 
            }
  
        </script>
    </body>
</html>