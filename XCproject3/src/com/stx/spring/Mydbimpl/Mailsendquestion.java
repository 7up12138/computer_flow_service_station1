package com.stx.spring.Mydbimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.annotation.Resource;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;




import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;



import org.springframework.stereotype.Repository;

import com.stx.spring.Mymodel.Mymodel;
import com.sun.mail.util.MailSSLSocketFactory;


public class Mailsendquestion {
		
	public String send(Mymodel model,String jsemail){
		//如果没有指定时间
		String yytime=model.getYytime();
		if(model.getYytime().indexOf("非必")!=-1){
			yytime="未指定";
		}
		//如果没有指定地点
		String yypalce=model.getYyplace();
		if(model.getYyplace().length()<1){
			yypalce="未指定";
		}
		
	/*	
		//如果技师没有指定就调用随机方法
		String jsname=model.getYyjs();
		String jsemail="";
		System.out.println(jsname+"----技师姓名----");
		if(jsname.indexOf("非必")!=-1){
			jsemail=this.sendjs();
				}else{//  如果有指定的技师进入数据库查询JS邮箱
			jsemail=this.zhidingjs(jsname);
				}
	*/	
		
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
        //System.out.println(model.getTime()+"-------------------------");
       // Request.setCharacterEncoding("UTF-8");
       
        //String(model.getQname().getBytes("ISO-8859-1"),"utf-8");
        StringBuilder builder = new StringBuilder();
        builder.append("问题描述："+ model.getQname());
        builder.append("<br/>姓名："+model.getPname());
        builder.append("<br/>电话："+model.getPhonenum());
      //builder.append("<br/>预约技师："+model.getYyjs());
        builder.append("<br/>预约时间："+yytime);
        builder.append("<br/>预约地点："+yypalce);     
        msg.setContent(builder.toString(),"text/html;charset=utf-8");

          
        msg.setFrom(new InternetAddress("727181805@qq.com"));

        Transport transport = session.getTransport();
        transport.connect("smtp.qq.com", "727181805@qq.com","nmbckfarkexybbcg");

        transport.sendMessage(msg, new Address[] { new InternetAddress(jsemail) });
        transport.close();}
		catch(Exception e){
			
		}
		return jsemail;
	}
	

	
/*	
	//如果指定技师 则返回指定技师的邮箱
	  @Resouce
	  private Jdbctemplate jdbc;
	public String zhidingjs(String jsemail){
		System.out.println(jsemail+"------");
		String sql="select mail from jsinfo where jsname=?";
		Object[] obj={jsemail};
		List list=jdbcTemplate.query(sql,obj, new zdjs());
		
		String mail=list.get(0).toString();
		//System.out.println(mail+"88888888888888888888888888888888888888");
		return mail;		
	}
	class zdjs implements RowMapper{
		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			String jsemail="";
		    jsemail=rs.getString("mail");
		    System.out.println(jsemail+"11111");
			return jsemail;
		}
		
	}
	
	
	//如果用户没有指定技师 那么系统将会随机指定一个技师
	public String sendjs(){
		String sql="select mail from jsinfo";
		Object[] obj={};
		List list =  jdbcTemplate.query(sql, obj,new suiji());
		Random random=new Random();
		StringBuffer buffer= new StringBuffer();
		for(int i=0;i<1;i++){
			buffer.append(list.get(random.nextInt(list.size())));
		}
		
		return buffer.toString();
		}
	class suiji implements RowMapper{

		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			String jsemail =rs.getString("mail");
			System.out.println("--------------mail"+jsemail);
			return jsemail;
		}
		
	}
	//根据邮箱返回技师姓名
  public String checkjsname(String jsemail){
		//String mail=this.sendjs();
		String sql="select jsname from jsinfo where mail=?";
		Object[] obj={jsemail};
		List list =jdbcTemplate.query(sql,obj, new checkname());
		String jsname=(String)list.get(0);
		return jsname;
		
	}
	class checkname implements RowMapper{

		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			String jsname=rs.getString(1);
			System.out.println("--------------name"+jsname);
			return jsname;
		}		
	}
*/
}
