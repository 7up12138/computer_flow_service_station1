package com.stx.spring.Usercontroller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.spring.Userservice.IOpenText;
import com.stx.spring.Userservice.ISelectPost;
import com.stx.spring.Mymodel.TBModel;

@Controller
@RequestMapping("/TBModel")
public class InserttexttopicController {
	@Resource
	private IOpenText iopentext;	
	
	@RequestMapping("inserttopicpost.do")
	public String InputText(TBModel TBModel,HttpServletRequest request)
	{
		//System.out.println(TBModel.getPost_content()+" "+TBModel.getTopic_user_id()+"  "+TBModel.getTopic_title());
			System.out.println("123----------------"+TBModel.getTopic_user_id());
			List<TBModel> list=iopentext.inputmasgtb(TBModel);					
			request.setAttribute("postcontent", list);	
			return "ReturnSelectPostMessage";		
					
	}
	
	@RequestMapping("topicdelete.do")
	public String DeleteText(String topicdelete,HttpServletRequest request)
	{
			System.out.println("��ʱ��ʫ������������      "+topicdelete);
			List<TBModel> list=iopentext.deletetb(topicdelete);	
			System.out.println(list);
			request.setAttribute("postcontent", list);	
			return "ReturnSelectPostMessage";		
			
		
		
	}

}
