package com.stx.xc.Emailservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stx.xc.Dao.InfoModel;
import com.stx.xc.Dao.SaveInfo;
import com.stx.xc.Dao.SendEmail;

/**
 * Servlet implementation class Email
 */
@WebServlet("/Email")
public class Email extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Email() {
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
		String qname=request.getParameter("qname");
		String pname=request.getParameter("pname");
		String phonenum=request.getParameter("phonenum");
		String qqnum=request.getParameter("qqnum");
		String js=request.getParameter("js");
		String time=request.getParameter("time");
		String place=request.getParameter("place");	
		InfoModel model=new InfoModel();
		model.setQname(qname);
		model.setPname(pname);
		model.setPhonenum(phonenum);
		model.setQqnum(qqnum);
		model.setJs(js);
		model.setTime(time);
		model.setPlace(place);
		//System.out.println(model.getPname());
		SendEmail se=new SendEmail();
		se.send(model);
		SaveInfo si=new SaveInfo();
		si.saveinfo(model);
		response.sendRedirect("tips.html");
		
	}

}
