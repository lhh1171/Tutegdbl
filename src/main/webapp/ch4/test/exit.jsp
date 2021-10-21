<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/10/21
  Time: 下午2:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Exit</title>
</head>

<body>
<%session.removeAttribute("username");
    response.sendRedirect("a_login.jsp");
%>

</body>
</html>
