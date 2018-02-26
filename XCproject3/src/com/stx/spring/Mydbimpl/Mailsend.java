package com.stx.spring.Mydbimpl;

import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



import com.sun.mail.util.MailSSLSocketFactory;

public class Mailsend {
	
	public String send(String emailsend){
		String x="";
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
        //获取四位随机数验证码
          x=this.yzm();
        
        Message msg = new MimeMessage(session);
        msg.setSubject("来自计算机流动服务站的邮件");
        StringBuilder builder = new StringBuilder();
        builder.append("【计算机流动服务站】<br/>您的验证码是<strong>"+x+"</strong><br/>如非本人操作，请忽略本邮件");
           
        msg.setContent(builder.toString(),"text/html;charset=utf-8");
               
        msg.setFrom(new InternetAddress("727181805@qq.com"));

        Transport transport = session.getTransport();
        transport.connect("smtp.qq.com", "727181805@qq.com","nmbckfarkexybbcg");

        transport.sendMessage(msg, new Address[] { new InternetAddress(emailsend) });
        transport.close();}
		catch(Exception e){
		}
		return x;	
	}
	
	
	//生成六位随机数
	public String yzm(){
		final char[] chars={'2','3','4','5','6','7','8','9','Q','W','E','R','T','Y','U',
	        'P','A','S','D','F','G','H','J','K','Z','X','C','V','B','N','M'};
		Random random=new Random();
		StringBuffer buffer= new StringBuffer();
		for(int i=0;i<6;i++){
			buffer.append(chars[random.nextInt(chars.length)]);
		}
		return buffer.toString();
//		int x=0;
//		Random ron=new Random();
//		x=ron.nextInt(9999-1000+1)+1000;
//		return x;
	}

}
