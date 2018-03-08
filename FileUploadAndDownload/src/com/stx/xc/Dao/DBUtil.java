package com.stx.xc.Dao;


import com.stx.xc.model.Message;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class DBUtil {
    private static Connection con = null;
    private static Statement stmt = null;

    /**
     * 加载驱动 ，获取连接，获得Statement stmt
     */
    public DBUtil() { 
        if (stmt == null) {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
                String username = "qishiyi";
                String password = "stx";
                con = DriverManager.getConnection(url, username, password);
                stmt = con.createStatement();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmt != null)
            System.out.println("Success loading Oracle Sql Driver!");
    }

    /**
     * 关闭驱动
     */
    public void close() {
        try {
            stmt.close();
            stmt = null;
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 插入数据
     */
    public boolean insert(Message msg) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        
        String sql = "insert into TBL_MESSAGE_BOARD values(MESS_ID_SEQ.nextval, '"
                + msg.getName() + "','" + msg.getContent() + "','" + sdf.format(new Date()) + "',"+0+")";
        try {
            return stmt.executeUpdate(sql) > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Message> getAllMessage() {
        List<Message> messages = new ArrayList<>();
        String sql = " SELECT * FROM TBL_MESSAGE_BOARD where flag=1 order by mess_id desc ";
        try {
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Message msg = new Message();
                msg.setId(rs.getInt(1));
                //msg.setName(rs.getString(2));
                msg.setContent(rs.getString(3));
                msg.setSendTime(rs.getString(4));
                messages.add(msg);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return messages;
    }
   public String banduannull(){
       String sqll="select count(mess_id) from tbl_message_board where flag=0";
       String i=null;
	try {
		ResultSet rs=stmt.executeQuery(sqll);
		while(rs.next()){
			i=rs.getString(1);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
       return i;
   } 
   
   
    public List<Message> getAllUNMessage() {
        List<Message> messages = new ArrayList<>();
        String sql = " SELECT * FROM TBL_MESSAGE_BOARD where flag=0 ";
        try {
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next()) {
                Message msg = new Message();
                msg.setId(rs.getInt(1));
                //msg.setName(rs.getString(2));
                msg.setContent(rs.getString(3));
                msg.setSendTime(rs.getString(4));
                messages.add(msg); 
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return messages;
    }


	public int checkMessage(String x) {
		// TODO Auto-generated method stub
        int i=0;
    	String sql = "  update TBL_MESSAGE_BOARD set flag=1 where mess_id='"+x+"' ";
        try {
             i= stmt.executeUpdate(sql);            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return i;
		
	}
	public int deleteMesage(String x){
		int i=0;
		String sql = "delete from TBL_MESSAGE_BOARD  where  mess_id='"+x+"' ";
		  try {
	             i= stmt.executeUpdate(sql);            
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		return i;
	}
}
