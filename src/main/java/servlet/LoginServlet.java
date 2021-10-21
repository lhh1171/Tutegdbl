package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class LoginServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        this.doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");              //设置响应的编码类型为GBK
        PrintWriter out=resp.getWriter();                //获取输出对象
        out.println("<html>");
        out.println("<head>");
        out.println("<title>用户登录</title>");
        out.println("</head>");
        out.println("<body>");
        //获取HttpSession实例
        HttpSession session=req.getSession();
        Boolean isLogin=(Boolean)session.getAttribute("isLogin");
        if(isLogin==null){
            isLogin=false;
        }
        //获取表单上的用户名
        String name=req.getParameter("username");
        //获取表单上的密码
        String password=req.getParameter("password");
        if(isLogin==true){
            name=(String)session.getAttribute("name");
            out.println("<center><h2>欢迎"+name+"登录</h2></center>");
        }else if(name!=null&&password!=null){
            //把用户名保存在HttpSession中
            session.setAttribute("name", name);
            //把密码保存在HttpSession中
            session.setAttribute("password", password);
            //把判断用户是否登录的字段保存在HttpSession中
            session.setAttribute("isLogin", true);
            out.println("<center><h2>欢迎"+name+"登录</h2></center>");
        }else{
            out.println("<h2>用户登录</h2>");
            out.println("<form action=login method=post>");
            out.println("用户名：<input type=text name=username >");
            out.println("<br>");
            out.println("密码：<input type=password name=password >");
            out.println("<br>");
            out.println("<input type=submit name=submit value=登录 >");
            out.println("<input type=reset name=reset value=重置 >");
            out.println("</form>");
        }
        out.println("</body>");
        out.println("</html>");
    }
}