<!DOCTYPE html>
<html>

    <head>
        <title>User registration </title>
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
        background-color:cornflowerblue;
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
        
        </style>

    </head>

    <body>
        <h1>USER REGISTRATION/LOGIN</h1>
        <form action="userregaction.jsp" method="post">
            <table>
                <tr>
                <th colspan="2">USER REGISTRATION FORM <hr></th>
                </tr>

                <tr>
                    <td>Pet Owner:</td>
                    <td><input type="text" id="name" name="name" onkeyup="nameValid()" class="boxes" placeholder="pet owner"><br>
                        <span style="color: red;" id="nameErr"></span>
                    </td>
                </tr>
                <tr>
                    <td>Mobile no:</td>
                    <td><input type="text" id="number" name="number" onkeyup="MobileValid()" 
                    maxlength="10" class="boxes" placeholder="mobile no"><br>
                        <span style="color: red;" id="numberErr"></span>
                    </td>
                </tr>
                <tr>
                    <td>Pet species:</td>
                    <td><input type="text" id="species" name="species" onkeyup="speciesValid()" class="boxes"
                     placeholder="species or animal name"><br>
                        <span style="color: red;" id="speciesErr"></span>
                    </td>
                </tr>

                <tr>
                    <td>Pet Gender:</td>
                    <td>
                        <input type="radio" name="gender" value="male" id="male" onchange="genderValid()" id="male">male
                        <input type="radio" name="gender" value="female" id="female" onchange="genderValid()" id="female">female<br>
                        <span style="color: red;" id="genderErr"></span>
                    </td>
                </tr>
                <tr>
                    <td>Blood Group:</td>
                    <td><input type="checkbox" name="checkbox" value="O+ve" onchange="checkboxValid()" id="c1">O+ve
                        <input type="checkbox" name="checkbox" value="A+ve" onchange="checkboxValid()" id="c2">A+ve
                        <input type="checkbox" name="checkbox" value="B+ve" onchange="checkboxValid()" id="c3">B+ve
                        <input type="checkbox" name="checkbox" value="Other" onchange="checkboxValid()" id="`c4">Other<br>
                        <span style="color: red;" id="checkboxErr"></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">animal/patient symptoms in words:<br>
                        <textarea name="input" id="symptoms" cols="45" rows="5" name="symptom" ></textarea>
                    </td>
                </tr>
                <tr>
                    <td>UserName:</td>
                    <td><input type="text" id="username" onkeyup="usernameValid()" name="username" class="boxes" placeholder="username"><br>
                        <span style="color: red;" id="usernameErr"></span>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" id="password" onkeyup="passwordValid()" name="password" class="boxes" placeholder="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="must contain atleat one
                        lowecase and uppercase letter and atleast 8 or more chracters"><br>
                        <span style="color: red;" id="passwordErr" ></span>
                    </td>
                </tr>
                <tr>
                    <td>ConfirmPassword:</td>
                    <td><input type="password" id="cnfmpassword" onkeyup="cnfmpasswordValid()" class="boxes" placeholder="confirm password"><br>
                        <span style="color: red;" id="cnfmpasswordErr"></span>
                    </td>
                </tr>

                <tr>
                    <td colspan="2"><input type="submit" value="REGISTER" id="submit"></td>
                </tr>
                <tr>
                <td colspan="2"> Already have <a href="userLogin.jsp">Login in?</a>
                </td>
                </tr>
            </table>
        </form>
        <br>
     
        
        <script>

           
            function MobileValid() {
                var mobileNumber = document.getElementById("number");
                mobileNumber.value = mobileNumber.value.replace(/[^0-9\.]/g, '');
                document.getElementById("numberErr").innerHTML = " ";
            }
            function genderValid(){
                 document.getElementById("genderErr").innerHTML=" ";
            }
            function checkboxValid(){
                document.getElementById("checkboxErr").innerHTML=" "; 
            }
            document.getElementById("submit").addEventListener("click", function (event) {
                var name = document.getElementById("name");
                var username = document.getElementById("username");
                var password = document.getElementById("password");
                if (name.value == "") {
                    document.getElementById("nameErr").innerHTML = "*required";
                    event.preventDefault();
                }
                var number = document.getElementById("number");
                if (number.value == "") {
                    document.getElementById("numberErr").innerHTML = "*required";
                    event.preventDefault();
                }
                var species = document.getElementById("species");
                if (species.value == "") {
                    document.getElementById("speciesErr").innerHTML = "*required";
                    event.preventDefault();
                }
                if(username.value==""){
                    document.getElementById("usernameErr").innerHTML = "*required";
                    event.preventDefault();
                }
                if(password.value==""){
                    document.getElementById("passwordErr").innerHTML = "*required";
                    event.preventDefault();
                }
                var confirmPassword=document.getElementById("cnfmpassword");
                if(confirmPassword.value==password.value){
                    document.getElementById("cnfmpasswordErr").innerHTML=" ";
                }
                else{
                    document.getElementById("cnfmpasswordErr").innerHTML="*confirm password correctly";
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
            });
            function nameValid() {
                document.getElementById("nameErr").innerHTML = "  ";
            }
            function speciesValid(){
                document.getElementById("speciesErr").innerHTML = "  "; 
            }
            function usernameValid(){
                document.getElementById("usernameErr").innerHTML = "  ";
            }
            function passwordValid(){
                document.getElementById("passwordErr").innerHTML = "  ";  
            }
            function cnfmpasswordValid(){
                document.getElementById("cnfmpasswordErr").innerHTML=" ";
            }
        </script>
    </body>
</htm>