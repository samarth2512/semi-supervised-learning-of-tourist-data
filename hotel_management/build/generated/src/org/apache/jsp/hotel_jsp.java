package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Vector;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class hotel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<");
      out.write('\n');


 int count=0;
                       
                        
                        Vector v1=new Vector();
                         Vector v2=new Vector();
                         Vector v3=new Vector();
                         Vector v4=new Vector();

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
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
      out.write("      document.form3.action = \"index.jsp\";\n");
      out.write("      document.form3.submit();\n");
      out.write("}\n");
      out.write("function validation(a)\n");
      out.write("{\n");
      out.write("   var com= prompt(\"Please enter your comment==>\"+a,\"\");\n");
      out.write("   document.form3.hname.value=a;\n");
      out.write("   document.form3.dis.value=com;\n");
      out.write("      document.form3.action = \"./analysis\";\n");
      out.write("      document.form3.submit(); \n");
      out.write("       alert(\"hai\");\n");
      out.write("}\n");
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
      out.write("     background-color: bisque;\n");
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
      out.write("\n");
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
      out.write("   \n");
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
      out.write("      <table width=\"60%\"  class=\"intLog\">\n");
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
      out.write("                  align=\"center\">-- hotel details --\n");
      out.write("                        \n");
      out.write("                    </td>\n");
      out.write("             \n");
      out.write("        </tr>\n");
      out.write("         <tr>\n");
      out.write("                <td width=\"10%\" \n");
      out.write("                    style=\"background-image: url('Images/blurred.jpg')\" \n");
      out.write("                    class=\"intLog\"  height=\"100\" align=\"left\" colspan=\"2\">\n");
      out.write("                   \n");
      out.write("                    <table width=\"100%\">\n");
      out.write("                       \n");
      out.write("                       <tr>\n");
      out.write("                           <th></th>\n");
      out.write("                        <th></th>\n");
      out.write("                        \n");
      out.write("                        <th></th>\n");
      out.write("                        \n");
      out.write("                      </tr>\n");
      out.write("                        ");

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
                                          String t="Total comment:"+tota+"\n"+"positive comment:"+rs1.getString("positive")+"_Negative:"+rs1.getString("negative")+"_neutral:"+rs1.getString("newtural"); 
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
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                           ");
for(int i=0;i<v3.size();i++){
                           if(v3.get(i).toString().equals(rs.getString("hname")))
                           {
                           
      out.write("\n");
      out.write("                           <td width=\"40%\"> <img src=");
      out.print(name);
      out.write(" width=\"80%\" height=\"60%\"></td>\n");
      out.write("                            \n");
      out.write("                            <td width=\"40%\">");
      out.print(rs.getString("hname"));
      out.write("</td>\n");
      out.write("                            <td width=\"40%\">");
      out.print(rs.getString("addr"));
      out.write("</td>\n");
      out.write("                            <td width=\"70%\">");
      out.print(v2.get(i).toString());
      out.write("</td>\n");
      out.write("                            \n");
      out.write("                            <td width=\"40%\">\n");
      out.write("                                <button class=\"button\" style=\"vertical-align:middle\" onclick=\"validation('");
      out.print(rs.getString("hname"));
      out.write("')\"><span>comment</span>\n");
      out.write("                            </td>\n");
      out.write("                         \n");
      out.write("                        </tr>\n");
      out.write("                        ");
}}
      out.write("\n");
      out.write("                        \n");
      out.write("                        ");
if(!v3.contains(rs.getString("hname"))){
                               
                                  String t="Total comment:"+0+"positive comment:"+0+"Negative:"+0+"neutral:"+0; 
                           
      out.write("\n");
      out.write("                        \n");
      out.write("                        <td width=\"40%\"> <img src=");
      out.print(name);
      out.write(" width=\"80%\" height=\"60%\"></td>\n");
      out.write("                            \n");
      out.write("                            <td width=\"40%\">");
      out.print(rs.getString("hname"));
      out.write("</td>\n");
      out.write("                            <td width=\"40%\">");
      out.print(rs.getString("addr"));
      out.write("</td>\n");
      out.write("                            <td width=\"70%\">");
      out.print(t);
      out.write("</td>\n");
      out.write("                            \n");
      out.write("                            <td width=\"40%\">\n");
      out.write("                                <button class=\"button\" style=\"vertical-align:middle\" onclick=\"validation('");
      out.print(rs.getString("hname"));
      out.write("')\"><span>comment</span>\n");
      out.write("                            </td>\n");
      out.write("                         \n");
      out.write("                           ");
}}}
                        catch(Exception e)
                        {
                            e.printStackTrace();
                        }
                        
      out.write("\n");
      out.write("                        \n");
      out.write("                        <input type=\"hidden\" name=\"hname\">\n");
      out.write("                        <input type=\"hidden\" name=\"dis\">\n");
      out.write("                    </table>\n");
      out.write("                    \n");
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
      out.write("         Analysis on Hotel Management ||  Your Name </td>\n");
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
      out.write("\n");
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
