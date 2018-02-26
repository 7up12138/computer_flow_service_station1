package com.stx.spring.Mydbimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.Mydbimpl.SelectPostDao.simpleresultsetmessage;
import com.stx.spring.Mydb.IReplyDao;
import com.stx.spring.Mymodel.TBModel;

@Repository
public class ReplyDao implements IReplyDao {
	@Resource
	private JdbcTemplate jdbcTemplate;
	@Override
	public List<TBModel> insertreplymsg(int reply_id,String replymsg,String replyuserid) {
		// TODO Auto-generated method stub
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");		
		String sql="insert into tbl_reply values(reply_seq.nextval,?,?,?,?)";
		Object[] obj={reply_id,replyuserid,date.format(new Date()),replymsg};
		int i=jdbcTemplate.update(sql,obj);
			String sqlselect="select * from (select * from tbl_reply where reply_post_id=?) order by reply_id desc";
			Object[] objselect={reply_id};
			List<TBModel> list=jdbcTemplate.query(sqlselect, objselect ,new simpleresultsetmessage());
		
		return list;
	}
	class simpleresultsetmessage implements RowMapper
	{
		@Override
		public TBModel mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
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
	public List<TBModel> selectreplymsg(int topic_id,int replyid) {
		// TODO Auto-generated method stub
		String sqlreply="delete from tbl_reply where reply_id=?";
		Object[] objdelete={replyid};
		int i=jdbcTemplate.update(sqlreply,objdelete);
		String sqlselect="select * from (select * from tbl_reply where reply_post_id=?) order by reply_id desc";
		Object[] objselect={topic_id};
		List<TBModel> list=jdbcTemplate.query(sqlselect, objselect ,new simpleresultsetmessage());
		return list;
	}
}
