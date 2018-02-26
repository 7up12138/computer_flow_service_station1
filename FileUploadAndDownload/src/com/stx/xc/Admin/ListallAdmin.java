package com.stx.xc.Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.catalina.tribes.transport.RxTaskPool;

public class ListallAdmin {
	public Statement getcon(){
		Statement st=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		      String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
		      String uname = "qishiyi";
		      String pwd = "stx";
		     Connection con = DriverManager.getConnection(url, uname, pwd);
		     st=con.createStatement();
		}catch(Exception e){
			
		}
		return st; 
	}
	
	
	public ArrayList  list(){
		
		ArrayList list=new ArrayList();
		// String password=null;
		 //String username=null;
		  try { 
	     Statement st=this.getcon();
	     ResultSet rs=st.executeQuery("select * from Admin_mes_down order by admin_id ") ;
	    while(rs.next()){
	    	AdminModel model= new AdminModel();
	    	model.setAdminid(rs.getInt("admin_id"));
	    	model.setUseranme(rs.getString("username"));
	    	model.setPassword(rs.getString("password"));
	    	model.setFlag(rs.getString("flag"));
	    	list.add(model);
	    }
		  } catch (Exception e) {
			  // TODO Auto-generated catch block
			  e.printStackTrace();
		  }
		return list;
	}
	public ArrayList  listcom(){
		
		ArrayList list=new ArrayList();
		// String password=null;
		 //String username=null;
		  try { 
	     Statement st=this.getcon();
	     ResultSet rs=st.executeQuery("select * from Admin_mes_down where flag='普通管理员' order by admin_id ") ;
	    while(rs.next()){
	    	AdminModel model= new AdminModel();
	    	model.setAdminid(rs.getInt("admin_id"));
	    	model.setUseranme(rs.getString("username"));
	    	model.setPassword(rs.getString("password"));
	    	model.setFlag(rs.getString("flag"));
	    	list.add(model);
	    }
		  } catch (Exception e) {
			  // TODO Auto-generated catch block
			  e.printStackTrace();
		  }
		return list;
	}




	public int deleteoneadmin(int x) {
		// TODO Auto-generated method stub
		int y=0;
		Statement st=this.getcon();
		String sql="delete from admin_mes_down where admin_id="+x+" ";
		try {
			y=st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return y;
		
	}
	public int updatepwd(String uname,String pwd){
		int y=0;
		Statement st=this.getcon();
		String sql="update admin_mes_down set password='"+pwd+"' where username='"+uname+"' ";
		try {
			y=st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return y;
		
	}
	public int updatejsd(String uname,String flag){
		int y=0;
		Statement st=this.getcon();
		String sql="update admin_mes_down set flag='"+flag+"' where username='"+uname+"' ";
		try {
			y=st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return y;
		
	}
	public int insertone(String uname,String password,String flag){
		int y=0;
		Statement st=this.getcon();
		String sql="insert into admin_mes_down values(adminid.nextval,'"+uname+"','"+password+"','"+flag+"') ";
		try {
			y=st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return y;
	}
	public int insertcom(String uname,String password){
		int y=0;
		Statement st=this.getcon();
		String sql="insert into admin_mes_down values(adminid.nextval,'"+uname+"','"+password+"','普通管理员') ";
		try {
			y=st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return y;
	}
	public int checkadmin(String username){
		int i=0;
		String jsd=null;
		Statement st=this.getcon();
		String sql="select flag from admin_mes_down where username='"+username+"' ";
		try {
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				jsd=rs.getString("flag");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(jsd+"----------");
		
		if (jsd.equals("超级管理员")){
			i=1;
			
		} 
		if(jsd.equals("普通管理员")){
			i=2;
		}
		return i;
	}





}
