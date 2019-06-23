package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import ChartDirector.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("      <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("     <script type=\"text/javascript\">\n");
      out.write("       \n");
      out.write("       \n");
      out.write("function k()\n");
      out.write("{\n");
      out.write("     alert(\"hai\");\n");
      out.write("      document.form3.action = \"ograph.jsp\";\n");
      out.write("      document.form3.submit();\n");
      out.write("}\n");
      out.write("\n");
      out.write("function process3()\n");
      out.write("{\n");
      out.write("      document.form3.action = \"./setname\";\n");
      out.write("      document.form3.submit();\n");
      out.write("}\n");
      out.write("    function validation()\n");
      out.write("          {\n");
      out.write("              \n");
      out.write("               var username = document.form3.uname.value;\n");
      out.write("               var password = document.form3.pass.value;\n");
      out.write("               if(username==\"\" || password==\"\") {\n");
      out.write("                       alert(\"Please Fill the informations\");    \n");
      out.write("               }\n");
      out.write("               else{\n");
      out.write("               if(username==\"admin\" && password==\"admin\")\n");
      out.write("               {\n");
      out.write("               document.form3.action = \"view.jsp\";\n");
      out.write("               document.form3.submit();\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                    alert(\"invalid username and password\");    \n");
      out.write("                }\n");
      out.write("           }\n");
      out.write("          }\n");
      out.write("       \n");
      out.write("         \n");
      out.write("          </script>\n");
      out.write("\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("        .auto-style1 {\n");
      out.write("            width: 100%;\n");
      out.write("        }\n");
      out.write("        .auto-style2 {\n");
      out.write("            height: 125px;\n");
      out.write("            width: 33%;\n");
      out.write("        }\n");
      out.write("        .auto-style3 {\n");
      out.write("            height: 25px;\n");
      out.write("            width: 33%;\n");
      out.write("        }\n");
      out.write("        .auto-style4{\n");
      out.write("               font-size: Large;\n");
      out.write("               height: 30px;\n");
      out.write("              width: 230px;\n");
      out.write("        }\n");
      out.write("        .tabular {\n");
      out.write("    -webkit-border-radius: 10px;\n");
      out.write("    -moz-border-radius: 10px;\n");
      out.write("}\n");
      out.write(".intabular {\n");
      out.write("    -webkit-border-radius: 10px;\n");
      out.write("    -moz-border-radius: 10px;\n");
      out.write("    background-color: bisque;\n");
      out.write("}\n");
      out.write(".style3 {\n");
      out.write("    height: 25px;\n");
      out.write("    width: 33%;\n");
      out.write("}\n");
      out.write(".input {\n");
      out.write("    -webkit-appearance: textfield;\n");
      out.write("    background-color: white;\n");
      out.write("    -webkit-rtl-ordering: logical;\n");
      out.write("    cursor: text;\n");
      out.write("    padding: 1px;\n");
      out.write("    border-width: 2px;\n");
      out.write("    border-style: inset;\n");
      out.write("    border-color: initial;\n");
      out.write("    border-image: initial;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".input, textarea, select, button {\n");
      out.write("    text-rendering: auto;\n");
      out.write("    color: initial;\n");
      out.write("    letter-spacing: normal;\n");
      out.write("    word-spacing: normal;\n");
      out.write("    text-transform: none;\n");
      out.write("    text-indent: 0px;\n");
      out.write("    text-shadow: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    text-align: start;\n");
      out.write("    margin: 0em;\n");
      out.write("    font: 400 13.3333px Arial;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".input, textarea, select, button, meter, progress {\n");
      out.write("    -webkit-writing-mode: horizontal-tb !important;\n");
      out.write("}\n");
      out.write(".intLog {\n");
      out.write("    -webkit-border-radius: 10px;\n");
      out.write("    -moz-border-radius: 10px;\n");
      out.write("}\n");
      out.write(".button {\n");
      out.write("  display: inline-block;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  background-color: #f4511e;\n");
      out.write("  border: none;\n");
      out.write("  color: #FFFFFF;\n");
      out.write("  text-align: center;\n");
      out.write("  font-size: 28px;\n");
      out.write("  padding: 20px;\n");
      out.write("  width: 400px;\n");
      out.write("  transition: all 0.5s;\n");
      out.write("  cursor: pointer;\n");
      out.write("  margin: 5px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button span {\n");
      out.write("  cursor: pointer;\n");
      out.write("  display: inline-block;\n");
      out.write("  position: relative;\n");
      out.write("  transition: 0.5s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button span:after {\n");
      out.write("  content: '\\00bb';\n");
      out.write("  position: absolute;\n");
      out.write("  opacity: 0;\n");
      out.write("  top: 0;\n");
      out.write("  right: -20px;\n");
      out.write("  transition: 0.5s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button:hover span {\n");
      out.write("  padding-right: 25px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button:hover span:after {\n");
      out.write("  opacity: 1;\n");
      out.write("  right: 0;\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write(" <style type=\"text/css\">\n");
      out.write("        .style3\n");
      out.write("        {\n");
      out.write("            width: 15%;\n");
      out.write("        }\n");
      out.write("         .intLog\n");
      out.write("        {\n");
      out.write("    \t    -webkit-border-radius: 10px;\n");
      out.write("            -moz-border-radius: 10px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div>\n");
      out.write("    <center>\n");
      out.write("  <body style=\"background-image:url(images/background.jpg); background-attachment: fixed background-repeat; no-repeat;\n");
      out.write("  background-size: cover;\">\n");
      out.write("    \n");
      out.write("    <form method=\"post\" name=\"form3\">\n");
      out.write("    <table class=\"tabular\" width=\"80%\">\n");
      out.write("    \n");
      out.write("    <tbody><tr>\n");
      out.write("    <td colspan=\"2\">\n");
      out.write("         <img src=\"images/g.png\" width=\"100%\" height=\"90%\" class=\"intabular\">\n");
      out.write("        \n");
      out.write("    </td>\n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("    <td colspan=\"2\">\n");
      out.write("    \n");
      out.write("    </td>\n");
      out.write("    </tr>\n");
      out.write("     <tr>\n");
      out.write("    <td colspan=\"2\">\n");
      out.write("    \n");
      out.write("    </td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("    <td colspan=\"2\" class=\"intabular\"> <center>\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("      <table width=\"60%\" style=\"border: 1px solid #333333; background-image: url('../Images/bg1.jpg'); \" class=\"intLog\">\n");
      out.write("        <tbody><tr>\n");
      out.write("            <td class=\"intLog\"\n");
      out.write("                    style=\"background-image: url('Images/bg3.jpg'); color: #FFFFFF; background-color: #DADADA; width: 0.1%;\" \n");
      out.write("                    align=\"center\">\n");
      out.write("                    <img src=\"images/back.png\"  Width=\"40px\" onclick=\"k()\"/>\n");
      out.write("                    </td>\n");
      out.write("           \n");
      out.write("            \n");
      out.write("                    <td width=\"50%\" class=\"intLog\"\n");
      out.write("                   style=\"background-image: url('Images/bg3.jpg'); color: #FFFFFF; background-color: #006600; width: 25%;\" \n");
      out.write("                  align=\"center\">-- over all graph --\n");
      out.write("                        \n");
      out.write("                    </td>\n");
      out.write("             \n");
      out.write("        </tr>\n");
      out.write("         <tr>\n");
      out.write("                <td width=\"50%\" \n");
      out.write("                    style=\"background-image: url('Images/blurred.jpg')\" \n");
      out.write("                    class=\"intLog\" height=\"100\" align=\"center\" colspan=\"2\">\n");
      out.write("                   \n");
      out.write("                    <table class=\"style3\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td align=\"center\">\n");
      out.write("                                &nbsp;</td>\n");
      out.write("                        </tr>\n");
      out.write("                       <tr>\n");
      out.write("                            <td>choose hotel name</td>\n");
      out.write("                            <td class=\"style4\" align=\"center\">\n");
      out.write("                           \n");
      out.write("                                \n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                                      \n");
      out.write("                                  \n");
      out.write("                  ");

                  
                  
                  
                  
                   try{
                      String output="";
                      if(session.getAttribute("g")!=null) 
                        {
                       output=(String)session.getAttribute("g");
                        }
                      Connection conn = null;
                           String url = "jdbc:mysql://localhost/";
                String dbName = "hotel";
                String driver = "com.mysql.jdbc.Driver";
                String userName = "root";
                String dpassword= "root";
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url+dbName,userName,dpassword);
			Statement st =conn.createStatement();
			            Statement st1 =conn.createStatement();
                                    ResultSet rs1 = st.executeQuery("select * from tcounts where hname='"+output+"'");
                                    while(rs1.next())
                                    {
                                        
                                   
                                     System.out.println("values: "+ rs1.getDouble("positive")+rs1.getDouble("negative")+rs1.getDouble("newtural"));
                                    
                     
                 
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"style4\" align=\"left\">\n");
      out.write("                                <asp:Label ID=\"Label2\" runat=\"server\" style=\"color: #FF0000; font-family: calibri\"></asp:Label>\n");
      out.write("                                <br />\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        <tr>\n");
      out.write("                            <td align=\"center\">\n");
      out.write("                                  <button style=\"vertical-align:middle\" onclick=\"a('");
      out.print(rs1.getInt("positive"));
      out.write("','");
      out.print(rs1.getInt("negative"));
      out.write("','");
      out.print(rs1.getInt("newtural"));
      out.write("')\"><span>REVIEWS</span>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("          \n");
      out.write("                      \n");
      out.write("                          ");

                             }
                  }
                  catch(Exception e)
                  {
                      e.printStackTrace();
                  }

      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                           \n");
      out.write("                            \n");
      out.write("                            <td>\n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                         <div style=\"margin-left:25%\"> <center> <div id=\"chartContainer\" style=\"height: 300px; width: 100%; display:inline;\"></div></center></div>\n");
      out.write("                            \n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        <tr>\n");
      out.write("                            <td align=\"center\">\n");
      out.write("                                &nbsp;</td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("         </table>\n");
      out.write("    <br />\n");
      out.write("    \n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("        </center>\n");
      out.write("        </td>\n");
      out.write("    </tr>      \n");
      out.write("    <tr>\n");
      out.write("    <td style=\"background-color: #333333; color: #e4c4ab;\" align=\"right\" class=\"intabular\">\n");
      out.write("        Analysis on Hotel Management ||  Your Name </td>\n");
      out.write("    </tr>\n");
      out.write("        </tbody></table>\n");
      out.write("    </center>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("</body>\n");
      out.write("   \n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
