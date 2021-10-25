package servlet;
import db.AccessUserFromDB;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteUser extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //返回上页
        String goBack="<br><a href='javascript:window.history.go(-1);'>返回上页</a>";

        response.setContentType("text/html;charset=gb2312");
        PrintWriter out = response.getWriter();

        String username=request.getParameter("username");
        if(username==null||username.equals(""))
        {
            out.print("用户名不能为空！");
            out.print(goBack);
        }

        AccessUserFromDB userDB=new AccessUserFromDB();
        if(!userDB.exists(username))
        {
            out.print("用户名不存在！");
            out.print(goBack);
            return;
        }
        try {
            userDB.Delete(username);
        } catch (SQLException e) {
            e.printStackTrace();
            out.print("删除失败:"+e.getLocalizedMessage());
            out.print(goBack);
            return;
        }
        out.print("删除成功！");
        out.print(goBack);
        out.close();
    }
}