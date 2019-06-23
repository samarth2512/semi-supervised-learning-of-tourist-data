
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="ChartDirector.*" %>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Vector"%>
<%@page import="org.jfree.chart.*" %>
<%@page import="org.jfree.chart.entity.*" %>
<%@page import ="org.jfree.data.general.*"%>
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
    String name=new String();
 

%>

     
<head>    
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>tweet analysis</title>
		<meta name="description" content="Simple Multi-Item Slider: Category slider with CSS animations" />
		<meta name="keywords" content="jquery plugin, item slider, categories, apple slider, css animation" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/style.css" />
                          <script src="js/modernizr.custom.63321.js">         
                </script>
  <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <script type="text/javascript">
	window.history.forward();
	function noBack(){ window.history.forward(); }
    </script>
                
    <% String pdt = null; String ver = null;%>    
    <script type="text/javascript">  
    
function postToController() {
    
    var fn  = document.form1.filename.value;
    //alert(document.form1.filename.value);

    if(fn=="") {
        alert("Please Fill the informations");    
    }
    else{ 
        document.form1.action = "./upload";
        document.form1.submit();
      alert('Thanks for your information');
    }
}

function a(k1,k2,k3,k4,k5) {
    ///alert("hai");
   // alert(a);
	var chart = new CanvasJS.Chart("chartContainer",
	{
		theme: "theme2",
		title:{
			text: "Gaming Consoles Sold in 2012"
		},		
		data: [
		{       
			type: "pie",
			showInLegend: true,
			toolTipContent: "{y} - #percent %",
			yValueFormatString: "#,##0,,.## Million",
			legendText: "{indexLabel}",
			dataPoints: [
				
				{  y: k1, indexLabel: "demonization_tweets" },
				{  y: k2, indexLabel: "karnatka_tweets" },
				{  y: k3, indexLabel: "kaveri_tweets"},
				{  y: k4, indexLabel: "karnatakapolling_tweets" },
				{  y: k5, indexLabel: "netural(common)_tweets"},
			
			]
		}
		]
	});
	chart.render();
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
   table, th, td {
    border: 1px solid black;
}
</style>
 
<body bgcolor="black" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
    
    <%@ include file="header2.jsp" %>      
    <form name="form1" method="post">
        
		<tr>
                    <td><img src="images/so.jpg" width="690" height="600"/></td>
		</tr>

    
               
            </fieldset>     
        </tr>
        </table>
    
    
    
    </form>
        
        <script type="text/javascript">
function a(k1,k2,k3,k4,k5) {
    ///alert("hai");
    alert(k1+k2);
	var chart = new CanvasJS.Chart("chartContainer",
	{
		theme: "theme2",
		title:{
			text: "categorization of tweets"
		},		
		data: [
		{       
			type: "pie",
			showInLegend: true,
			
			legendText: "{indexLabel}",
			dataPoints: [
				
				{  y: k1, indexLabel: "demonization_tweets" },
				{  y: k2, indexLabel: "karnatka_tweets" },
				{  y: k3, indexLabel: "kaveri_tweets"},
				{  y: k4, indexLabel: "karnatakapolling_tweets" },
				{  y: k5, indexLabel: "netural(common)_tweets"},
			
			]
		}
		]
	});
	chart.render();
}
</script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script></head>

     <%
                     try{
                 int dcount=110;
                  int kavcount=10;
                   int kcount=10;
                    int kpcount=10;
                     int ccount=10;
			
                     
                 %>
                  
                 
                 
                 
                 
                 <div id="chartContainer" style="height: 300px; width: 100%; display:inline;"></div>
                 <input type="submit" value="Submit" onclick="a('<%= ccount%>','<%=kcount%>','<%=kavcount%>','<%=kpcount%>','<%=ccount%>')">
                 
                 
                 
                 
                 
                  <%
                             }
                  catch(Exception e)
                  {
                      e.printStackTrace();
                  }
%>

        

    </div>
</body>

