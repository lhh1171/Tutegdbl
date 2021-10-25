<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/10/25
  Time: 下午1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>删除用户</title>
</head>

<body>
<form  method="post" action="DeleteUser">
    <div align="center"><font face="宋体" size="6"><strong>
        删除用户</strong></font><br/>
        <hr/>
        <p>
        </p>
        <p>输入删除的用户名 <input name="username" type="text"/><br/><br/>
            <input type="submit" name="delete" value="删除用户" />
            <br />
            <br />
        </p>
    </div>
</form>
</body>
</html>
