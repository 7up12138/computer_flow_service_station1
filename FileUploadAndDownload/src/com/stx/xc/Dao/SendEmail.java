package com.stx.xc.Dao;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.coyote.Request;

import com.sun.mail.util.MailSSLSocketFactory;

public class SendEmail {
	
	public void send(InfoModel model){
		try{
        Properties props = new Properties();
        // 开启debug调试
        props.setProperty("mail.debug", "true");
        // 发送服务器需要身份验证
        props.setProperty("mail.smtp.auth", "true");
        // 设置邮件服务器主机名
        props.setProperty("mail.host", "smtp.qq.com");
        // 发送邮件协议名称
        props.setProperty("mail.transport.protocol", "smtp");

        MailSSLSocketFactory sf = new MailSSLSocketFactory();
        sf.setTrustAllHosts(true);
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.socketFactory", sf);

        Session session = Session.getInstance(props);
        
        Message msg = new MimeMessage(session);
        msg.setSubject("来自计算机流动服务站的邮件");
        System.out.println(model.getTime()+"-------------------------");
       // Request.setCharacterEncoding("UTF-8");
        
        //String(model.getQname().getBytes("ISO-8859-1"),"utf-8");
        StringBuilder builder = new StringBuilder();
        builder.append("问题描述："+ model.getQname());
        builder.append("<br/>姓名："+model.getPname());
        builder.append("<br/>电话："+model.getPhonenum());
        builder.append("<br/>QQ："+model.getQqnum());
        builder.append("<br/>预约技师："+model.getJs());
        builder.append("<br/>预约时间："+model.getTime());
        builder.append("<br/>预约地点："+model.getPlace());     
        msg.setContent(builder.toString(),"text/html;charset=utf-8");
         
     
       // String str="问题描述："+model.getQname()+"<br/>姓名："+model.getPname()+"<br/>电话号码："
//        +model.getPhonenum()+"<br/>QQ:"+model.getQqnum()+"<br/>预约技师："+model.getJs()+"<br/>预约时间："+model.getTime()
//        +"<br/>预约地点："+model.getPlace();
//    //  str.getBytes(("ISO_8859_1"),"utf-8");
//        String center = new String(str.getBytes("UTF-8")); 
//        msg.setContent(center,"text/html;");
       
        /*
        StringBuilder builder = new StringBuilder();
        builder.append("问题描述："+model.getQname());
        builder.append("<br/>姓名："+model.getPname());
        builder.append("<br/>电话号码："+model.getPhonenum());
        builder.append("<br/>QQ："+model.getQqnum());
        builder.append("<br/>预约技师："+model.getJs());
        builder.append("<br/>预约时间："+model.getTime());
        builder.append("<br/>预约地点："+model.getPlace());     
        msg.setContent(builder.toString(),"text/html;");
        */
        
        
        msg.setFrom(new InternetAddress("727181805@qq.com"));

        Transport transport = session.getTransport();
        transport.connect("smtp.qq.com", "727181805@qq.com","nmbckfarkexybbcg");

        transport.sendMessage(msg, new Address[] { new InternetAddress("884505976@qq.com") });
        transport.close();}
		catch(Exception e){
			
		}
	}

}
