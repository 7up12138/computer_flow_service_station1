package com.stx.spring.Userserviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.spring.Mydb.IInsertTopicDao;
import com.stx.spring.Userservice.IOpenText;
import com.stx.spring.Mymodel.TBModel;

@Service
public class OpenText implements IOpenText{
	@Resource
	private IInsertTopicDao iinserttopicdao;
	@Override
	public List<TBModel> inputmasgtb(TBModel tBModel) {
		// TODO Auto-generated method stub
		//System.out.println(tBModel.getPost_content()+"-----------");
		List<TBModel> list=iinserttopicdao.insertopictext(tBModel);
		return list;
	}
	@Override
	public List<TBModel> deletetb(String topicdelete) {
		// TODO Auto-generated method stub
		List<TBModel> list=iinserttopicdao.insertopictext(topicdelete);
		return list;
	}

}
