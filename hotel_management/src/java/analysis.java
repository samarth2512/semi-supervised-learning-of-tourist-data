/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author removevirus
 */
@WebServlet(urlPatterns = {"/analysis"})
public class analysis extends HttpServlet {
    Connection connection = null;
        

Statement statement=null;
        PreparedStatement prep; 
        ResultSet rs;
        String comm1="";
        String uname1="";
        String comment="";
        String status1="";
         String status2="";
        public Vector stoken=new Vector();
        public Vector stoken1=new Vector();
        public Vector spreprocess=new Vector();
        public Vector spreprocess1=new Vector();
        public Vector stowords=new Vector();
        public Vector stowords1=new Vector();
        public Vector stemouput=new Vector();
        ArrayList<String> wordsList = new ArrayList<String>();
        private static final Pattern urlPattern = Pattern.compile(
        "(?:^|[\\W])((ht|f)tp(s?):\\/\\/|www\\.)"
                + "(([\\w\\-]+\\.){1,}?([\\w\\-.~]+\\/?)*"
                + "[\\p{Alnum}.,%_=?&#\\-+()\\[\\]\\*$~@!:/{};']*)",
        Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
        String input="";
         String uname="";
         String hname="";
         String dis="";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
              hname=request.getParameter("hname");
	 dis=request.getParameter("dis");
                process(hname,dis);
                 HttpSession session = request.getSession(true);
                                 session.setAttribute("sp",stoken1);
                                 session.setAttribute("os",dis);
                                 session.setAttribute("link",status1);
                                 session.setAttribute("pprocess",spreprocess);
                                 session.setAttribute("swords",stowords1);
                                 session.setAttribute("sremove",stowords);
                                 session.setAttribute("output",status2);
                                 request.setAttribute("output",status2);
                                 System.out.println("status2: "+status2);
                RequestDispatcher dis1 = request.getRequestDispatcher("output.jsp");
		dis1.forward(request,response);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
public void process(String hname,String dis)
{
    try{
         tokenization(dis);
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}
public double res( String var,String mean,String value)
  {
                  double result=0.0;
      try{
                double e=Math.pow((Double.parseDouble(value))-(Double.parseDouble(mean)),2);
                e=-e/(2*Double.parseDouble(var));         
                double m=1/(Math.sqrt(Double.parseDouble(var)));
                m=0.3898*m;
               result=m*Math.pow(2.718,e);
               System.out.println("YFresult:"+result);
              }
      
      catch(Exception e)
      {
          e.printStackTrace();
      }
      return result;
              }
public void tokenization(String comm)
   {
       try{
            stoken.removeAllElements();
            stoken1.removeAllElements();
        spreprocess.removeAllElements();
       stowords.removeAllElements();
       stowords1.removeAllElements();
       stemouput.removeAllElements();
        // wordsList.r
        uname1=uname;
        comment=comm;
           int count=1;
          comm1=comm;
          System.out.println("<----------------------inside tokenization module------------------------------------->");
         // String str = "This is how I tried to split a paragraph into a sentence. But, there is a problem. My paragraph includes dates like Jan.13, 2014 , words like U.S and numbers like 2.2. They all got splitted by the above code.";
       Pattern re = Pattern.compile("[^.!?\\s][^.!?]*(?:[.!?](?!['\"]?\\s|$)[^.!?]*)*[.!?]?['\"]?(?=\\s|$)", Pattern.MULTILINE | Pattern.COMMENTS);
        Matcher reMatcher = re.matcher(comm1);
     //System.out.println("<---->");
        while (reMatcher.find()) {
        // System.out.println("<---->");
        String sent="sentente "+count+" :-"+reMatcher.group().toString();
         stoken.add(reMatcher.group());
         stoken1.add(sent);
        System.out.println("sentente "+count+" :-"+reMatcher.group());
        count++;
        
        }
       
       //System.out.println("stoken"+stoken);
       System.out.println("<----------------------inside tokenization module------------------------------------->");
      // prepocessing();
       boolean status=urlcheck();
       if(status)
       {
           status1="link is present so this spam comment";
           System.out.println("link is present so this spam comment");
       }
       else{
           status1="link is not present do  preprocessing";
          System.out.println("link is not present process preprocessing");
          prepocessing();
       }
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }  
   }
public void prepocessing()
{
    try{
        int count=1;
        for(int i=0;i<stoken.size();i++)
        {
            System.out.println("<----------------------inside prepocessing module------------------------------------->");
            String s=stoken.get(i).toString();
            String s1=s.replaceAll("[\\p{Punct}\\s\\d]+", " ");
            // String str =  "45,%$^ Sharma%$&^,is,46&* a$# java#$43 Developer$#$^ in#$^ CST&^* web*&(,but He%^&^% want to move@!$@# in another team";
            String sent="sentente "+count+" :-"+s1;
            System.out.println("after eliminating special char: "+s1);
            spreprocess.add(s1);
            spreprocess1.add(s1);
            count++;
            System.out.println("<----------------------inside prepocessing module------------------------------------->");
        }
         // System.out.println("spreprocess"+spreprocess);
     wordstoken();
     
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}
public boolean urlcheck()
{
  boolean status=false;
    try{
    for(int i=0;i<stoken.size();i++)
        {
    System.out.println("<----------------------inside url check module------------------------------------->");
    String s=stoken.get(i).toString();
    Matcher matcher = urlPattern.matcher(s);
    while (matcher.find()) {
    int matchStart = matcher.start(1);
    int matchEnd = matcher.end();
   // System.out.println("link is present");
    status=true;
    // now you have the offsets of a URL match
    System.out.println("<----------------------inside url check module------------------------------------->");
  }
  }
  }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    return status;
}
public void wordstoken()
{
    try{
        stowords.removeAllElements();
         stowords1.removeAllElements();
        int count=1;
        for(int i=0;i<spreprocess.size();i++)
        {
            System.out.println("<----------------------inside words splitting module------------------------------------->");
            String s=spreprocess.get(i).toString();
            String[] words=s.split(" ");
            for(int j=0;j<words.length;j++)
            {
                String sent="word "+count+" :-"+words[j].toString();
                stowords.add(words[j].toString());
                stowords1.add(words[j].toString());
                count++;
            }       
           }
        
         System.out.println("words"+stowords);
         System.out.println("<----------------------inside words splitting module module------------------------------------->");
    removeswords();
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}
public void removeswords()
{
  int k=0,i,j;
 
String[] stopwords = new String[10000];
String sCurrentLine;
    try{
        System.out.println("<----------------------after removing stopwords module------------------------------------->");
        FileReader fr=new FileReader("C:\\Users\\Vidya\\Desktop\\smarth project code\\final code\\dataset\\stopwords.txt");
        BufferedReader br= new BufferedReader(fr);
        while ((sCurrentLine = br.readLine()) != null){
            stopwords[k]=sCurrentLine;
            k++;
        }
       
        for(int ii = 0; ii <stowords.size(); ii++){
            for(int jj = 0; jj < k; jj++){
             //   System.out.println("stopwords"+stowords.size());
                if(stopwords[jj].toLowerCase().trim().contains(stowords.get(ii).toString().trim().toLowerCase())){
                    stowords.remove(ii);
                }
             }
        }
         System.out.println("after removing stopwords:- "+stowords);
        System.out.println("<----------------------after removing stopwords module------------------------------------->");
   featureextraction();
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}

public void featureextraction() {
    
    System.out.println("\n<---------------------- feature extraction module------------------------------------->");
    System.out.println(stowords);                   
    
    try{         
        
               String url = "jdbc:mysql://localhost/";
                String dbName = "hotel";
                String driver = "com.mysql.jdbc.Driver";
                String userName = "root";
                String dpassword= "root";

                Class.forName(driver).newInstance();
                connection = DriverManager.getConnection(url+dbName,userName,dpassword);
                statement = (Statement) connection.createStatement();

// ~~~~~~~~~~~~~~~~~~~~~~~ positive word processing ~~~~~~~~~~~~~~~~~~~~~~~~~~~
       String name="sentimental analysis";
        int count=0;
        int tk=0;
        int k=0;             
        
        try{         
         InputStream is = new FileInputStream("C:\\Users\\Vidya\\Desktop\\smarth project code\\final code\\dataset\\positive-words.txt"); //Open input stream for reading the text file MyTextFile.txt        
         InputStreamReader instrm = new InputStreamReader(is); // create new input stream reader
         BufferedReader br = new BufferedReader(instrm);          // Create the object of BufferedReader object      
         String strLine;                  
                
                while((strLine = br.readLine()) != null)  {                               
                tk++;
                }         
        }catch(Exception e){
         e.printStackTrace();
        }
        
        Vector postivehiddenlayer=new Vector();        
        String[] stopwords = new String[tk];
        
        try{         
         InputStream is = new FileInputStream("C:\\Users\\Vidya\\Desktop\\smarth project code\\final code\\dataset\\positive-words.txt"); //Open input stream for reading the text file MyTextFile.txt        
         InputStreamReader instrm = new InputStreamReader(is); // create new input stream reader
         BufferedReader br = new BufferedReader(instrm);          // Create the object of BufferedReader object      
         String strLine;                  
                
                while((strLine = br.readLine()) != null)  {                
                    //System.out.println(tk+" : "+strLine);
                    postivehiddenlayer.add(strLine.toLowerCase().trim());
                    stopwords[k]=strLine;
                    //System.out.println(k+" : "+ stopwords[k]);
                    k++;           
                }         
        }catch(Exception e){
         e.printStackTrace();
        }        
     
//        System.out.println("stowords "+stowords.size());
        for(int ii = 0; ii <stowords.size(); ii++){
            for(int jj = 0; jj < k; jj++){
                //System.out.println(postivehiddenlayer.get(jj)+"  vs  "+stowords.get(ii));                
                if(postivehiddenlayer.get(jj).toString().toLowerCase().equals(stowords.get(ii).toString().trim().toLowerCase())){
                  System.out.println(postivehiddenlayer.get(jj).toString().toLowerCase()+"---------------stopwords---------"+stowords.get(ii).toString().trim().toLowerCase());
                    count++;
                }
             }
        }
        
        
// ~~~~~~~~~~~~~~~~~~~~~~~ negative word processing ~~~~~~~~~~~~~~~~~~~~~~~~~~~
        Vector negativehiddenlayer=new Vector();        
        int count1=0;
        int k1=0;
        int tnw = 0;
        
        FileReader tfr1=new FileReader("C:\\Users\\Vidya\\Desktop\\smarth project code\\final code\\dataset\\negative-words.txt");
        BufferedReader tbr1= new BufferedReader(tfr1);
        String sCurrentLine;
        
        while ((sCurrentLine = tbr1.readLine()) != null){
            tnw++;
        }
        
        
        String[] stopwords1 = new String[tnw];
        
        FileReader fr1=new FileReader("C:\\Users\\Vidya\\Desktop\\smarth project code\\final code\\dataset\\negative-words.txt");
        BufferedReader br1= new BufferedReader(fr1);   
        while ((sCurrentLine = br1.readLine()) != null){
             negativehiddenlayer.add(sCurrentLine.toLowerCase().trim());
            stopwords1[k1]=sCurrentLine;
            //System.out.println("negative: "+k1+"\t"+stopwords1[k1]);
            k1++;
        }
        
        //System.out.println("stopwords"+stowords.size()+"  k1: "+k1+"  "+stopwords1[k1-1]);
        for(int ii = 0; ii < stowords.size(); ii++){
            for(int jj = 0; jj < k1; jj++){
              //System.out.println(negativehiddenlayer.get(jj)+"   vs   "+stowords.get(ii));
                if(negativehiddenlayer.get(jj).toString().toLowerCase().equals(stowords.get(ii).toString().trim().toLowerCase())){
                  System.out.println(negativehiddenlayer.get(jj).toString().toLowerCase()+"---------------stopwords---------"+stowords.get(ii).toString().trim().toLowerCase());
                    count1++;
                }
             }
        }
    
        
        System.out.println("positive words : "+count);
        System.out.println("negative words : "+count1);
     
        int size=stowords.size();    
        int score=0;
        int score1=0;
        int score2=0;
        float pdistance=size-count;
        float ndistance=size-count1;
        System.out.println("words: "+size+" pdistance: "+pdistance+" ndistance: "+ndistance);
        
     
        if(pdistance<ndistance) {
            status2="positive";
          int taken=0;  
            boolean g=true;
      ResultSet rs2 = statement.executeQuery("select * from tcounts where hname='"+hname+"'");
      while(rs2.next())
    {
      taken=rs2.getInt("positive");
      g=false;
      
    }
      if(g)
      {
            String isql = "INSERT INTO tcounts VALUES(?,?,?,?,?,?)";
                    prep = connection.prepareStatement(isql);
                    prep.setString(1,hname);
                    prep.setString(2,dis);
                    prep.setString(3,status2);
                    prep.setString(4,"1");
                    prep.setString(5,"0");
                    prep.setString(6,"0");
                    prep.execute();
                    prep.close();
//            score++;
           // System.out.println("positive "+data);
        }
        
        else{
           update(hname,taken); 
        }
        }
        else if(ndistance<pdistance) {
            status2="negative";
            
           int taken=0;  
            boolean g=true;  
              ResultSet rs2 = statement.executeQuery("select * from tcounts where hname='"+hname+"'");
            while(rs2.next())
          {
            taken=rs2.getInt("negative");
            g=false;

          }
      if(g)
      {
           
                     String isql = "INSERT INTO tcounts VALUES(?,?,?,?,?,?)";

                    prep = connection.prepareStatement(isql);
                    prep.setString(1,hname);
                    prep.setString(2,dis);
                    prep.setString(3,status2);
                    prep.setString(4,"0");
                    prep.setString(5,"1");
                    prep.setString(6,"0");
                    prep.execute();
                    prep.close();
//            score++;
           // System.out.println("positive "+data);
        }
        
        else{
           update1(hname,taken); 
        }
             
        }
        
        else{
            status2="neutral";
              int taken=0;  
            boolean g=true;  
              ResultSet rs2 = statement.executeQuery("select * from tcounts where hname='"+hname+"'");
            while(rs2.next())
          {
            taken=rs2.getInt("neutral");
            g=false;

          }
      if(g)
      {
    String isql = "INSERT INTO tcounts VALUES(?,?,?,?,?,?)";

                    prep = connection.prepareStatement(isql);
                    prep.setString(1,hname);
                    prep.setString(2,dis);
                    prep.setString(3,status2);
                    prep.setString(4,"0");
                    prep.setString(5,"0");
                    prep.setString(6,"1");
                    prep.execute();
                    prep.close();
      }
      else{
          update2(hname,taken); 
      }
     }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}

public void update(String hname,int taken)
{
    try{
        taken=taken+1;
        statement.executeUpdate("update tcounts set positive='"+String.valueOf(taken)+"' where hname='"+hname+"'");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}
  
public void update1(String hname,int taken)
{
    try{
        taken=taken+1;
        statement.executeUpdate("update tcounts set negative='"+String.valueOf(taken)+"' where hname='"+hname+"'");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}
  
public void update2(String hname,int taken)
{
    try{
        taken=taken+1;
        statement.executeUpdate("update tcounts set neutral='"+String.valueOf(taken)+"' where hname='"+hname+"'");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}
  



    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
