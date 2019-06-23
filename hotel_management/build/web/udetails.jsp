<%-- 
    Document   : index
    Created on : Mar 21, 2019, 9:55:39 PM
    Author     : removevirus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
     alert("hai");
      document.form3.action = "view.jsp";
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

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: blueviolet;
  color: white;
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
                    class="intLog" height="100" align="center" colspan="2">
                   
                    <table id="customers" style="border: 1px solid black;">
                       
                       <tr>
                        <th>FNAME</th>
                        <th>LNAME</th>
                        <th>UNAME</th>
                        <th>EMAIL</th>
                        <th>PH</th>
                      </tr>
                        <%
                            try{
                            Connection conn = null;
                           String url = "jdbc:mysql://localhost/";
                String dbName = "hotel";
                String driver = "com.mysql.jdbc.Driver";
                String userName = "root";
                String dpassword= "root";
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url+dbName,userName,dpassword);
			Statement st =conn.createStatement();
                        //System.out.println("------inside try2"+user);
                        //ResultSet rs = st.executeQuery("select * from recommend where uname='"+user+"'");
                        
                      
          
                                    ResultSet rs = st.executeQuery("select * from user");
                                    while(rs.next())
                                    {
                        
                        %>
                        <tr>
                        <td><%=rs.getString("fname")%></td>
                         <td><%=rs.getString("lname")%></td>
                         <td><%=rs.getString("uname")%></td>
                          <td><%=rs.getString("email")%></td>
                           <td><%=rs.getString("ph")%></td>
                        </tr>
                        <%}}
                        catch(Exception e)
                        {
                            e.printStackTrace();
                        }
                        %>
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
        Analysis on Hotel Management  ||  Your Name </td>
    </tr>
        </tbody></table>
    </center>
    </div>
    

</form>
</body>
   
  


</html>

