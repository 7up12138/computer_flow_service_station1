package com.stx.spring.Mydb;

import java.util.List;

import com.stx.spring.Mymodel.TBModel;

public interface IReplyDao {

	List<TBModel> insertreplymsg(int reply_id, String replymsg,String replyuserid);

	List<TBModel> selectreplymsg(int topic_id,int replyid);

}
