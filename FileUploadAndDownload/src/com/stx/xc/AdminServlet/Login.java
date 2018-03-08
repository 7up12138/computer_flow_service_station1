package com.stx.xc.AdminServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stx.xc.Admin.CheckLogin;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String uname=request.getParameter("Username");
		String password=request.getParameter("Password");
		//System.out.println(uname);
		//System.out.println(password);
		CheckLogin lg=new CheckLogin();
		String pwd=lg.checklogin(uname,password);
		//System.out.println(pwd+"------------");
		if(pwd!=null){
			response.sendRedirect("/FileUploadAndDownload/Admin/admin.jsp");
			}else{
			String flag=lg.checkjsd(uname);
			if(flag==null){
				response.sendRedirect("/FileUploadAndDownload/index.jsp");	
			}else if(flag.equals("超级管理员")){
				response.sendRedirect("/FileUploadAndDownload/Admin/super.jsp");
			}else if(flag.equals("普通管理员")){
				response.sendRedirect("/FileUploadAndDownload/Admin/common.jsp");
			}else {
			response.sendRedirect("/FileUploadAndDownload/index.jsp");
		}
		}	
	}
	}


