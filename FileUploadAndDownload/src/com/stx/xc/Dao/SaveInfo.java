package com.stx.xc.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class SaveInfo {
		
	public void saveinfo(InfoModel model){
		
		 try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
         String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
         String username = "qishiyi";
         String password = "stx";
         Connection con = DriverManager.getConnection(url, username, password);
         Statement st=con.createStatement();
        
         String sql="insert into pro_mes values(pro_id.nextval,'"+model.getQname()+"','"+model.getPname()+"','"+model.getPhonenum()+"','"+model.getQqnum()+"', '"+model.getJs()+"','"+model.getTime()+"','"+model.getPlace()+"')";
         st.executeUpdate(sql);
		 } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
	}
	public ArrayList  selectinfo(){
		ArrayList list = new ArrayList();
		 try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
		         String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
		         String username = "qishiyi";
		         String password = "stx";
		         Connection con = DriverManager.getConnection(url, username, password);
		         Statement st=con.createStatement();
		        
		         String sql="select * from pro_mes order by pro_mes_id desc";
		         ResultSet rs=st.executeQuery(sql);
		         while(rs.next()){
		        	 InfoModel model=new InfoModel();
		        	 model.setQname(rs.getString(2));
		        	 model.setPname(rs.getString(3));
		        	 model.setPhonenum(rs.getString(4));
		        	 model.setQqnum(rs.getString(5));
		        	 model.setJs(rs.getString(6));
		        	 model.setTime(rs.getString(7));
		        	 model.setPlace(rs.getString(8));
		        	 list.add(model);
		        	 
		         }
		         
				 } catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		 return list;
		
	}
}
