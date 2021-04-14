<!DOCTYPE html>
<html>

<head>
    <title>book services</title>
    <style>
        button {
            border-color: blue;
            background-color: white;
        }

      
        div {
            
        }
        .information{
            background-color: white;
            box-shadow: 1px 1px;
           text-align: center;
           display: flex;
            padding: 10px;
            flex-direction: row;
            justify-content: space-around;
            margin-top: 100px;
            margin-left: 100px;
            margin-right: 1000px;
        }
        .forms{
            background-color: transparent;
            box-shadow: 1px 1px;
           text-align: center;
           margin-top:-500px;
            margin-left: 800px;
            margin-right: 300px;
            background-color: white;
            box-shadow: 1px 1px;
            height: 400px;
        }
        .input{
           border-left: none;
           border-right: none;
           border-top: none;
        width: 300px;
        }
       
        body {
            background-color: gainsboro;
        }
    </style>
</head>

<body>
    <div class="information" style="display:block;"
        >
        <form >
            <b>*Person Details</b><br><br><br>
            <button onclick="document.getElementById('personalform')
            .style.display='block'" type="button">"+ add your information"</button>
        </form>
    </div>
    <div class="information" style="display:block;" >
        <form>
            <b>*Pet Details</b><br><br><br>
            <button type="button" onclick="document.getElementById('petform')
            .style.display='block'" >+ add pet information</button>
        </form>
    </div>
    <div class="information" style="display:block;">
        <form >
            <b>*Booking Details</b><br><br><br>
            <button type="button"  onclick="document.getElementById('bookingform')
            .style.display='block'" >+booking details</button>
        </form>
    </div>
  
    <div id="personalform" class="forms" style="display: none;" >
       <form action="homeserviceaction.jsp" method="post" >
        <br>
           PERSONAL DETAILS<hr>
           <br><br>
           <i></i>
        <input type="text" class="input" name="ownername" placeholder="Enter your name"><br><br>
        <i></i>
        <input type="text" class="input"  placeholder="Enter your mobile no" name="mobileno"><br><br><br>
        <i></i>
        <input type="text"   class="input" style="height: 80px; width: 300px;" 
        placeholder="Enter your Full Address" name="address"><br><br><br>
        
         <input type="submit" style="background-color: green;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input id="cancel" type="button" value="cancel" 
         onclick="document.getElementById('personalform')
         .style.display='none'"  style="background-color: red;" > 
        

       </form>
    </div>
    <div id="petform"  class="forms" style="display: none;" >
        <form  action="petdetailsaction.jsp" method="post">
         <br>
           PET  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   DETAILS<hr>
            <br><br>
            <i></i>
         <input type="text" class="input" name="petname" placeholder="Enter your pet name"><br><br>
         <i></i>
         <input type="text" class="input" name="petsp" placeholder="Enter your pet species"><br><br><br>
         <i></i>
         <input type="text" class="input" name="petbloodgrp" placeholder="Enter your pet blood group"><br><br><br>
         
          <input type="submit" style="background-color: green;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input id="cancel" type="button" value="cancel" 
          onclick="document.getElementById('petform')
          .style.display='none'"  style="background-color: red;" > 
         
 
        </form>
     </div>
     <div id="bookingform"  class="forms" style="display: none;" >
        <form action="bookingdetails.jsp" method="post">
         <br>
          BOOKING DETAILS<hr>
            <br><br>
            <i></i>
         <input type="date" class="input" placeholder="Packing start date" name="start"><br><br><br><br><br>
         <i></i>
         <input type="date" class="input"  placeholder="Packing last date" name="end"><br><br><br><br><br><br>
        
          <input type="submit" style="background-color: green;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input id="cancel" type="button" value="cancel" 
          onclick="document.getElementById('bookingform')
          .style.display='none'"  style="background-color: red;" > 
         
 
        </form>
     </div>
 

    <script type="text/javascript">

    </script>
</body>

</html>