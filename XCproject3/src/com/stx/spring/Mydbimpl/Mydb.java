package com.stx.spring.Mydbimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.Mydb.Imydb;
import com.stx.spring.Mymodel.Model;
@Repository
public class Mydb implements Imydb {

	@Resource
	private JdbcTemplate jdbctemplate;
	@Override
	public List<Model> all() {
		// TODO Auto-generated method stub
		String sql="select * from js";
		Object[] obj=null;
		
		List<Model> list=jdbctemplate.query(sql, obj,new jsall());
		return list;
	}
	class jsall implements RowMapper
	{

		@Override
		public Model mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			Model mo=new Model();
			mo.setJs_id(rs.getString("js_id"));
			mo.setJs_name(rs.getString("js_name"));
			mo.setJs_nj(rs.getString("js_nj"));
			mo.setJs_zy(rs.getString("js_zy"));
			mo.setJs_jj(rs.getString("js_jj"));
			mo.setJs_tp(rs.getString("js_tp"));
			mo.setJs_emil(rs.getString("js_emil"));
			
			return mo;
		}
		
	}
	@Override
	public int delete(String username) {
		// TODO Auto-generated method stub
		String sql="delete from js where js_id=?";
		Object[] obj={username};
		int i=jdbctemplate.update(sql,obj);
		return i;
	}
	@Override
	public int update(String id, String name, String nj, String zy, String jj,String emil,String tp) {
		// TODO Auto-generated method stub
		String sql="update js set js_name=?,js_nj=?,js_zy=?,js_jj=?,js_emil=?,js_tp=? where js_id=?";
		Object[] obj={name,nj,zy,jj,emil,tp,id};
		int i=jdbctemplate.update(sql,obj);
		return i;
	}
	@Override
	public int insert1(String id, String name, String nj, String zy, String jj,String emil,String tp) {
		// TODO Auto-generated method stub
	
		String sql="insert into js values(js_seq.nextval,?,?,?,?,?,?)";
		Object[] obj={name,nj,zy,jj,tp,emil};
		int i=jdbctemplate.update(sql,obj);
		return i;
	}
}
