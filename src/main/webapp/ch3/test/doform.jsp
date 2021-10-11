<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/10/11
  Time: 下午1:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*,bean.User" pageEncoding="UTF-8"%>

<html>
<head>
    <title>doForm.jsp page</title>
</head>

<body>
<!---The third method  -->
<%="The output of third method:" %><br>
<%
    String name=request.getParameter("username");
    String paword=request.getParameter("password");
    out.println("Name:"+name+"<br>");
    out.println("Password:"+paword+"<br>");
%>
Name:<%=request.getParameter("username") %><br>
Password:<%=request.getParameter("password") %><br><br><br>


<!-- The first method -->
<%="The output of first method:" %><br>
<jsp:useBean id="user" class="bean.User" scope="request"/>
<jsp:setProperty name="user" property="*"/>
Name:<jsp:getProperty name="user" property="username"/><br>
Password:<jsp:getProperty name="user" property="password"/><br><br><br>

<!-- The second method -->
<%="The output of second method:" %><br>
<%
    User userInfo=new User();
    request.setAttribute("user2",userInfo);
%>
<jsp:setProperty name="user2" property="*"/>

Name:<%=userInfo.getUsername() %><br>
Password:<%=userInfo.getPassword() %>

</body>
</html>
