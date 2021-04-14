<!DOCTYPE html>
<html>

<head>
    <title>admin</title>
    <style>
        h1 {
            font-size: 80px;
            text-align:center;
          
              color:black;
              
        }
 img{
                width:100px;
                height: 100px;
                 margin-top: 100px;
                
            }

        .container {
            display: flex;
            justify-content: space-around;
            padding: 30px;

        }

        button {
            background-color: black;
            color: white;
          
            

        }

        button:hover {
            transform: scale(1.2);
        }

        body {
            background-image: url(drop.jpg);
            background-size:100% 200%;
        }
         #home{
         width:150px;
                height: 100px;
                margin-top: 100px;
                margin-left:10px;
        }
        #dg{
        margin-left:10px;
        }
        #lab{
        margin-left:20px;
        }
        #feed{
         margin-left:10px;
        }

    </style>
</head>

<body>
    <h1>ADMIN PORTAL<hr></h1>
    <div class="container">
            <img src="petbgd.jpg" id="pet">
            <img src="dg.jpg" id="dg">
            <img src="home.jpg" id="home">
             <img src="labtest1.jpg" id="lab">
            <img src="feedback.png" id="feed">
            <img src="myac.png" id="myac">
            
    </div>

    <div class="container">
        <a href="viewpatientadmin.jsp"><button>PATIENT DETAILS</button></a>
        <a href="viewdoctoradmin.jsp"><button>DOCTOR DETAILS</button></a>
        <a href="homeservicesadmin.jsp"><button>HOMESERVICES DETAILS</button></a>
          <a href="labtestadmin.jsp"><button>LABTEST DETAILS</button></a>
        <a href="feedbackAdmin.jsp"><button>FEEDBACKS</button></a>
       <a href="myaccountAdmin.jsp"><button>MY ACCOUNT</button></a>
       
    </div>
</body>

</html>