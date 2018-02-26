package com.stx.spring.Mydbimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.Mydb.ISelectPostDao;
import com.stx.spring.Mymodel.TBModel;


@Repository
public class SelectPostDao implements ISelectPostDao{
	@Resource
	private JdbcTemplate jdbcTemplate;
	@Override
	public List<TBModel> SelectPostContextMessageall() { //��ѯȫ���ı��������
		String sql="select * from (select tbl_topic.topic_id,tbl_topic.topic_title,tbl_topic.topic_user_id,tbl_topic.topic_time,tbl_post.post_content from tbl_topic,tbl_post where tbl_topic.topic_id=tbl_post.post_topic_id) order by topic_id desc";
		Object[] obj=null;
		List<TBModel> list=jdbcTemplate.query(sql, obj ,new resultsetmessage());		
		// TODO Auto-generated method stub
		return list;
	}
	class loginselect implements RowMapper
	{

		@Override
		public TBModel mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			TBModel mologin=new TBModel();
			mologin.setRegisteruser_email(rs.getString("Registeruser_email"));
			mologin.setRegisteruser_pwd(rs.getString("Registeruser_pwd"));;
			//mologin.setUser_power(rs.getInt("user_power"));
			return mologin;
		}
		
	} 
	class resultsetmessage implements RowMapper
	{

		@Override
		public TBModel mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			TBModel mo=new TBModel();
			mo.setTopic_id(rs.getInt("Topic_id"));
			mo.setTopic_title(rs.getString("Topic_title"));
			mo.setTopic_user_id(rs.getString("Topic_user_id"));
			mo.setTopic_time(rs.getString("Topic_time"));
			mo.setPost_content(rs.getString("Post_content"));
			return mo;
		}
		
	} 
	@Override
	public List<TBModel> SimpleSelectPostContextMessageall(int topic_id) {
		// TODO Auto-generated method stub
		String sql="select * from (select * from tbl_reply where reply_post_id=?) order by reply_id desc";
		Object[] obj={topic_id};
		List<TBModel> list=jdbcTemplate.query(sql, obj ,new simpleresultsetmessage());
		return list;
	}
	class simpleresultsetmessage implements RowMapper
	{
		@Override
		public TBModel mapRow(ResultSet rs, int arg1) throws SQLException {
			TBModel mo=new TBModel();
			mo.setReply_id(rs.getInt("reply_id"));
			mo.setReply_post_id(rs.getInt("reply_post_id"));
			mo.setReply_user_id(rs.getString("reply_user_id"));
			mo.setReply_time(rs.getString("reply_time"));
			mo.setReply_content(rs.getString("reply_content"));
			return mo;
		}

	}
	@Override
	public List<TBModel> loginuserlogin(TBModel TBModel) {
		// TODO Auto-generated method stub
		String sqllogin="select * from tbl_userlogin where user_id=? and user_pwd=?";
		Object[] objlogin={TBModel.getRegisteruser_email(),TBModel.getRegisteruser_pwd()};
		 List<TBModel> listlogin=jdbcTemplate.query(sqllogin, objlogin, new loginselect());
		return listlogin;
	}
}
