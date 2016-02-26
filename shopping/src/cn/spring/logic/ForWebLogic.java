package cn.spring.logic;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import cn.spring.dao.NoticeDao;
import cn.spring.dao.UserDao;
import cn.spring.entity.Notice;
import cn.spring.util.FileUtil;

@Component
public class ForWebLogic {

	@Resource
	private FileUtil fileUtil;
	
	@Resource
	private NoticeDao noticeDao;
	
	@Resource
	private UserDao userDao;
	
	public List<String> getFileTime(String fileName){
		List<String> list=new ArrayList<String>();
		File file=new File(fileName);
    	File[] images=file.listFiles();
    	for(File image:images){
    		String imageName=image.getName();
    		String imageType=imageName.substring(imageName.lastIndexOf(".")+1,imageName.length());
    		if("jpg".equals(imageType)||"png".equals(imageType)){
    			String imageTime=imageName.substring(imageName.lastIndexOf("_")+1,imageName.lastIndexOf("."));
    			list.add(imageTime);
    		}
    	}
		return list;
	}
	
	public List<String> getImages(String fileName){
		List<String> list=new ArrayList<String>();
		List<String> imageList=new ArrayList<String>();
		list=getFileTime(fileName);
		int[] times=new int[list.size()];
		for(int i=0;i<times.length;i++){
			try{
				times[i]=Integer.parseInt(list.get(i));
			}catch(Exception e){
				times[i]=0;
			}
		}
		Arrays.sort(times);
		int max=times.length;
		for(int i=1;i<11;i++){
			imageList.add("featurebanner_"+times[max-i]+".jpg");
		}
		return imageList;
	}

    public List<Notice> getNotices() {
        return noticeDao.getIndexNotice(3);
    }
}
