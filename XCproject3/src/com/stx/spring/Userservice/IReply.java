package com.stx.spring.Userservice;

import java.util.List;

import com.stx.spring.Mymodel.TBModel;

public interface IReply {
	public List<TBModel> insertReplymsg(int topic_id, String replymsg,String replyuserid);

	public List<TBModel> selectReplymsg(int topic_id,int replyid);


}
