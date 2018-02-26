    package com.stx.xc.Admin;  
      
    import java.io.File;  
import java.io.FileInputStream;  
import java.io.FileNotFoundException;  
import java.io.FileOutputStream;  
import java.io.IOException;  
import java.io.InputStream;  
      
    public class MoveFile {  
      
          
        public void move(String tempfilename,String realfilename) { 
        	
        	
        	System.out.println(tempfilename);
        	System.out.println(realfilename);
            File file1 = new File(tempfilename);  
            File file2 = new File(realfilename);  
            //在程序结束时删除文件1  
            file1.deleteOnExit();  
            try {  
                //在D盘创建文件2  
                file2.createNewFile();  
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
            cutFile(file1, file2);  
        }  
        public  void cutFile(File file1, File file2){  
            FileOutputStream fileOutputStream = null;  
            InputStream inputStream = null;  
            byte[] bytes = new byte[1024];  
            int temp = 0;  
            try {  
                inputStream = new FileInputStream(file1);  
                fileOutputStream = new FileOutputStream(file2);  
                while((temp = inputStream.read(bytes)) != -1){  
                    fileOutputStream.write(bytes, 0, temp);  
                    fileOutputStream.flush();  
                }  
            } catch (FileNotFoundException e) {  
                e.printStackTrace();  
            }catch (IOException e) {  
                e.printStackTrace();  
            }finally{  
                if (inputStream != null) {  
                    try {  
                        inputStream.close();  
                    } catch (IOException e) {  
                        e.printStackTrace();  
                    }  
                }  
                if (fileOutputStream != null) {  
                    try {  
                        fileOutputStream.close();  
                    } catch (IOException e) {  
                        e.printStackTrace();  
                    }  
                }  
            }  
              
        }
 
    }  