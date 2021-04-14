<!DOCTYPE html>
<html>

<head>
    <title>view account</title>
    <style>
        body{
            background-image: url(drop.jpg);
            background-size:100% 130%;
        }
        table{
            font-size: xx-large;
            margin-left: 600px;
            background-color: transparent;
           margin-top: 100px;
             box-shadow:5px 5px grey;
            border-spacing:0 25px; 
            position:realative;
        }
        table,td,th{
            
            border-collapse: collapse;
            padding: 20px;
           
        }
         img{
                width:150px;
                height: 150px;
                border-radius:50%;
                
            }
        button{
            background-color: black;
            color: white;
            margin-left: 40px;
            height: 30px;
            width: 90px;
        }
       
    </style>
</head>
<body>
<a href="adminscreen.jsp"><button><< BACK</button></a>
<form>
   
    <table>
        <th colspan="2" style="color:red;"><img src="adminicon.jpg"><br>SMITHA H E</th>

        <tr>
            <td>USERNAME:</td>
            <td><input type="text" id="name" value="smitha" readonly>
               
            </td>
        </tr>
        <tr>
            <td>LOGIN:</td>
            <td><input type="text" value="smitha/123" readonly>
            </td>
        </tr>
       </table>
</form>



</body>

</html>