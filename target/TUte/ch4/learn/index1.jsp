<%@ page import="java.util.Date" %>
<%@ page import="sun.misc.BASE64Decoder" %>
<%@ page import="sun.misc.BASE64Encoder" %>
<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/9/18
  Time: 下午2:54
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie[] cookies=request.getCookies();
    Cookie cookie_response=null;
//    for (int i = 0; i < cookies.length; i++) {
//        if("AccessTime".equals(cookies[i].getName())){
//            cookie_response=cookies[i];}
//    }
    if (cookies!=null){
        cookie_response=cookies[0];
    }
    out.println("当前的时间："+new Date()+"<br>");
    if (cookie_response!=null){
        Date date = new Date();
        String time = date.getYear()+"年"+date.getMonth()+"月"+date.getDay()+"日"+date.getHours()+"时"+date.getMinutes()+"分"+date.getSeconds()+"秒";
        out.println("上次访问的时间："+cookie_response.getValue());
        cookie_response.setMaxAge(300);
        cookie_response.setValue(time);
        response.addCookie(cookie_response);
    }
    if (cookies==null){
        out.println("cookie 变了");
        cookie_response=new Cookie("AccessTime","");
        cookie_response.setMaxAge(300);
        cookie_response.setValue(new Date().toString());
        response.addCookie(cookie_response);
    }
%>
</body>
</html>
