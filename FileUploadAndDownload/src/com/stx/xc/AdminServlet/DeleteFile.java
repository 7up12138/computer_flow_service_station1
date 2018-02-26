package com.stx.xc.AdminServlet;

import java.io.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteFile
 */
@WebServlet("/DeleteFile")
public class DeleteFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*
		String filepath=request.getParameter("filepath");
		System.out.println(filepath);
		   java.io.File file = new java.io.File(filepath);
          boolean del = file.delete(); 
          response.sendRedirect("Admin/checkfile.jsp");
          */
        //得到要下载的文件名
    	String fileName = request.getParameter("filepath");  //23239283-92489-阿凡达.avi
    	System.out.println(fileName);
        fileName = new String(fileName.getBytes("iso8859-1"),"UTF-8");
        //上传的文件都是保存在/WEB-INF/upload目录下的子目录当中
        String fileSaveRootPath=this.getServletContext().getRealPath("/WEB-INF/upload");
        //通过文件名找出文件的所在目录
        String path = findFileSavePathByFileName(fileName,fileSaveRootPath);
        //得到要下载的文件
        System.out.println(path);
       
        String newpath=path+"\\"+fileName;
        File file = new File(newpath);
        
        
        FileOutputStream fos = new FileOutputStream(newpath);
        OutputStreamWriter osw = new OutputStreamWriter(fos, "UTF-8");
        BufferedWriter bw = new BufferedWriter(osw);
        bw.close();
        
        
        
        //File file= new File(path);
        boolean a=file.delete();

        System.out.println(file);
        //如果文件不存在
        request.getRequestDispatcher("/servlet/CheckFile").forward(request,response);
        //response.sendRedirect(${pageContext.request.contextPath}/servlet/CheckFile);
        }
  
      
    	
//            request.setAttribute("message", "您要删除的资源不存在！！");
//            request.getRequestDispatcher("/message.jsp").forward(request, response);
//            return;
//        }
//        //处理文件名
//        String realname = fileName.substring(fileName.indexOf("_")+1);
//        //String filepath=request.getParameter("filepath");
    	  //System.out.println(path);
    	  //File defile = new File(path);
         
    
    
    
    //通过文件名和存储上传文件根目录找出要下载的文件的所在路径
    //filename 要下载的文件名
    // saveRootPath 上传文件保存的根目录，也就是/WEB-INF/upload目录
  
    public String findFileSavePathByFileName(String filename,String saveRootPath){
        int hashcode = filename.hashCode();
        int dir1 = hashcode&0xf;  //0--15
        int dir2 = (hashcode&0xf0)>>4;  //0-15
        String dir = saveRootPath + "\\" + dir1 + "\\" + dir2;  //upload\2\3  upload\3\5
        File file = new File(dir);
        if(!file.exists()){
            //创建目录
            file.mkdirs();
        }
       
        return dir;
    }
	
		
	

}
