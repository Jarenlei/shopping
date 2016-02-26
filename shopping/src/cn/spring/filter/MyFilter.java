package cn.spring.filter;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.springframework.stereotype.Component;

import cn.spring.dto.ForWebDto;
import cn.spring.entity.Environment;
import cn.spring.logic.ForWebLogic;

@Component
public class MyFilter implements Filter{

    @Resource
    protected ForWebDto webDto;
    
    @Resource
    protected Environment env;
    
    @Resource
    protected ForWebLogic logic;
    
    @Override
    public void destroy() {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        chain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub
        
    }
        
}
