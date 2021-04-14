<!DOCTYPE html>
<html>

<head>
    <title>User</title>
    <style>
        h1 {
            font-size: 80px;
            background-color: cornflowerblue;
            margin-left: -10px;
             margin-top: -20px;
              margin-right: -10px;
              color:white;
              text-align:center;
        }


        .container {
           margin-left:900px;

        }

        button {
            background-color: black;
            color: white;
            margin-top: 40px;
           width:300px;

        }

        button:hover {
            transform: scale(1.2);
        }

        body {
            background-image: url(petbgd.jpg);
            background-size:100% 110%;
        }

    </style>
</head>

<body>
    <h1>USER PORTAL</h1>

    <div class="container">
     <a href="userapp.jsp">  <button>CREATE APPOINTMENTS</button></a> <br>
        <a href="feedback.jsp"> <button>FEDDBACK</button></a>  <br>
      <a href="HomeservicesPage.html">  <button>HOME SERVICE</button></a> <br>
     <a href="labtest.jsp">   <button>LAB TESTS</button></a>  <br>
      <a href="myAccountuser.jsp">  <button>MY ACCOUNT</button></a><br>
      <a href="landingPage.html">  <button onclick="sucess()" >LOG OUT</button ></a> 

    </div>
    <script>
    function sucess(){
    	alert("do you want to exit");
    }
    
    </script>
    
</body>

</html>