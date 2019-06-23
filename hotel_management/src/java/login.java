/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
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
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
             String username=request.getParameter("uname");
		String password=request.getParameter("pass");
                System.out.println(password+"incise"+username);
                 HttpSession session = request.getSession(true);
		            session.setAttribute("user",username);
                 boolean status=usercheck(username,password);
		if(status){
			RequestDispatcher dis = request.getRequestDispatcher("hotel.jsp");
			dis.forward(request,response);
		}
                else{
                       
                        RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
			dis.forward(request,response);
                }
		}
	
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
        
      public boolean usercheck(String uname,String pass){
		boolean status=false;
		try{
			Connection con=getConnection();
			Statement st =con.createStatement();
			ResultSet rs = st.executeQuery("select * from user where uname='"+uname+"' and pass='"+pass+"'");
			if(rs.next()){
				status=true;
			}			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}
	public Connection getConnection(){
	 Connection conn = null;	
	try{
                String url = "jdbc:mysql://localhost/";
                String dbName = "hotel";
                String driver = "com.mysql.jdbc.Driver";
                String userName = "root";
                String dpassword= "root";

  Class.forName(driver).newInstance();
  conn = DriverManager.getConnection(url+dbName,userName,dpassword);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
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
