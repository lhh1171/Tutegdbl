package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author lqc
 */
public class LengthArea extends HttpServlet{
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    //重写doGet方法
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double radius=Double.parseDouble(request.getParameter("radius"));
        calculatingLengthArea(request,response,radius);

    }

    // 重写doPost方法
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    }
    private void calculatingLengthArea(HttpServletRequest request, HttpServletResponse response,double radius) throws IOException
    {
        double length=2*Math.PI*radius;
        double area=Math.PI*radius*radius;
        System.out.println("Radius=" + radius);
        System.out.println("Lengh=" + length);
        System.out.println("Area=" + area);
        response.setContentType("text/html");
        response.getWriter().println("Radius=" + radius+"<br>");
        response.getWriter().println("Lengh=" + length+"<br>");
        response.getWriter().println("Area=" + area+"<br>");
    }
}