<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/10/11
  Time: ����1:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=gb2312" language="java"%>
<html>
<head>
    <title>���������ε��ܳ������</title>
</head>
<body>
<jsp:useBean id="squareBean" scope="session" class="bean.Square" />
<%
    int side = Integer.parseInt(request.getParameter("side"));
    squareBean.setSide(side);
    out.println("�����εı߳�Ϊ��" + squareBean.getSide());
    out.println("<br><br>");
    out.println("�����ε��ܳ�Ϊ��" + squareBean.squareLength());
    out.println("<br><br>");
    out.println("�����ε����Ϊ��" + squareBean.squareArea());
%>
</body>
</html>
