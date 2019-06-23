<%-- 
    Document   : hotel
    Created on : Mar 24, 2019, 12:42:08 PM
    Author     : removevirus
--%>

<%@page import="java.util.Vector"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<<%-- 
    Document   : index
    Created on : Mar 21, 2019, 9:55:39 PM
    Author     : removevirus
--%>
<%

 int count=0;
                       
                        
                        Vector v1=new Vector();
                         Vector v2=new Vector();
                         Vector v3=new Vector();
                         Vector v4=new Vector();
%>
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
      document.form3.action = "index.jsp";
      document.form3.submit();
}
function validation(a)
{
   var com= prompt("Please enter your comment==>"+a,"");
   document.form3.hname.value=a;
   document.form3.dis.value=com;
      document.form3.action = "./analysis";
      document.form3.submit(); 
       alert("hai");
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

      <table width="60%"  class="intLog">
        <tbody><tr>
            <td class="intLog"
                    style="background-image: url('Images/bg3.jpg'); color: #FFFFFF; background-color: #DADADA; width: 0.1%;" 
                    align="center">
                    <img src="images/back.png"  Width="40px" onclick="k()"/>
                    </td>
           
            
                    <td width="50%" class="intLog"
                   style="background-image: url('Images/bg3.jpg'); color: #FFFFFF; background-color: #006600; width: 25%;" 
                  align="center">-- hotel details --
                        
                    </td>
             
        </tr>
         <tr>
                <td width="10%" 
                    style="background-image: url('Images/blurred.jpg')" 
                    class="intLog"  height="100" align="left" colspan="2">
                   
                    <table width="100%">
                       
                       <tr>
                           <th></th>
                        <th></th>
                        
                        <th></th>
                        
                      </tr>
                        <%
                            try{
                                v2.removeAllElements();
                                v3.removeAllElements();
                                String name="";
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
                         ResultSet rs2 = st.executeQuery("select * from add_hotel");
                                    while(rs2.next())
                                    {
                                        if(!v1.contains(rs2.getString("hname")))
                                        {
                                        v1.add(rs2.getString("hname"));
                                        }
                                    }
                                    
                                     for(int i=0;i<v1.size();i++)
                                        {
                                           
                                       boolean m=true;
                                    ResultSet rs1 = st.executeQuery("select * from tcounts where hname='"+v1.get(i).toString()+"'");
                                    while(rs1.next())
                                    {
                                        int pcount=0;
                                        int ncount=0;
                                        int newcount=0;
                                             System.out.println("inside");
                                        String k=rs1.getString("hname");
                                          int tota=rs1.getInt("positive")+rs1.getInt("negative")+rs1.getInt("newtural");
                                         
                                             String t="Total comment:"+tota+"\n"+"positive values:"+rs1.getString("positive")+"\n"+"Negative values:"+rs1.getString("negative")+"\n"+"neutral values:"+rs1.getString("newtural")+"\n"; 
                                         // String t="Total comment:"+tota+"positive comment:"+rs1.getString("positive")+"_Negative:"+rs1.getString("negative")+"_neutral:"+rs1.getString("newtural"); 
                                          if(!v3.contains(v1.get(i).toString()))
                                          {
                                           v2.add(t);
                                           v3.add(v1.get(i).toString());
                                          System.out.println("t------>"+t);
                                       }
                                      m=false;    
                                    }
                                    if(true)
                                    {
                                        
                                    
                                    }
                                    }
                                    ResultSet rs = st.executeQuery("select * from add_hotel");
                                    while(rs.next())
                                    {
                        name="images//"+rs.getString("path").trim();
                        System.out.println(name);
                        %>
                        <tr>
                           <%for(int i=0;i<v3.size();i++){
                           if(v3.get(i).toString().equals(rs.getString("hname")))
                           {
                           %>
                           <td width="40%"> <img src=<%=name%> width="80%" height="60%"></td>
                            
                            <td width="20%"><%=rs.getString("hname")%></td>
                            <td width="20%"><%=rs.getString("addr")%></td>
                            <td width="40%" style="font-size:12px"><%=v2.get(i).toString()%></td>
                            
                            <td width="40%">
                                <button class="button" style="vertical-align:middle" onclick="validation('<%=rs.getString("hname")%>')"><span>comment</span>
                            </td>
                         
                        </tr>
                        <%}}%>
                        
                        <%if(!v3.contains(rs.getString("hname"))){
                               
                                  String t="Total comment:"+0+"\n"+"positive values:"+0+"\n"+"Negative values:"+0+"\n"+"neutral values:"+0+"\n"; 
                           %>
                        
                        <td width="40%"> <img src=<%=name%> width="80%" height="60%"></td>
                            
                            <td width="20%"><%=rs.getString("hname")%></td>
                            <td width="20%"><%=rs.getString("addr")%></td>
                            <td width="40%" style="font-size:12px"><%=t%></td>
                            
                            <td width="40%">
                                <button class="button" style="vertical-align:middle" onclick="validation('<%=rs.getString("hname")%>')"><span>comment</span>
                            </td>
                         
                           <%}}}
                        catch(Exception e)
                        {
                            e.printStackTrace();
                        }
                        %>
                        
                        <input type="hidden" name="hname">
                        <input type="hidden" name="dis">
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

