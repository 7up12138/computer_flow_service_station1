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

import com.stx.spring.Mydbimpl.SelectPostDao.resultsetmessage;
import com.stx.spring.Mydb.IInsertTopicDao;
import com.stx.spring.Mymodel.TBModel;

@Repository
public class InsertTopicDao implements IInsertTopicDao {
	@Resource
	private JdbcTemplate jdbcTemplate;
	@Override
	public List<TBModel> insertopictext(TBModel tBModel) {
		// TODO Auto-generated method stub
		 List<TBModel> list=null;
		//System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDD"+tBModel.getPost_content());
		if(tBModel.getTopic_user_id().equals("")||tBModel.getTopic_user_id().equals(null))
		{
			System.out.println("用户为空");
		}
		else
		{
			if(tBModel.getTopic_title().equals("")||tBModel.getTopic_title().equals(null))
				{System.out.println("标题为空");}
			else
			{
				if(tBModel.getPost_content().equals("")||tBModel.getPost_content().equals(null))
						{System.out.println("内容为空");}
				else
				{
					SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");	
					String sqltopic="insert into tbl_topic values(topic_seq.nextval,?,?,?)";			
					Object[] objtopic={tBModel.getTopic_title(),tBModel.getTopic_user_id(),date.format(new Date())};
					int ia=jdbcTemplate.update(sqltopic, objtopic);
					String sqlpost="insert into tbl_post values(post_seq.nextval,?,?)";
					Object[] objpost={tBModel.getTopic_user_id(),tBModel.getPost_content()};						
					int ib=jdbcTemplate.update(sqlpost, objpost);
					if(ia>0 && ib>0)
						{System.out.println("����ɹ���");							}
					else{System.out.println("����ʧ���ˣ�");}
					String sql="select * from (select tbl_topic.topic_id,tbl_topic.topic_title,tbl_topic.topic_user_id,tbl_topic.topic_time,tbl_post.post_content from tbl_topic,tbl_post where tbl_topic.topic_id=tbl_post.post_topic_id) order by topic_id desc";
					Object[] obj=null;
					list=jdbcTemplate.query(sql, obj ,new insertselectmessage());
				 
				}
			}
	}
		return list;
	}
	
	class insertselectmessage implements RowMapper
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
			//System.out.println(rs.getString("Topic_title"));
			//System.out.println(rs.getInt("Topic_id")+rs.getString("Topic_title")+rs.getString("Post_content"));
			return mo;
		}
		
	}

	@Override
	public List<TBModel> insertopictext(String topicdelete) {
		// TODO Auto-generated method stub
		Object[] obj={topicdelete};
		String sqltopic="delete from tbl_topic where topic_id=?";
		jdbcTemplate.update(sqltopic,obj);
		String sqlpost="delete from tbl_post where post_topic_id=?";
		jdbcTemplate.update(sqlpost,obj);
		String sqlreply="delete from tbl_reply where reply_post_id=?";
		jdbcTemplate.update(sqlreply,obj);
		
		String sqlselectall="select * from (select tbl_topic.topic_id,tbl_topic.topic_title,tbl_topic.topic_user_id,tbl_topic.topic_time,tbl_post.post_content from tbl_topic,tbl_post where tbl_topic.topic_id=tbl_post.post_topic_id) order by topic_id desc";;
		Object[] objselectall=null;
		List<TBModel> listselectall=jdbcTemplate.query(sqlselectall, objselectall ,new insertselectmessage());
		return listselectall;
	} 

}
