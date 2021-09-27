<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/9/27
  Time: 下午1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java"
         import="java.sql.*" errorPage=""%>
<html>
<head>
    <title>用户注册</title>
</head>
<script type="text/javascript">
    function userCheck() {
        if (document.form1.username.value == "") {
            window.alert("请输入用户名");
            return false;
        }
        if (document.form1.password.value == "") {
            window.alert("请输入用户密码");
            return false;
        }
        if (document.form1.repassword.value == "") {
            window.alert("请输入密码确认");
            return false;
        }
        if (document.form1.repassword.value != document.form1.password.value) {
            window.alert("您输入的两次密码并不相同");
            return false;
        }
        if (document.form1.realname.value == "") {
            window.alert("请输入用户真实姓名！");
            return false;
        }

        if (document.form1.realname.value == "") {
            window.alert("请输入用户真实姓名！");
            return false;
        }
        if (document.form1.age.value == "") {
            window.alert("请输入用户年龄！");
            return false;
        }
        if (document.form1.born.value == "") {
            window.alert("请输入出生日期");
            return false;
        }
        if (document.form1.address.value == "") {
            window.alert("请输入地址");
            return false;
        }
        if (document.form1.introduce.value == "") {
            window.alert("请输入自我介绍");
            return false;
        }
        return true;
    }
</script>
<body>
<form action="showUserInfo.jsp" method="post" name="form1" onSubmit="return userCheck()">
    <table width="409" border="1">
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>确认：</td>
            <td><input type="password" name="repassword"></td>
        </tr>
        <tr>
            <td>用户真实姓名：</td>
            <td><input type="text" name="realname"></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td>
                <input type="radio" name="sex" value="男" checked="checked">&nbsp;男&nbsp;&nbsp;
                <input type="radio" name="sex" value="女">&nbsp;女
            </td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td>出生：</td>
            <td><input type="text" name="born"></td>
        </tr>
        <tr>
            <td>地址：</td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td>介绍：</td>
            <td><textarea name="introduce" rows="5" id="introduce"></textarea></td>
        </tr>
    </table>
    <input type="submit" name="Submit" value="注册"> <input
        type="reset" name="Submit2" value="重置"></form>
</body>
</html>