<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/10/21
  Time: 下午2:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>
    <title>My JSP 'testFilter.jsp' starting page</title>
</head>

<body>
<% session.setAttribute("username",request.getParameter("username"));%>
<form action="a_login.jsp" method="post">
    <input type="submit" value="TestLogin">
</form>
</body>
</html>
