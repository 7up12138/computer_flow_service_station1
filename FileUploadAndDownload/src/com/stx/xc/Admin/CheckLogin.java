package com.stx.xc.Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.stx.xc.Dao.DBUtil;

public class CheckLogin {
	  public String checkuanme(){
		  String reuname=null;
		  
		  try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	      String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
	      String uname = "qishiyi";
	      String pwd = "stx";
	     Connection con = DriverManager.getConnection(url, uname, pwd);
	     Statement st= con.createStatement();  
	     ResultSet rs=st.executeQuery("select * from Admin_MES where username='admin'  ") ;
	    while(rs.next()){

	    	reuname=rs.getString("username");
	 
	    }
		  } catch (Exception e) {
			  // TODO Auto-generated catch block
			  e.printStackTrace();
		  }
		return reuname;
		  
	  }
  public String checklogin(String username,String password){
	  String repwd=null;
	  
	  try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
      String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
      String uname = "qishiyi";
      String pwd = "stx";
     Connection con = DriverManager.getConnection(url, uname, pwd);
     Statement st= con.createStatement();  
     ResultSet rs=st.executeQuery("select password from Admin_MES where username='"+username+"' and password='"+password+"'  ") ;
    while(rs.next()){
    
    	
    	repwd=rs.getString("password");
 
    }
	  } catch (Exception e) {
		  // TODO Auto-generated catch block
		  e.printStackTrace();
	  }
	return repwd;
	  
  }
  public String checkjsd(String username){
	  String flag=null;
	 // String password=null;
	  try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
      String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
      String uname = "qishiyi";
      String pwd = "stx";
     Connection con = DriverManager.getConnection(url, uname, pwd);
     Statement st= con.createStatement();  
     ResultSet rs=st.executeQuery("select flag from ADMIN_MES_DOWN where username='"+username+"'  ") ;
    while(rs.next()){
    
    	//password=rs.getString("password");
    	flag=rs.getString("flag");
    	
 
    }
	  } catch (Exception e) {
		  // TODO Auto-generated catch block
		  e.printStackTrace();
	  }
	return flag;
	  
  }
  
  
}
