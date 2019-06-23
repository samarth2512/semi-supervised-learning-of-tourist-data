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
       
       
function k()
{
     alert("Done");
      document.form3.action = "index.jsp";
      document.form3.submit();
}
function process()
{
      document.form3.action = "udetails.jsp";
      document.form3.submit();
}

function process1()
{
      document.form3.action = "add_hotels.jsp";
      document.form3.submit();
}
function process2()
{
      document.form3.action = "viewhotels.jsp";
      document.form3.submit();
}
function process3()
{
      document.form3.action = "sview.jsp";
      document.form3.submit();
}
    function validation()
          {
              
               var username = document.form3.uname.value;
               var password = document.form3.pass.value;
               if(username=="" || password=="") {
                       alert("Please Fill the informations");    
               }
               else{
               if(username=="admin" && password=="admin")
               {
               document.form3.action = "view.jsp";
               document.form3.submit();
                }
                else{
                    alert("invalid username and password");    
                }
           }
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
        .auto-style4{
               font-size: Large;
               height: 30px;
              width: 230px;
        }
        .tabular {
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
}
.intabular {
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    background-color: bisque;
}
.style3 {
    height: 25px;
    width: 33%;
}
.input {
    -webkit-appearance: textfield;
    background-color: white;
    -webkit-rtl-ordering: logical;
    cursor: text;
    padding: 1px;
    border-width: 2px;
    border-style: inset;
    border-color: initial;
    border-image: initial;
}

.input, textarea, select, button {
    text-rendering: auto;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    margin: 0em;
    font: 400 13.3333px Arial;
}

.input, textarea, select, button, meter, progress {
    -webkit-writing-mode: horizontal-tb !important;
}
.intLog {
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
}
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 400px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
    </style>

 <style type="text/css">
        .style3
        {
            width: 15%;
        }
         .intLog
        {
    	    -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
        }
    </style>



<div>
    <center>
  <body style="background-image:url(images/background.jpg); background-attachment: fixed background-repeat; no-repeat;
  background-size: cover;">
    
    <form method="post" name="form3">
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

      <table width="60%" style="border: 1px solid #333333; background-image: url('../Images/bg1.jpg'); " class="intLog">
        <tbody><tr>
            <td class="intLog"
                    style="background-image: url('Images/bg3.jpg'); color: #FFFFFF; background-color: #DADADA; width: 0.1%;" 
                    align="center">
                    <img src="images/back.png"  Width="40px" onclick="k()"/>
                    </td>
           
            
                    <td width="50%" class="intLog"
                   style="background-image: url('Images/bg3.jpg'); color: #FFFFFF; background-color: #006600; width: 25%;" 
                  align="center">-- Admin Login --
                        
                    </td>
             
        </tr>
         <tr>
                <td width="50%" 
                    style="background-image: url('Images/blurred.jpg')" 
                    class="intLog" height="300" align="center" colspan="2">
                   
                    <table class="style3">
                        <tr>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                       <tr>
                            <td class="style4" align="center">
                                <button class="button" style="vertical-align:middle" onclick="process()"><span>USER_DETAILS</span>
                                   
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="style4" align="left">
                                <asp:Label ID="Label2" runat="server" style="color: #FF0000; font-family: calibri"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        
                        <tr>
                            <td align="center">
                                <button class="button" style="vertical-align:middle" onclick="process1()"><span>ADD_HOTELS</span>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <Label ID="Label3" runat="server" style="color: #FF0000; font-family: calibri"/>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <button class="button" style="vertical-align:middle" onclick="process2()"><span>VIEW_HOTELS</span>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <Label ID="Label3" runat="server" style="color: #FF0000; font-family: calibri"/>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <button class="button" style="vertical-align:middle" onclick="process3()"><span>VIEW_HOTEL_REVIEWS</span>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
         </table>
    <br />
    
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
