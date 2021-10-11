<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/10/11
  Time: 下午1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
    <title>My JSP 'forward1.jsp' starting page</title>
</head>

<body>
<form name=form1 method="post" action="doForm.jsp" onSubmit="return checkInput()" >
    <p>Enter your system</p>
    <p>Name:
        <input type="text" name="username" />
    <p>Password:
        <input type="password" name="password" />
    <p> <input type="submit"  name="login" value="Login"/>

</form>
</body>
<script language="javascript">
    function checkInput()
    {
        if(""==document.form1.username.value || ""==document.form1.password.value ){
            window.alert("Please input name and password!");
            return false;
        }
    }
</script>
</html>
