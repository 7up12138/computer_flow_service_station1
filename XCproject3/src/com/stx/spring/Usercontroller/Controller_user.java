package com.stx.spring.Usercontroller;

import java.io.*;

import java.util.List;

import javax.annotation.Resource;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.stx.spring.Userservice.Iuserservice;
import com.stx.spring.Mymodel.Model;

@Controller
public class Controller_user {
   
	@Resource
   private Iuserservice iuserservice;
   
   @RequestMapping("all.do")
   public String  all(HttpServletRequest request)
   {
	  List<Model> list=iuserservice.all();
	  request.setAttribute("list", list);
	  return "info";
   }
   @RequestMapping("delete.do")
   public String delete(String username,HttpServletRequest request)
   {
	   
	   iuserservice.delete(username);
	       List<Model> list=iuserservice.all();
		   request.setAttribute("list", list);
		   return "info";
   }
   @RequestMapping("update.do")
   public String update(String id,String name,String nj,String zy,String jj,String emil,String tp,HttpServletRequest request)  throws Exception, IOException
   {
	   System.out.println(id+"+"+name+"+"+nj+"+"+zy+"+"+jj+"+"+emil+""+tp);
	      int i=iuserservice.update(id,name,nj,zy,jj,emil,tp);
	      System.out.println("+++++"+i);
	 
		   List<Model> list=iuserservice.all();
		   HttpSession session=request.getSession();
		   session.setAttribute("list", list);
		   return "info";
   }
   @RequestMapping("update1.do")
   public String update1(String id,String name,String nj,String zy,String jj,String emil,String tp,HttpServletRequest request)
   {
	   Model mo=new Model();
	   mo.setJs_id(id);
	   mo.setJs_name(name);
	   mo.setJs_nj(nj);
	   mo.setJs_zy(zy);
	   mo.setJs_jj(jj);
	   mo.setJs_tp(tp);
	   mo.setJs_emil(emil);
	   HttpSession session=request.getSession();
	   session.setAttribute("aa", mo);
	 //  request.setAttribute("update", mo);
	   return "update";
   }
   @RequestMapping("insert.do")
   public String insert()
   {
	   return "insert1";
   }
   @RequestMapping("insert1.do")
   public String insert1(String id,String name,String nj,String zy,String jj,String emil,String tp,HttpServletRequest request)
   {
	   int i=0;
	 
	   i=iuserservice.insert1(id,name, nj, zy,jj,emil,tp);
	  
		   List<Model> list=iuserservice.all();
	       request.setAttribute("list", list);  
	       return "info";
   }
   @RequestMapping("photo.do") 
   public String uploadfile(@RequestParam("file1") MultipartFile file1,HttpServletRequest request ) throws Exception, IOException
   {
	   String filepath=request.getServletContext().getRealPath("\\");
       System.out.println(filepath);
       file1.transferTo(new File(filepath+"upload\\"+file1.getOriginalFilename()));
       System.out.println("upload\\"+file1.getOriginalFilename());
       request.setAttribute("qq", "upload\\"+file1.getOriginalFilename());
       return "insert1";
   }
   
   @RequestMapping("photo1.do")
   public String uploadfile1(@RequestParam("file1") MultipartFile file1,HttpServletRequest request ) throws Exception, IOException
   {
      
	   String filepath=request.getServletContext().getRealPath("\\");
       System.out.println(filepath);
       file1.transferTo(new File(filepath+"upload\\"+file1.getOriginalFilename()));
       System.out.println("upload\\"+file1.getOriginalFilename());
       request.setAttribute("bb","upload\\"+file1.getOriginalFilename());

       return "update1";
   	
   }
    
}
