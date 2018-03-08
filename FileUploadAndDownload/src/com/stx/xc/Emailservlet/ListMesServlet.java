package com.stx.xc.Emailservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.stx.xc.Dao.DBUtil;
import com.stx.xc.model.Message;

/**
 * Servlet implementation class ListMesServlet
 */
@WebServlet("/ListMesServlet")
public class ListMesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListMesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     request.setCharacterEncoding("UTF-8");
	       // String name = request.getParameter("username");
	       //String content = request.getParameter("content");
//	        System.out.println(name);
	    // System.out.println("---------");
	        //DBUtil db = new DBUtil();
	        //Message msg = new Message();
	       // msg.setName(name);
	       // msg.setContent(content);
	      /*  List<Message> messages=db.getAllUNMessage();
	        int one=0;
	        String two=null;
	        String three=null;
	        for (Message msg1 : messages) {
	        one=msg1.getId();
	        two=msg1.getSendTime();      
	        three= (String)msg1.getContent();}
	        String last=one+"楼     "+two+"\n\n\n"+three;
	        System.out.println(last);
	        
	        HttpSession session=request.getSession();
	        session.setAttribute("last",last );
	        */
	        response.sendRedirect("/FileUploadAndDownload/Admin/checkems.jsp");
	        
	       // db.close();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}
