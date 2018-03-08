package com.stx.xc.Emailservlet;

import com.stx.xc.model.Message;
import com.stx.xc.Dao.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MessageServlet", value = "/MessageServlet")
public class MessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
       // String name = request.getParameter("username");
        String content = request.getParameter("content");
//        System.out.println(name);
        DBUtil db = new DBUtil();
        Message msg = new Message();
       // msg.setName(name);
        msg.setContent(content);
        if (db.insert(msg)) {
            response.sendRedirect("liuyanqu.html");
        }
        db.close();
    }
}
