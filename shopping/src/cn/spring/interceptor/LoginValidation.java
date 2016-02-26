package cn.spring.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginValidation implements HandlerInterceptor {

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3) throws Exception {
        
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse arg1, Object response, ModelAndView arg3) throws Exception {
        
    }

    /**
     * 在urls中加入公开url，这样可以验证用户是事登陆状态，如不是则跳转到登陆页面登陆;
     * 可设置多个第二个拦截器，用于用户的权限管理，放在拦截器的第二个位置;
     * {@inheritDoc}
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
        String[] urls=new String[]{"/person.jsp"};
        String url=request.getRequestURL().toString();
        
        for(String str:urls){
            if(url.indexOf(str)>0){
                String username=(String)request.getSession().getAttribute("username");
                if(username==null){
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                    return false;
                }
            }
        }
        return true;
    }

    
}
