<%-- 
    Document   : index
    Created on : Mar 21, 2019, 9:55:39 PM
    Author     : removevirus
--%>

<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="ChartDirector.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    
    Vector v=new Vector();
     Vector v1=new Vector();
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
      <link rel="stylesheet" href="style.css">
        <title>JSP Page</title>
    </head>
     <script type="text/javascript">
       
       
function k()
{
     alert("hai");
      document.form3.action = "sview.jsp";
      document.form3.submit();
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
                  align="center">-- back --
                        
                    </td>
             
        </tr>
         <tr>
                <td width="50%" 
                    style="background-image: url('Images/blurred.jpg')" 
                    class="intLog" height="100" align="center" colspan="2">
                   
                    <table class="style3">
                        <tr>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                       <tr>
                           
                                    
                                    
                               <%
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
                                        v.add(rs2.getString("hname"));
                                    }
                               
                               %>
                               
                               
                             
                             
                        </tr>
                        
                        <tr>
                            <td class="style4" align="left">
                                <asp:Label ID="Label2" runat="server" style="color: #FF0000; font-family: calibri"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td align="center">
                                <button style="vertical-align:middle" onclick="process3()"><span>VIEW_HOTEL_REVIEWS</span>
                            </td>
                        </tr>
                        
                        <%
                                      String chart1URL = "";
String chart2URL = "";
String imageMap1 = ""; 
String imageMap2 = ""; 

String xxx = "none";
String yyy = "none";
String zzz = "none";
String gs = "none";
String output="";
int k=0;
                                ResultSet rs11 = st.executeQuery("select * from tcounts");
                                    while(rs11.next())
                                    {
                                       k++; 
                                    }
                     
                        //original =(String)session.getAttribute("");
                        System.out.println("------station1------>"+output);
                        double[] cr1 = new double[k];
                         String[] labels = new String[k]; 
                         labels[0]="positive";
                         labels[1]="negative";
                         labels[2]="negative";
                         
                          for(int i=0;i<v.size();i++)
                          {
                              labels[i]=v.get(i).toString();
                          }
                             int count=0;
                         for(int i=0;i<v.size();i++)
                         {
                         ResultSet rs1 = st.executeQuery("select * from tcounts where hname='"+v.get(i).toString()+"'");
                                    while(rs1.next())
                                    {
                                      double t=rs1.getDouble("positive")+rs1.getDouble("negative")+rs1.getDouble("newtural");
                                      double t1=(rs1.getDouble("positive")/t)*100;
                                      cr1[count]=t1;
                                   
                                    count++;
                                    }
                         }  
                       
                         String name=new String();
                          System.out.println("labels: "+ labels.length+" "+labels);
                         System.out.println("values: "+ cr1.length);
           
                        XYChart c = new XYChart(400,350); //750, 600
                        c.setPlotArea(60, 60,300,200);
                        BarLayer layer=c.addBarLayer(Chart.Side,1);
                        layer.addDataSet(cr1,0x80ff80,"based on positive rating is calculated");
                       // c.addBarLayer(cr1);
                        c.xAxis().setLabels(labels);
                        c.xAxis().setLabelStep(0);
                        c.addTitle(name, "Times New Roman Bold Italic", 15).setBackground(0xccccff, 0x000000, Chart.glassEffect());
                        c.yAxis().setTitle("VALUES", "Arial Bold Italic", 12);
                        c.xAxis().setTitle("RANK OF HOTELS", "Arial Bold Italic", 12);

                        chart1URL = c.makeSession(request, "chart1");
                        //imageMap1 = c.getHTMLImageMap("", "","title='At {xLabel} Seconds, Rated as {value}'"); 
                        imageMap1 = c.getHTMLImageMap("", "", "title='Hour {xLabel}: Traffic {value} GBytes'");                                     
                    
                        
                      %>
                        
                        
                        
                        
                        <tr>
                            
                            <td>
                                
                                <div> <a href ="<%=response.encodeURL("getchart.jsp?" + chart1URL)%>" download>
                    <img src='<%=response.encodeURL("getchart.jsp?" + chart1URL)%>' usemap="#map1" border="0"> </img>   
                   <map name="map1"><%=imageMap1%></map>
    </a></div>
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
