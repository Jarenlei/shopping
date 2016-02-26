package cn.spring.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import cn.spring.dto.ForWebDto;
import cn.spring.dto.SearchDto;
import cn.spring.entity.Environment;
import cn.spring.logic.EntryLogic;
import cn.spring.logic.ForWebLogic;
import cn.spring.logic.NoticeLogic;
import cn.spring.logic.SearchLogic;

@Controller
public abstract class AbstractController {
	
	@Resource
	protected ForWebDto webDto;
	
	@Resource
	protected SearchDto searchDto;
	
	@Resource
	protected ForWebLogic logic;
	
	@Resource
	protected Environment env;
	
	@Resource
	protected EntryLogic entrylogic;
	
	@Resource
	protected NoticeLogic noticeLogic;
	
	@Resource 
	protected SearchLogic searchLogic;
        
    //得到cookie的值
    protected String getCookieValue(HttpServletRequest request,String key) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(key)) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

  //删除cookie的值
    protected void removeCookie(HttpServletRequest request,String key,HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(key)) {
                    cookie.setMaxAge(0);
                    cookie.setPath("/");
                    cookie.setValue(null);
                    response.addCookie(cookie);
                }
            }
        }
    }

    //设置uname到cookie中
    protected void setUserName(HttpServletResponse response,String key) {
        Cookie cookie = new Cookie("username", key);
        cookie.setMaxAge(Integer.MAX_VALUE);
        cookie.setPath("/");
        response.addCookie(cookie);
    }
    
    //设置webDto的值返回主页
    protected void getWebDto(HttpServletRequest request){
        String feature=request.getRealPath(File.separator)+env.getValue("featurebanner");
        webDto.setImageList(logic.getImages(feature));
        webDto.setNoticeList(logic.getNotices());
        request.setAttribute("webDto", webDto);
    }
}
