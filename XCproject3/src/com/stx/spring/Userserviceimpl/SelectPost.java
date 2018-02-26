package com.stx.spring.Userserviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.spring.Mydb.ISelectPostDao;
import com.stx.spring.Userservice.ISelectPost;
import com.stx.spring.Mymodel.TBModel;

@Service
public class SelectPost implements ISelectPost{
	@Resource
	private ISelectPostDao selectpsotdao;

	@Override
	public List<TBModel> SelectPostMessage() {
		// TODO Auto-generated method stub
		//System.out.println("��ʵ�ֲ���");
		List<TBModel>  list=selectpsotdao.SelectPostContextMessageall();
		return list;
	}

	@Override
	public List<TBModel> SimpleSelectPostMessage(int topic_id) {
		// TODO Auto-generated method stub
		//System.out.println("��ʵ�ֲ���"+topic_id);
		List<TBModel>  list=selectpsotdao.SimpleSelectPostContextMessageall(topic_id);
		return list;
	}

	@Override
	public List<TBModel> loginselect(TBModel tBModel) {
		// TODO Auto-generated method stub
		List<TBModel> listlogin=selectpsotdao.loginuserlogin(tBModel);
		return listlogin;
	}

}
