package filter;


import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IsLogin implements Filter{
    @Override
    public void destroy() {
        // TODO Auto-generated method stub
        System.out.println("过滤器销毁");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        // TODO Auto-generated method stub
        HttpServletRequest req=(HttpServletRequest)request;
        HttpServletResponse resp=(HttpServletResponse)response;
        HttpSession ses=req.getSession();
        if(ses.getAttribute("username")!=null)
        {
            chain.doFilter(request, response);
        }
        else
        {
            //resp.sendRedirect("login.jsp");
            resp.sendRedirect("error.jsp");
        }
    }
    @Override
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub
        String initParam=arg0.getInitParameter("ref");
        System.out.println("过滤器初始化参数为："+initParam);
    }
}
