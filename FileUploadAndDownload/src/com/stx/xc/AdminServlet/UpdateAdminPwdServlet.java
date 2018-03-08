package com.stx.xc.AdminServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stx.xc.Admin.ListallAdmin;

/**
 * Servlet implementation class UpdateAdminPwdServlet
 */
@WebServlet("/UpdateAdminPwdServlet")
public class UpdateAdminPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAdminPwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			request.setCharacterEncoding("UTF-8");
		 	String uname=request.getParameter("username");
	        String pwd = request.getParameter("password");
	        String adminuname=request.getParameter("adminuname");
	        ListallAdmin lla=new ListallAdmin();
	       int y=lla.updatepwd(uname,pwd);
	       if(adminuname.equals("admin")){
	    	   response.sendRedirect("/FileUploadAndDownload/ListAdminServlet"); 
	       }else{
	    	   if(y>0){
	        	response.sendRedirect("/FileUploadAndDownload/ListcomAdminServlet");
	        }else{
	        	
	        }
	    	   }
	        
		
		
	}

}

