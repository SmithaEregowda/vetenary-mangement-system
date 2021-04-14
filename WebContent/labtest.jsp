<!DOCTYPE html>
<html>

<head>
    <title>lab test</title>
    <style>
        #logo {
            width: 80px;
            height: 80px;
            margin-top: 20px;
        }

        h1 {
            font-size: 80px;
            background-color: cornflowerblue;
            margin-left: -20px;
            text-align: center;
            margin-top: -20px;
            margin-right: -20px;
            color:white;
        }

        body {
             background-color:#5CDB95;
        }
        form{
            background-color: white;
            box-shadow: 3px 3px black;
            text-align: center;
            margin-left: 300px;
            margin-right: 300px;
        }
        #submit{
         background-color: cornflowerblue;
        }
    </style>
</head>

<body>
    <h1><img id="logo" src="labbtest.png"></img>
        APPOINTMENT FOR  LAB TEST
    </h1>
    <form action="labtestaction.jsp" method="post">
       <b> LAB TEST FORM</b><hr><br>
       Name:
<input type="text" name="name" placeholder="enter your name"><br><br>
Petname:
<input type="text" name="petname" placeholder="enter your pet name"><br><br>
Mobile-No:
<input type="text" name="mobileno" placeholder="mobile no"><br><br>
 <b>Select lab tests you need:</b>
 <input type="checkbox" name="labtest" value="blood test">Blood test
 <input type="checkbox" name="labtest" value="urine test">Urine test
 <input type="checkbox" name="labtest" value="general physician test">general physician test<br><br><br>
 <input type="checkbox" name="labtest" value="nephrology test">nephrology test
 <input type="checkbox" name="labtest" value="cardilogy test">cardilogy test
 <input type="checkbox" name="labtest" value="all test">all test
 <input type="checkbox" name="labtest" value="don't have idea ">don't have idea<br><br><br><br>
 <b>service in:</b>
 <input type="radio" name="serviceAt" value="home">At Home
 <input type="radio" name="serviceAt" value="lab">At Laboratory<br><br>
 <input type="submit" id="submit">
    </form>
    <script type="text/javascript">


    </script>
</body>

</html>