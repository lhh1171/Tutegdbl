<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/10/25
  Time: 下午1:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>添加用户</title>
</head>

<body>
<form method="post" action="AddUser">
    <div align="center"><font face="宋体" size="6"><strong>
        添加用户</strong></font><br/><hr/>
        用户名：  <input name="username" type="text"/>
        <br/>
        <br/>
        密&nbsp;&nbsp;码：
        <input name="password" type="text"/>
        <br />
        <br />
        <input type="submit" value="添加" />
        <input type="reset"  value="取消" />
    </div>
</form>
</body>
</html>