<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/10/5
  Time: 下午5:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="circleBean" scope="session" class="bean.Circle"/>

<jsp:setProperty name="circleBean" property="radius" value="99"/>
<%
    int r= Integer.parseInt(request.getParameter("radius"));

    out.println("圆的半径为："+circleBean.getRadius()+"<br>");
    out.print("圆的周长为："+circleBean.getcirclelength()+"<br>");
    out.println ("圆的面积为："+circleBean.getcirclearea());
%>

</body>
</html>
