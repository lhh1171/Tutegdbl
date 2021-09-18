<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/9/18
  Time: 下午4:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String IP = request.getRemoteAddr();
    Cookie[] cookies = request.getCookies();
    Cookie serverCookie=null;
    for(int i=0;i<cookies.length;i++) {
        if (IP.equals(cookies[i].getName())) {
            serverCookie = cookies[i];
        }
    }
    if(serverCookie==null){
        Date date = new Date();
        String time = date.getYear()+"年"+date.getMonth()+"月"+date.getDay()+"日"+date.getHours()+"时"+date.getMinutes()+"分";
        serverCookie = new Cookie(IP,time);
        serverCookie.setMaxAge(300);
        response.addCookie(serverCookie);
        out.println("尊敬的用户，欢迎您首次访问本网站！");
        out.println("<BR>您本次访问本网站的时间是："+time);
        out.println("<BR>使用的IP地址是："+IP);
    }else{
        String IPS = serverCookie.getName();
        String times = serverCookie.getValue();
        out.println("尊敬的用户，欢迎您访问本网站！");
        out.println("<BR>您上次访问本网站的时间是："+times);
        out.println("<BR>使用的IP地址是："+IPS);
    }
%>
</body>
</html>
