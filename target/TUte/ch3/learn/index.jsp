<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/9/18
  Time: 下午2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String v=new String(request.getParameter("key"));
%>
value:<%=v%>
</body>
</html>
