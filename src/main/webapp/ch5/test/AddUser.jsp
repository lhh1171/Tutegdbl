<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/10/25
  Time: ����1:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>����û�</title>
</head>

<body>
<form method="post" action="AddUser">
    <div align="center"><font face="����" size="6"><strong>
        ����û�</strong></font><br/><hr/>
        �û�����  <input name="username" type="text"/>
        <br/>
        <br/>
        ��&nbsp;&nbsp;�룺
        <input name="password" type="text"/>
        <br />
        <br />
        <input type="submit" value="���" />
        <input type="reset"  value="ȡ��" />
    </div>
</form>
</body>
</html>