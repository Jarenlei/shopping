package cn.spring.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CommityController extends AbstractController{
    
    private final static String SUCCESS = "success";
    
    @ResponseBody
    @RequestMapping(value="android",method=RequestMethod.GET)
    public String getAndroid(HttpServletRequest request){
        return "It's from android!and params is "+request.getParameter("testAndroid");
    }
    
    @RequestMapping(value="upFile",method=RequestMethod.POST)
    public String testFileUpLoad(@RequestParam(value="fname") String fname,String intro,@RequestParam(value="file1") MultipartFile file1,@RequestParam(value="file2") MultipartFile file2,HttpServletRequest request){
        String realPath = request.getSession().getServletContext().getRealPath( "/") ;
        String parentPath = new File(realPath).getParent();
        
        String filePath = parentPath+File.separator+"files";
        String imagePath = parentPath+File.separator+"images";
        String file1Type = file2.getContentType().split("/")[1];
        System.out.println(file1Type);
        File files = new File(filePath);
        File imageFiles = new File(imagePath);
        if(!files.exists()){
            files.mkdirs();
        }
        if(!imageFiles.exists()){
            imageFiles.mkdirs();
        }      
        String fileName = fname+"."+file1Type;
        String imageName = System.currentTimeMillis()+".png";
        
        InputStream in1=null;
        InputStream in2=null;
        FileOutputStream out=null;
        byte[] temp =null;
        int cache=0;
        try {
            in1 = file1.getInputStream();
            in2 = file2.getInputStream();
            out=new FileOutputStream(new File(filePath+File.separator+fileName));
            System.out.println(filePath+File.separator+fileName);
            temp=new byte[1024];
            cache=0;
            while((cache=in1.read(temp))>0){
                out.write(temp, 0, cache);
            }
            out = new FileOutputStream(new File(imageFiles+File.separator+imageName));
            System.out.println(imageFiles+File.separator+imageName);
            temp=new byte[1024];
            cache=0;
            while((cache=in2.read(temp))>0){
                out.write(temp, 0, cache);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            if(out!=null||in1!=null||in2!=null){
                try {
                    out.close();
                    in1.close();
                    in2.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return "success";
    }
    
    /**
     * 
     * testRestを実行する。<br>
     * 这是springmvc的rest风格，其url将请求与参数分开，是人无法理解参数的具体含义，从而降低被恶意攻击的危险
     * @param id
     * @param name
     * @param status
     * @return
     */
    @RequestMapping(value="test/{id}/{name}/{status}",method=RequestMethod.GET)
    public String testRest(@PathVariable int id,@PathVariable String name,@PathVariable boolean status){
        System.out.println("id:"+id+",name:"+name+",status:"+status);
        
        return "WEB-INF/test";
    }
    
    @RequestMapping(value="download/{fileName}")
    public String download(@PathVariable(value="fileName")String fileName,HttpServletRequest request,HttpServletResponse response) throws IOException{
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("UTF-8");  
        java.io.BufferedInputStream bis = null;  
        java.io.BufferedOutputStream bos = null;  
  
        System.out.println(fileName);
        
        String realPath = request.getSession().getServletContext().getRealPath( "/") ;
        String parentPath = new File(realPath).getParent();
        String downLoadPath = parentPath + File.separator +"files"+File.separator+ "test1.png";  
        System.out.println(downLoadPath);  
        try {  
            long fileLength = new File(downLoadPath).length();  
            response.setContentType("application/x-msdownload;");  
            response.setHeader("Content-disposition", "attachment; filename="  
                    + new String("test1.png"));  
            bis = new BufferedInputStream(new FileInputStream(downLoadPath));  
            bos = new BufferedOutputStream(response.getOutputStream());  
            byte[] buff = new byte[2048];
            int bytesRead;  
            while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {  
                bos.write(buff, 0, bytesRead);  
            }  
        } catch (Exception e) {  
            e.printStackTrace();  
        } finally {  
            if (bis != null)  
                bis.close();  
            if (bos != null)  
                bos.close();  
        }  
        return null;  
    }
}
