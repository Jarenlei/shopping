package cn.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.spring.entity.User;

@Controller
@RequestMapping("entry")
public class RegistController extends AbstractController{
	
	
    @ResponseBody
    @RequestMapping(value="index",method=RequestMethod.POST)  
    public String getMap(@ModelAttribute User user){  
    	int result=entrylogic.insert(user);
    	if(result!=1){
    	    return "0";
    	}
        return "1";
    } 
    
    @ResponseBody
    @RequestMapping(value="model",method=RequestMethod.POST)
    public String login(User user,String saveme,HttpSession session,HttpServletResponse response,HttpServletRequest request){
        User user1=null;
        user1 = entrylogic.getUserByNameAndPass(user);
        if(user1 != null){
            session.setAttribute("userName", user.getUname());
            session.setAttribute("userId", user.getUid());
            if("1".equals(saveme)){
                setUserName(response,user1.getUname());
            }else{
                removeCookie(request,"username",response);
            }
            return "1";
        }
        return "0";
    }
    
    @ResponseBody
    @RequestMapping(value="validate",method=RequestMethod.POST)
    public String getVaildate(String uname){
        int result=entrylogic.select(uname);
        if(result!=0){
            return "1";
        }
        return "0";
    }
}
