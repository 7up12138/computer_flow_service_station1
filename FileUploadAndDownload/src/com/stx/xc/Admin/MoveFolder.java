    package com.stx.xc.Admin;  
import java.io.*;   
import java.util.*;   

public class MoveFolder{
	
public void move(String tempfilename,String realfilename){
	LinkedList<String> folderList = new LinkedList<String>();   
	folderList.add(tempfilename);   
	LinkedList<String> folderList2 = new LinkedList<String>();   
	folderList2.add(realfilename+ tempfilename.substring(tempfilename.lastIndexOf("\\")));   
	while (folderList.size() > 0) {   
    (new File(folderList2.peek())).mkdirs(); // 如果文件夹不存在 则建立新文件夹   
    File folders = new File(folderList.peek());   
    String[] file = folders.list();   
    File temp = null;   
    try {   
        for (int i = 0; i < file.length; i++) {   
            if (folderList.peek().endsWith(File.separator)) {   
                temp = new File(folderList.peek() + File.separator + file[i]);   
            } else {   
                temp = new File(folderList.peek() + File.separator + file[i]);   
            }   
            if (temp.isFile()) {   
                FileInputStream input = new FileInputStream(temp);   
                FileOutputStream output = new FileOutputStream(   
                folderList2.peek() + File.separator + (temp.getName()).toString());   
                byte[] b = new byte[5120];   
                int len;   
                while ((len = input.read(b)) != -1) {   
                    output.write(b, 0, len);   
                }   
                output.flush();   
                output.close();   
                input.close();   
                if (!temp.delete())   
                System.out.println("删除单个文件操作出错!");   
            }   
            if (temp.isDirectory()) {// 如果是子文件夹   
                for (File f : temp.listFiles()) {   
                    if (f.isDirectory()) {   
                        folderList.add(f.getPath());   
                        folderList2.add(folderList2.peek() + File.separator + f.getName());   
                    }   
                }   
            }   
        }   
    } catch (Exception e) {   
        // System.out.println("复制整个文件夹内容操作出错");   
        e.printStackTrace();   
    }   
    folderList.removeFirst();   
    folderList2.removeFirst();   
}   
File f = new File(tempfilename);   
if (!f.delete()) {   
    for (File file : f.listFiles()) {   
        if (file.list().length == 0) {   
            System.out.println(file.getPath());   
            file.delete();   
        		}   
    		}   
		}
	}   
}