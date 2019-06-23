<%-- 
    Document   : index
    Created on : Mar 21, 2019, 9:55:39 PM
    Author     : removevirus
--%>

<%@page import="java.util.Vector"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
    "http://www.w3.org/TR/html4/strict.dtd"
    >
<%  Vector s1=new Vector();
    Vector s2=new Vector();
    Vector s3=new Vector();
    Vector s4=new Vector();
    Vector s5=new Vector();
    
    Vector sc1=new Vector();
    Vector sc2=new Vector();
    Vector sc3=new Vector();
    Vector sc4=new Vector();
    Vector sc5=new Vector();
    String orinal=new String();
    String original = "";
    String status="";
    String output="";
%>
<html lang="en">
     
<head>    
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>process form</title>
		<meta name="description" content="Simple Multi-Item Slider: Category slider with CSS animations" />
		<meta name="keywords" content="jquery plugin, item slider, categories, apple slider, css animation" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/style.css" />
                          <script src="js/modernizr.custom.63321.js">         
                </script>
  
    <script type="text/javascript">
	window.history.forward();
	function noBack(){ window.history.forward(); }
</script>
<% String pdt = null; String ver = null;%>    
<script type="text/javascript">  
    
function postToController() {
    alert("a");
var fn  = document.form1.filename.value;


if(fn=="") {
    alert("Please Fill the informations");    
    }


       else{ 
        document.form1.action = "./storing";
        alert('Thanks for your information');
    }

}
function call()
{
    document.getElementById("upload").style.display = 'none';
    document.getElementById("analysis").style.display = 'inline';
}
function call1()
{
     document.getElementById("upload").style.display = 'none';
     document.getElementById("analysis").style.display = 'inline';
}
function call2()
{
     document.getElementById("upload").style.display = 'none';
     document.getElementById("analysis").style.display = 'none';
     document.getElementById("analysis1").style.display = 'inline';
}
function call3()
{
     document.getElementById("upload").style.display = 'none';
     document.getElementById("analysis").style.display = 'none';
     document.getElementById("analysis1").style.display = 'none';
     document.getElementById("analysis2").style.display = 'inline';
}
function call4()
{
     document.getElementById("upload").style.display = 'none';
     document.getElementById("analysis").style.display = 'none';
     document.getElementById("analysis1").style.display = 'none';
     document.getElementById("analysis2").style.display = 'none';
     document.getElementById("analysis3").style.display = 'inline';
}
function call6()
{
     document.getElementById("upload").style.display = 'none';
     document.getElementById("analysis").style.display = 'none';
     document.getElementById("analysis1").style.display = 'none';
     document.getElementById("analysis2").style.display = 'none';
      document.getElementById("analysis3").style.display = 'none';
     document.getElementById("analysis4").style.display = 'inline';
}
function pass()
{
   
 var area  = document.form1.role.value; 
 if(area=="") {
   alert("Please Fill the informations");    
    }
else{ 
     
        document.form1.action = "./choose";
        alert('Thanks for your information');
    }
}

    

</script>
</head>
<style type="text/css">
    #wrapper {
        width:450px;
        margin:0 auto;
        font-family:Verdana, sans-serif;
    }
    legend {
        color:#0481b1;
        font-size:16px;
        padding:0 10px;
        background:#fff;
        -moz-border-radius:4px;
        box-shadow: 0 1px 5px rgba(4, 129, 177, 0.5);
        padding:5px 10px;
        text-transform:uppercase;
        font-family:Helvetica, sans-serif;
        font-weight:bold;
    }
    fieldset {
        border-radius:4px;
        background: #fff; 
        background: -moz-linear-gradient(#fff, #f9fdff);
        background: -o-linear-gradient(#fff, #f9fdff);
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fff), to(#f9fdff)); 
        background: -webkit-linear-gradient(#fff, #f9fdff);
        padding:20px;
        border-color:rgba(4, 129, 177, 0.4);
    }
    input,
    textarea {
        color: #373737;
        background: #fff;
        border: 1px solid #CCCCCC;
        color: #aaa;
        font-size: 14px;
        line-height: 1.2em;
        margin-bottom:15px;

        -moz-border-radius:4px;
        -webkit-border-radius:4px;
        border-radius:4px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset, 0 1px 0 rgba(255, 255, 255, 0.2);
    }
    input[type="text"],    
    input[type="password"]{
        padding: 8px 6px;
        height: 22px;
        width:280px;
    }
    input[type="text"]:focus,
    input[type="password"]:focus {
        background:#f5fcfe;
        text-indent: 0;
        z-index: 1;
        color: #373737;
        -webkit-transition-duration: 400ms;
        -webkit-transition-property: width, background;
        -webkit-transition-timing-function: ease;
        -moz-transition-duration: 400ms;
        -moz-transition-property: width, background;
        -moz-transition-timing-function: ease;
        -o-transition-duration: 400ms;
        -o-transition-property: width, background;
        -o-transition-timing-function: ease;
        //expand attribute
        width: 350px;
        
        border-color:#ccc;
        box-shadow:0 0 5px rgba(4, 129, 177, 0.5);
        opacity:0.6;
    }
    input[type="submit"]{
        background: #222;
        border: none;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
        text-transform:uppercase;
        color: #eee;
        cursor: pointer;
        font-size: 15px;
        margin: 5px 0;
        padding: 5px 22px;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-border-radius:4px;
        -webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        -moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
    }
    textarea {
        padding:3px;
        width:96%;
        height:100px;
    }
    textarea:focus {
        background:#ebf8fd;
        text-indent: 0;
        z-index: 1;
        color: #373737;
        opacity:0.6;
        box-shadow:0 0 5px rgba(4, 129, 177, 0.5);
        border-color:#ccc;
    }
    .small {
        line-height:14px;
        font-size:12px;
        color:#999898;
        margin-bottom:3px;
    }
    
    .styled-select select {
        padding: 8px 6px;        
        width:280px;
   }
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
 <% 

 s1.removeAllElements();
 sc1.removeAllElements();
 if(session.getAttribute("sp")!=null) 
 s1=(Vector)session.getAttribute("sp"); 
 System.out.println("------station1------>"+s1);
 
 if(session.getAttribute("os")!=null) 
 orinal=(String)session.getAttribute("os"); 
 original =(String)session.getAttribute("os");
 System.out.println("------station1------>"+orinal);
 
 if(session.getAttribute("link")!=null) 
 status=(String)session.getAttribute("link"); 
 status=(String)session.getAttribute("link");
 System.out.println("------link------>"+status);
 
 if(session.getAttribute("pprocess")!=null) 
 s2=(Vector)session.getAttribute("pprocess"); 
 System.out.println("------station1------>"+s2);
 
 if(session.getAttribute("swords")!=null) 
 s3=(Vector)session.getAttribute("swords"); 
 System.out.println("------station1------>"+s3);
 
 if(session.getAttribute("sremove")!=null) 
 s4=(Vector)session.getAttribute("sremove"); 
 System.out.println("------station1------>"+s4);
 
 if(session.getAttribute("output")!=null) 
 output=(String)session.getAttribute("output"); 
 //original =(String)session.getAttribute("");
 System.out.println("------station1------>"+output);
 
 %>


    
    <center>
  <body style="background-image:url(images/background.jpg); background-attachment: fixed background-repeat; no-repeat;
  background-size: cover;">
    
    <form method="post" name="form1">
       
    <table class="tabular" width="80%">
    
    <tbody><tr>
    <td colspan="2">
         <img src="images/g.png" width="100%" height="90%" class="intabular">
         <div class="container">
			
			<div class="codrops-top clearfix">				
                                <a href="index.jsp"><strong>Login </strong></a>
                               
                                  <a href="#" onclick="call1()"><strong>urlcheck</strong></a>
                                <a href="#" onclick="call2()"><strong>preprocesssing</strong></a>                         
                                <a href="#" onclick="call3()"><strong>words splitting</strong></a>
                                <a href="#" onclick="call4()"><strong>stopwords removal</strong></a> 
                                  <a href="#" onclick="call6()"><strong>output</strong></a> 
                                <a href="index.jsp"><strong>logout</strong></a> 
                                
			</div>
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
                  align="center">-- Index Page --
                        
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
                       <div id="wrapper">
              <fieldset id="upload" style="display:inline;width:300">
                <legend>Sentence splitting</legend>
                 <div><br></div>
                 <div><p><b><font color="blue">Before sentence splitting</font></b></p></div>
                 <div><br></div>
                 <div>                     
                     <p>
                         <%=original%>
                     </p>
                     <br>
                 </div>
                 <div><p><b><font color="blue">after sentence splitting</font></b></p></div>
                 <div><br></div>
                <%for(int i=0;i<s1.size();i++) {
                    String x = s1.get(i).toString();
                    System.out.println("for : "+i+" "+s1.get(i)+"  "+orinal);
                %>
                 
                 <div><input type="text" readonly name="senten" style="color: black" value="<%=x%>"/></div>

                <%}%>
                <div><br></div>
                
                
             </fieldset> 
             <fieldset id="analysis" style="display:none;">
                <legend>url check</legend>
                 <div><br></div>
               <div>                     
                     <p>
                         <%=status%>
                     </p>
                     <br>
                 </div> 
                <div><br></div>                
                
               
             </fieldset>  
               <fieldset id="analysis1" style="display:none;">
                <legend>pre-processing</legend>
                 <div><br></div>
                 <div><p><b><font color="blue">Before pre-processing</font> </b></p></div>
                 <div><br></div>
               <%for(int i=0;i<s1.size();i++) {
                    String x = s1.get(i).toString();
                    System.out.println("for : "+i+" "+s1.get(i)+"  "+orinal);
                %>
                 
                 <div><input type="text" readonly name="senten" style="color: black" value="<%=x%>"/></div>

                <%}%>
                <div><br></div>
                <p><b><font color="blue">after pre-processing</font></b></p>
                <div><br></div>
                <div>
                    <%for(int i=0;i<s2.size();i++) {
                    String x1 = s2.get(i).toString();
                    System.out.println("for : "+i+" "+s2.get(i)+"  "+orinal);
                %>
                 
                 <div><input type="text" readonly name="senten" style="color: black" value="<%=x1%>"/></div>

                <%}%>
                </div>      
                <div><br></div>
                
               
                </fieldset>    
                <fieldset id="analysis2" style="display:none;">
                <legend>words-splitting</legend>
                 <div><br></div>
                 <div><p><b><font color="blue">before words-splitting</font> </b></p></div>
                 <div><br></div>  
                <div>
                    <%for(int i=0;i<s2.size();i++) {
                    String x1 = s2.get(i).toString();
                    System.out.println("for : "+i+" "+s2.get(i)+"  "+orinal);
                %>
                 
                 <div><input type="text" readonly name="senten" style="color: black" value="<%=x1%>"/></div>

                <%}%>
                </div>      
                <div><br></div>
                <div><p><b><font color="blue"><p>after words-splitting</font></b></p></div>
                 <div><br></div>  
                <div>
                    <%for(int i=0;i<s3.size();i++) {
                    String x3 = s3.get(i).toString();
                    System.out.println("for : "+i+" "+s3.get(i)+"  "+orinal);
                %>
                 
                 <div><input type="text" readonly name="senten" style="color: black" value="<%=x3%>"/></div>

                <%}%>
                </div> 
                </fieldset>    
    
                 <fieldset id="analysis3" style="display:none;">
                <legend>stopword remove</legend>
                 <div><br></div>
                 <div><p><b><font color="blue">before stopword removal </font></b></p></div>
                 <div><br></div>  
                
                <div>
                    <%for(int i=0;i<s3.size();i++) {
                    String x3 = s3.get(i).toString();
                    System.out.println("for : "+i+" "+s3.get(i)+"  "+orinal);
                %>
                 
                 <div><input type="text" readonly name="senten" style="color: black" value="<%=x3%>"/></div>

                <%}%>
                </div> 
                
                <div><p><b><font color="blue">after stopword removal </font></b></p></div>
                 <div><br></div>  
                
                <div>
                    <%for(int i=0;i<s4.size();i++) {
                        int count=1;
                    String x4 = "word"+String.valueOf(count)+":"+s4.get(i).toString();
                    count++;
                    System.out.println("for : "+i+" "+x4+"  "+orinal);
                %>
                 
                 <div><input type="text" readonly name="senten" style="color: black" value="<%=x4%>"/></div>

                <%}%>
                </div> 
                </fieldset>   
                
                
                <fieldset id="analysis4" style="display:none;">
                <legend>output</legend>
                 <div><br></div>
                <%
                     System.out.println("for : "+output);
                     String k1=".gif";
                     String k="images/"+output+k1;
                     System.out.println("for : "+k);
                %>
                 <img src=<%=k%> width="120" height="76" align="left">
                            <br>                            
                           
                </div> 
                            <div> <h1 style="color:red;"><%=output%><%="  command"%></h1></div>
                </fieldset>   
                
                
    
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
