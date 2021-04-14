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

        </style>
    </head>
    <body>
        <form action="feedbackaction.jsp" method="post">
        <h1>FEEDBACK FORM</h1>
           <table>
           <tr>
           <td>
                <b>Feedback Form</b> <hr></td>
                      </tr>
               <tr>
                   <td>overall, how satisfied were you with the pets care service?<br>
                  
                    <input type="radio" name="radio"  value="very good" onchange="peformance()">very good
                    <input type="radio" name="radio" value="good" onchange="peformance()">good
                    <input type="radio" name="radio" value="bad" onchange="peformance()">bad
                    <input type="radio" name="radio"value="very bad" onchange="peformance()">very bad
                    <span id="radioErr" style="color: red;"></span>
                    </td>
               </tr>
               <tr>
                   <td>are you going to use this service in future?<br>
                   <input type="radio" name="future" value="yes" onchange="future()" >yes
                <input type="radio" name="future" value="no" onchange="future()" >no
                 <span id="future" style="color: red;"></span>
            </td>
            
               </tr>
               <tr>
                <td >any suggestions?:<br>
                    <textarea name="input" id="symptoms" cols="45" rows="5"></textarea>
                </td>
                
               </tr>
                <tr>
                 <td colspan="2">
                    <input type="submit" id="submit" >
                </td>
               </tr>
               
           </table>
        </form>
        
             
    </body>

</html>