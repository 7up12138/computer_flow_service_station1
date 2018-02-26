package com.stx.xc.AdminServlet;

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

import com.stx.xc.Admin.MoveFile;
import com.stx.xc.Admin.MoveFolder;

/**
 * Servlet implementation class Move
 */
@WebServlet("/Move")
public class Move extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Move() {
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
		String fileName = request.getParameter("filename");  //23239283-92489-阿凡达.avi
		System.out.println(fileName+"-------------------------------------");
        fileName = new String(fileName.getBytes("iso8859-1"),"UTF-8");
        //上传的文件都是保存在/WEB-INF/upload目录下的子目录当中
      
        String fileSaveRootPath=this.getServletContext().getRealPath("/WEB-INF/upload");
        //通过文件名找出文件的所在目录
        String path = findFileSavePathByFileName(fileName,fileSaveRootPath);
        File file = new File(path + "\\" + fileName);
        
        
        String path2 = newFileName(fileName,fileSaveRootPath);
        File newfile = new File(path2 + "\\" + fileName);
        //如果文件不存在
        System.out.println(path);
        System.out.println(path2);
     
        /*if(!file.exists()){
            request.setAttribute("message", "您要审核的资源不存在");
            request.getRequestDispatcher("/message.jsp").forward(request, response);
            return;
        }*/
        //处理文件名
        MoveFolder mv=new MoveFolder();
        
        String tempfilename = path;
        String realfilename = path2;
        mv.move(tempfilename, realfilename);
       // response.sendRedirect("/FileUploadAndDownload/CheCkFile");
        request.getRequestDispatcher("CheckFile").forward(request, response);

    }
    
		
		
        public String findFileSavePathByFileName(String filename,String saveRootPath){
            int hashcode = filename.hashCode();
            int dir1 = hashcode&0xf;  //0--15
            int dir2 = (hashcode&0xf0)>>4;  //0-15
            String dir = saveRootPath  +"\\" + dir1 + "\\" + dir2;  //upload\2\3  upload\3\5
            File file = new File(dir);
            if(!file.exists()){
                //创建目录
                file.mkdirs();
            }
            return dir;
        }
		
        public String newFileName(String filename,String saveRootPath){
            int hashcode = filename.hashCode();
            int dir1 = hashcode&0xf;  //0--15
            int dir2 = (hashcode&0xf0)>>4;  //0-15
            String dir = saveRootPath  + "upload" +"\\" + dir1 + "\\" + dir2+ "\\";  //upload\2\3  upload\3\5
            File file = new File(dir);
            if(!file.exists()){
                //创建目录
                file.mkdirs();
            }
            return dir;
        }
		
		/*
		String tempfilename=(String)request.getParameter("${downurl}");
		String realfilename=(String)request.getParameter("${me.value}");
		MoveFile mv=new MoveFile();
		mv.move(tempfilename, realfilename);
		
		response.sendRedirect("/FileUploadAndDownload/Admin/checkfile.jsp");
		 */
		
	}


