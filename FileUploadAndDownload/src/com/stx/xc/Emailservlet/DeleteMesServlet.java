package com.stx.xc.Emailservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stx.xc.Dao.DBUtil;
import com.stx.xc.model.Message;

/**
 * Servlet implementation class DeleteMesServlet
 */
@WebServlet("/DeleteMesServlet")
public class DeleteMesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMesServlet() {
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
	       // String name = request.getParameter("username");
	        String x = request.getParameter("id");
	        DBUtil db = new DBUtil();
	       // Message msg = new Message();
	      //  msg.setContent(x);
	        int i=db.deleteMesage(x);
	       // msg.setName(name);
	      //  msg.setContent(x);
	        if (i>0) {
	            response.sendRedirect("/FileUploadAndDownload/Admin/checkems.jsp");
	        }
	        db.close();
		}
		
	}


