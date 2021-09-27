<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/9/27
  Time: 下午1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="message" class="bean.Message" scope="request">
    <jsp:setProperty name="message" property="*"/>
</jsp:useBean>

<html>
<title>显示留言信息</title>
<body>
留言者：<%=session.getAttribute("name") %><br>
<%=message.getTitle() %><br>
<%=message.getContent() %><br>
<%=request.getParameter("title") %><br>
<%=request.getParameter("content") %><br>
</body>
</html>
