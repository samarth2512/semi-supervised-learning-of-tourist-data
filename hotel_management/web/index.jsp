<%-- 
    Document   : index
    Created on : Mar 21, 2019, 9:55:39 PM
    Author     : removevirus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
      <link rel="stylesheet" href="style.css">
        <title>JSP Page</title>
    </head>
     <script type="text/javascript">
         function change()
          {
               document.form1.action = "adminlogin.jsp";
          }
         function change1()
         {
              document.form1.action = "userlogin.jsp";
         }
         
          </script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 125px;
            width: 33%;
        }
        .auto-style3 {
            height: 25px;
            width: 33%;
        }
        .tabular {
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
}
.intabular {
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    background-color:background;
}
.auto-style3 {
    height: 25px;
    width: 33%;
}
    </style>





<div>
    <center>
 <body style="background-image:url(images/background.jpg); background-attachment: fixed background-repeat; no-repeat;
  background-size: cover;">
    
    <form method="post" name="form1">
    <table class="tabular" width="80%">
    
    <tbody><tr>
    <td colspan="2">
        <img src="images/g.png" width="100%" height="90%" class="intabular">
    </td>
    </tr>
    
    <tr>
    <td colspan="2">
    
    </td>
    </tr>
     <tr>
    <td colspan="2">
    
    </td>
    </tr>
    <tr>
    <td colspan="2" class="intabular"> <center>
        <br>
        
    <br>
    <br>

    <table style="border: 1px solid;background-color:#FC9CF9" width="80%">
        <tbody><tr>
            <td height="250" align="center" class="auto-style2">
                <input type="image"  src="images/admin_1.jpg" style="width:170px;" onclick="change()"> 
            </td>
           
            
            <td width="33.35%" align="center">
                <input type="image" src="images/user_1.png"  style="width:180px;" onclick="change1()">
            </td>
             
        </tr>
        <tr>
            
            <td height="250" align="center" class="auto-style3"><b>admin</b></td>
            <td width="33.35%" align="center"><b>user</b></td>
        </tr>
       
    </tbody></table>
    <br>
    <br>

        <br>
        </center>
        </td>
    </tr>      
    <tr>
    <td style="background-color: #333333; color: #e4c4ab;" align="right" class="intabular">
        Analysis on Hotel Management ||  Your Name </td>
    </tr>
        </tbody></table>
    </center>
    </div>
    
    



</form>
</body>
   
  


</html>
