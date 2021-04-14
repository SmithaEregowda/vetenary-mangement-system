
<!DOCTYPE html>
<html>

<head>
    <title>schedule</title>
    <style>
        h1 {
            font-size: 80px;
            background-color: cornflowerblue;
            margin-left: -10px;
            margin-top: -20px;
            text-align: center;
             margin-right: -10px;
            color:white;
        }


        body {
             background-color:#5CDB95;
        }


        div {
            background-color: white;
            box-shadow: 1px 1px;
            text-align: center;
            margin-top: 200px;
            margin-left: 400px;
            margin-right: 400px;
            height: 300px;
        }
        #submit{
            background-color: cornflowerblue;
        }
        span{
            font-size: 20px;
        }
    </style>
</head>

<body>
    <h1>SHEDULE YOUR APPOINTMENTS</h1>
    <div>
        <form action="scheduleaction.jsp" method="post">
           <span> SHEDULE &nbsp;&nbsp;&nbsp;&nbsp; FORM</span><hr>
           <br><br>
           Name:<input type="text" name="name" placeholder="Enter your name please" onkeyup="namefun()" id="name">
           <span style="color: red;" id="nameErr"></span>
            <br><br>
            Date:<input type="datetime" name="date" placeholder="dd/mm/yyyy" onkeyup="datefun()" id="date">
            <span style="color: red;" id="dateErr"></span>
            <br><br><br><br>
            Available timings:
            <select name="timings" name="timings">
                <option value="6:00AM-7:00AM">6:00AM-7:00AM</option>
                <option value="7:00AM-8:00AM">7:00AM-8:00AM</option>
                <option value="8:00AM-9:00AM">8:00AM-9:00AM</option>
                <option value="9:00AM-10:00AM">9:00AM-10:00AM</option>
                <option value="10:00AM-11:00AM">10:00AM-11:00AM</option>
                <option value="11:00AM-12:00PM">11:00AM-12:00PM</option>
                <option value="12:00PM-1:00PM">12:00PM-1:00PM</option>
                <option value="1:00PM-2:00PM">1:00PM-2:00PM</option>
                <option value="2:00PM-3:00PM">2:00PM-3:00PM</option>
                <option value="3:00PM-4:00PM">3:00PM-4:00PM</option>
                <option value="4:00PM-5:00PM">4:00PM-5:00PM</option>
                <option value="5:00PM-6:00PM">5:00PM-6:00PM</option>
                <option value="6:00PM-7:00PM">6:00PM-7:00PM</option>
                <option value="7:00PM-8:00PM">7:00PM-8:00PM</option>
                <option value="8:00PM-9:00PM">8:00PM-9:00PM</option>
                <option value="9:00PM-10:00PM">9:00PM-10:00PM</option>
                <option value="10:00PM-11:00PM">10:00PM-11:00PM</option>
            </select><br><br><br><br>
            <input type="submit" id="submit">
        </form>
    </div>
  <script>
function datefun(){
    document.getElementById("dateErr").innerHTML=" "; 
}
function namefun() {
    document.getElementById("nameErr").innerHTML=" "; 
}
document.getElementById("submit").addEventListener("click",function(event){
var name=document.getElementById("name");
var date=document.getElementById("date");
if(name.value==""){
   document.getElementById("nameErr").innerHTML="*required";
   event.preventDefault();
}else{
    document.getElementById("nameErr").innerHTML=" "; 
   
}
if(date.value==""){
   document.getElementById("dateErr").innerHTML="*required";
   event.preventDefault();
}else{
    document.getElementById("dateErr").innerHTML=" "; 
}
});

</script>
</body>


</html>

