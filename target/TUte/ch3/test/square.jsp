<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/10/11
  Time: 下午1:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=gb2312" language="java"%>
<html>
<head>
    <title>计算正方形的周长与面积</title>
</head>
<body>
<jsp:useBean id="squareBean" scope="session" class="bean.Square" />
<%
    int side = Integer.parseInt(request.getParameter("side"));
    squareBean.setSide(side);
    out.println("正方形的边长为：" + squareBean.getSide());
    out.println("<br><br>");
    out.println("正方形的周长为：" + squareBean.squareLength());
    out.println("<br><br>");
    out.println("正方形的面积为：" + squareBean.squareArea());
%>
</body>
</html>
