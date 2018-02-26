package com.stx.spring.Mydbimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.Mydb.Mydb;
import com.stx.spring.Mymodel.Jsmodel;
import com.stx.spring.Mymodel.Model;
import com.stx.spring.Mymodel.Mymodel;
import com.stx.spring.Mymodel.Plmodel;
import com.stx.spring.Mymodel.Usermodel;
@Repository
public class Mydbimpl implements Mydb {
	@Resource
	private JdbcTemplate jdbc;
	//登录模块
	@Override
	public String login(String username, String password) {
		String sql="select registeruser_email from registeruser where registeruser_email=? and registeruser_pwd=?";
		Object[] obj={username,password};
		List list=jdbc.query(sql, obj,new sc());
		String uname="";
		if(list.size()>0){
		uname=(String) list.get(0);
		return uname;
		}else{
		return uname;	
		}
	}
	class sc implements RowMapper{
		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			String uname=rs.getString(1);
			return uname;
		}		
	}
	//注册新用户
	@Override
	public int regist(Usermodel model){
		int i=0;
		String sql="insert into registeruser values(registeruser_seq.nextval,?,?,?,?)";
		Object[] obj={model.getUsername(),model.getPhonenum(),model.getEmailname(),model.getPassword()};
		i=jdbc.update(sql,obj);
		return i;
	}
	//发送邮箱验证码
	@Override
	public String emailyz(String emailsend) {
		 Mailsend ms=new Mailsend();
		 String yzm=ms.send(emailsend);	 
		 return yzm;
	}
	//验证手机号码在数据库中是否存在
	@Override
	public String yzphonenum(String phonenum) {
		String sql="select registeruser_phonenum from registeruser where registeruser_phonenum=?";
		Object[] obj={phonenum};
		List list=jdbc.query(sql, obj,new cxnum());
		String num="";
		if(list.size()>0){
		num=(String) list.get(0);
		return num;
		}else{
			return num;	
		}
	}
	class cxnum implements RowMapper{
		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			String num="";
			num=rs.getString(1);
			return num;
		}
		
	}
	//验证邮箱是否可用
	@Override
	public String yzemail(String emailname) {
		String sql="select registeruser_email from registeruser where registeruser_email=?";
		Object[] obj={emailname};
		List list=jdbc.query(sql, obj,new cxemail());
		String num="";
		if(list.size()>0){
		num=(String) list.get(0);
		return num;	
		}else{
		return num;
		}
	}
	class cxemail implements RowMapper{
		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			String num="";
			num=rs.getString(1);
			return num;
		}
		
	}
	//忘记密码模块
	@Override
	public int updatemima(String emailname, String password) {
		String sql="update registeruser set registeruser_pwd=? where registeruser_email=?";
		Object[] obj={password,emailname};
		int i=0;
		i=jdbc.update(sql,obj);
		return i;
	}
	
//--------------------------<<<个人信息>>>---------------------------------------	
	
	
	@Override
	//查询个人信息模块
	public List userinfo(String emailname) {
		String sql="select * from registeruser where registeruser_email=?";
		Object[] obj={emailname};
		List list=jdbc.query(sql,obj, new xcuserinfo());
		return list;
	}
	class xcuserinfo implements RowMapper{

		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			Usermodel model= new Usermodel();
			model.setUsername(rs.getString(2));
			model.setPhonenum(rs.getString(3));
			model.setEmailname(rs.getString(4));
//			List list = new ArrayList();
//			list.add(model);
			return model;
		}		
	}
	//---------------
	//查询订单信息
	@Override
	public List ddinfo(String emailname) {
		String sql="select *　from seruser where seruser_emailname =?";
		Object[] obj={emailname};
		List list=jdbc.query(sql, obj,new xcddinfo());
		return list;
	}
	class xcddinfo implements RowMapper{

		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			Mymodel model= new Mymodel();
			model.setId(rs.getInt(1));
			model.setQname(rs.getString(3));
			model.setPname(rs.getString(4));
			model.setPhonenum(rs.getString(5));
			model.setYyjs(rs.getString(6));
			model.setYytime(rs.getString(7));
			model.setYyplace(rs.getString(8));
			model.setYydate(rs.getString(9));
			model.setFlag(rs.getString(10));
			return model;
		}
		
	}
	//查询未完成订单
	@Override
	public List wddinfo(String emailname) {
		String sql="select *　from seruser where seruser_emailname =? and seruser_flag='未完成'";
		Object[] obj={emailname};
		List list=jdbc.query(sql, obj,new xcddinfo());
		return list;
	}
	//查询已完成订单
	@Override
	public List yddinfo(String emailname) {
		String sql="select *　from seruser where seruser_emailname =? and seruser_flag='完成'";
		Object[] obj={emailname};
		List list=jdbc.query(sql, obj,new xcddinfo());
		return list;
	}

	//查询发帖记录
	
	@Override
	public List ftinfo(String emailname) {
		
		return null;
	}
	
	//发送订单模块并插入订单信息到数据库
	@Override
	public int xiadan(Mymodel model) {
		//发送邮件到技师邮箱
		Mailsendquestion msq=new Mailsendquestion();
		//返回技师的邮箱  
		String jsemail="";
		if(model.getYyjs().indexOf("非必")!=-1){
			jsemail=this.sendjs();//随机方法
		}else{
			jsemail=this.zhidingjs(model.getYyjs());//制定方法
		}
		 	jsemail= msq.send(model,jsemail);
		//返回技师的姓名
		 String jsname=this.checkjsname(jsemail);
		   
		   
		int x=0;		
		String yytime=model.getYytime();
		if(model.getYytime().indexOf("非必")!=-1){
			yytime="未指定";
		}
		String yypalce=model.getYyplace();
		if(model.getYyplace().length()<1){
			yypalce="未指定";
		}
		
		String flag="未完成";
		//下单时间
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		 String yydate=sdf.format(new Date());
		String sql="insert into seruser values(seruser_seq.nextval,?,?,?,?,?,?,?,?,?)";
		Object[] obj={model.getEmailname(),model.getQname(),model.getPname(),model.getPhonenum(),jsname,yytime,yypalce,yydate,flag};
		x=jdbc.update(sql,obj);
		return x;
	}
	
	
	
	//------------------------------<<<<<随机技师方法>>>>>---------------------------
	//如果指定技师 则返回指定技师的邮箱
	public String zhidingjs(String jsemail){
		//System.out.println(jsemail+"------");
		String sql="select js_emil from js where js_name=?";
		Object[] obj={jsemail};
		List list=jdbc.query(sql,obj, new zdjs());
		String mail=list.get(0).toString();
		return mail;		
	}
	class zdjs implements RowMapper{
		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			String jsemail="";
		    jsemail=rs.getString("js_emil");
		    //System.out.println(jsemail+"11111");
			return jsemail;
		}
		
	}
	
	
	//如果用户没有指定技师 那么系统将会随机指定一个技师
	public String sendjs(){
		String sql="select js_emil from js";
		Object[] obj={};
		List list =  jdbc.query(sql, obj,new suiji());
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
			String jsemail =rs.getString("js_emil");
			System.out.println("--------------mail"+jsemail);
			return jsemail;
		}
		
	}
	//根据邮箱返回技师姓名
  public String checkjsname(String jsemail){
		//String mail=this.sendjs();
		String sql="select js_name from js where js_emil=?";
		Object[] obj={jsemail};
		List list =jdbc.query(sql,obj, new checkname());
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
	//------------------------------<<<<<随机技师方法>>>>>---------------------------
	
	//评价模块
	@Override
	public int pingjia(Plmodel model) {
		String wxzlpj=model.getWxzl().substring(0,1);
		String wxtdpj=model.getWxtd().substring(0,1);
		String smsdpj=model.getSmsd().substring(0,1);
		String sql="insert into userpingjia values(pingjia_seq.nextval,?,?,?,?,?,?)";
		Object[] obj={model.getUserid(),model.getJs(),wxzlpj,wxtdpj,smsdpj,model.getPl()};
		int x=0;
		x=jdbc.update(sql,obj); 
		return x;
	}
	//遍历技师
	@Override
	public List listjs() {
		String sql="select js_name from js";
		Object[] obj={};
		List list = jdbc.query(sql,obj, new listjs());
		return list;
	}
		class listjs implements RowMapper{

			@Override
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				String js_name=rs.getString(1);
				return js_name;
			}
			
		}
	//根据订单编号查询用户邮箱
		@Override
		public String pjcxusermail(int ddid) {
			String sql="select seruser_emailname from seruser where seruser_id = ?";
			Object[] obj={ddid};
			List list = jdbc.query(sql,obj,new pjxc());
			String name=list.get(0).toString();
			return name;
		}
		class pjxc implements RowMapper{

			@Override
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				String name=rs.getString(1);
				return name;
			}
			
	  }
	//根据技师姓名查询技师信息
		
		//-------------基本信息
		@Override
		public List jsinfo(String js) {
			String sql="select * from  js where js_name=?";
			Object[] obj ={ js };
			List list = jdbc.query(sql,obj,new cxjsinfo());
			return list;
		}
		class cxjsinfo implements RowMapper{

			@Override
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				Model model= new Model();
				model.setJs_id(rs.getString("js_id"));
				model.setJs_name(rs.getString(2));
				model.setJs_nj(rs.getString(3));
				model.setJs_zy(rs.getString(4));
				model.setJs_jj(rs.getString(5));
				model.setJs_tp(rs.getString(6));
				model.setJs_emil(rs.getString(7));
				return model;
			}
			
		}
	  //------------评价信息
		@Override
		public List avgjs(String js) {
			String sql="select round(avg(wxzl),1),round(avg(wxtd),1),round(avg(smsd),1) from userpingjia where js=?";
			Object[] obj={js};
			List list = jdbc.query(sql, obj, new cxpj());
			return list;
		}
		class cxpj implements RowMapper{

			@Override
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				Plmodel model= new Plmodel();
				model.setWxzl(rs.getString(1));
				model.setWxtd(rs.getString(2));
				model.setSmsd(rs.getString(3));
				return model;
			}
			
		}
		//----- 长评价
		@Override
		public List cpl(String js) {
			String sql="select user_pl from userpingjia where js=?";
			Object[] obj={js};
			List list = jdbc.query(sql, obj,new cxcpl());
			return list;
		}
		class cxcpl implements RowMapper{

			@Override
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				String cpl=rs.getString(1);
				return cpl;
			}
	   }
		//全部技师信息查询
		@Override
		public List alljsinfo() {
			String sql="select * from js";
			Object[] obj={};
			List list=jdbc.query(sql, obj,new allinfo());
			return list;
		}		
		class allinfo implements  RowMapper{

			@Override
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			Model model= new Model();
			model.setJs_id(rs.getString(1));
			model.setJs_name(rs.getString(2));;
			model.setJs_nj(rs.getString(3));
			model.setJs_zy(rs.getString(4));
			model.setJs_jj(rs.getString(5));
			model.setJs_tp(rs.getString(6));
			model.setJs_emil(rs.getString(7));
			
			return model;
			}
			
		}
		
		//评价人数
		@Override
		public List pjcount(String js) {
			String sql="select count (userid) from userpingjia where js=?";
			Object[] obj={js};
			List list =jdbc.query(sql,obj,new count());
			
			return list;
		}
		class count implements RowMapper{

			@Override
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				int x=0;
				x=rs.getInt(1);
				return x;
			}
			
		}
		
}
