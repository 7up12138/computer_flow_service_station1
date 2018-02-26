package com.stx.spring.Mydbimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.Mydb.Admindb;
import com.stx.spring.Mymodel.Mymodel;

@Repository
public class Admindbimpl implements Admindb {
	@Resource
	private JdbcTemplate jdbc;
	//管理员登录
	@Override
	public String login(String emailname, String password) {
		String sql="select admin_mail from admininfo where admin_mail=? and admin_pwd=?";
		Object[] obj={emailname,password};
		List list=jdbc.query(sql, obj,new xclogin());
		String uname="";
		if(list.size()>0){
		uname=list.get(0).toString();
		}else{
			uname="";
		}
		return uname;
	}
	class xclogin implements RowMapper{

		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			String name=rs.getString(1);
			return name;
		}
		
	}
	//完成订单信息
	@Override
	public List<Mymodel> wcddinfo() {
		String sql="select * from seruser where seruser_flag='完成'";
		Object[] obj={};
		List<Mymodel> list=jdbc.query(sql, obj,new cxwc());
		return list;
	}
	class cxwc implements RowMapper{

		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				Mymodel model= new Mymodel();
				model.setId(rs.getInt(1));
				model.setQname(rs.getString(3));
				model.setPname(rs.getString(4));
				model.setPhonenum(rs.getString(5));
				model.setYyjs(rs.getString(6));
				model.setYyplace(rs.getString(7));
				model.setYytime(rs.getString(8));
				model.setFlag(rs.getString(9));
			return model;
		}
		
	}
	//未完成订单
	@Override
	public List wwcinfo() {
		String sql="select * from seruser where seruser_flag='未完成'";
		Object[] obj={};
		List<Mymodel> list=jdbc.query(sql, obj,new cxwc());
		return list;
	}
	
	
	//确认订单完成
	@Override
	public int quern(int ddid) {
		int x=0;
		String sql="update seruser set seruser_flag='完成' where seruser_id=? ";
		Object[] obj={ddid};
		x=jdbc.update(sql,obj);
		return x;
	}

	//删除订单模块
	@Override
	public int deleteid(int ddid) {
		int x = 0;
		System.out.println(ddid+"-----------");
		String sql="delete from seruser where seruser_id=?";
		Object[] obj={ddid};
		x=jdbc.update(sql,obj);
		return x;
	}
	
}
