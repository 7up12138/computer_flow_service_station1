package com.stx.spring.Userserviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.spring.Mydb.IReplyDao;
import com.stx.spring.Userservice.IReply;
import com.stx.spring.Mymodel.TBModel;

@Service
public class Reply implements IReply {
	@Resource
	private IReplyDao replydao;
	@Override
	public List<TBModel> insertReplymsg(int reply_id, String replymsg,String replyuserid) {
		// TODO Auto-generated method stub
		List<TBModel> list=replydao.insertreplymsg(reply_id,replymsg,replyuserid);
		return list;
	}
	@Override
	public List<TBModel> selectReplymsg(int topic_id,int replyid) {
		// TODO Auto-generated method stub
		List<TBModel> list=replydao.selectreplymsg(topic_id,replyid);
		return list;
	}
	
}
