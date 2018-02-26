package com.stx.spring.Usercontroller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.spring.Userservice.ISelectPost;
import com.stx.spring.Mymodel.TBModel;


@Controller
@RequestMapping("/TBModel")
public class SelectPostContent {
	@Resource
	private com.stx.spring.Userservice.ISelectPost selectpsot;
	@RequestMapping("userlogin.do")
	public String Userlogin(TBModel TBModel,HttpServletRequest request)
	{
		//System.out.println(TBModel.getUser_id()+TBModel.getUser_pwd());
		List<TBModel> listlogin=selectpsot.loginselect(TBModel);
		if(listlogin.size()>0)
		{
				TBModel tbmo=(TBModel)listlogin.get(0);
				HttpSession session=request.getSession();
				session.setAttribute("cg",tbmo);
			return "OnclickLYQ";
		}
		else
		{
			return "NewFile";
		}
		
	}
	@RequestMapping("selectpost.do")
	public String SelectMessage(HttpServletRequest request)
	{
//		System.out.println(TBModel.getUser_id()+TBModel.getUser_pwd());
		//System.out.println("���������");
		List<TBModel> list=selectpsot.SelectPostMessage();
		//System.out.println(list+"ssssssssssssss");
		request.setAttribute("postcontent", list);	

		return "ReturnSelectPostMessage";
	}
	
	@RequestMapping("simpselect.do")
	public String SimpleSelectMessage(int topic_id ,String title, String content, HttpServletRequest request)
	{
		//System.out.println("��������� "+topic_id+title+content);
		TBModel motwo=new TBModel();
		motwo.setTopic_id(topic_id);
		motwo.setTopic_title(title);
		motwo.setPost_content(content);
		List<TBModel> list=selectpsot.SimpleSelectPostMessage(topic_id);
		//System.out.println("������");
		request.setAttribute("title", motwo);
		request.setAttribute("Simple", list);	

		return "ReturnSimpleSelectPostMessage";
	}

}
