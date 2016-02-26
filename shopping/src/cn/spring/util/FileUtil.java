package cn.spring.util;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class FileUtil {

	public String getMaxTime(List<String> list) {
		String maxTime=list.get(0);
		Date maxDate=StrToDate(list.get(0));
		Date date = null;
		for(int i=0;i<list.size();i++){
			date=StrToDate(list.get(i));
			if(maxDate.before(date)){
				maxDate=date;
			}
		}
		return maxTime;
	}
	
	/**
	* 字符串转换成日期
	* @param str
	* @return date
	*/
	public Date StrToDate(String str) {
	  
	   SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	   Date date = null;
	   try {
	    date = format.parse(str);
	   } catch (ParseException e) {
		   e.printStackTrace();
	   }
	   return date;
	}
	
	
}
