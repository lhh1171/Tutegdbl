<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/9/18
  Time: 下午2:25
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: 吴宪征
  Date: 2021/9/16
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action ="" method = "post" enctype = "multipart/form-data" name="form1">
    <table width = "409"border = "1">
        <tr>
            <td>用户名：</td> <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>密码：</td> <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>确认：</td> <td><input type="password" name="repassword"></td>
        </tr>
        <tr><td>性别：</td>
            <td><input type="radio" name=="sex" value="男" checked = "checked">男
                <input type="radio" name=="sex" value="女" checked = "checked">女
            </td></tr>
        <tr>
            <td>出生：</td> <td><input type="text" name = "born"></td>
        </tr>
        <tr><td>学历：</td>
            <td><select name="schoolAge">
                <option value="大专">大专</option><option value="本科">本科</option>
                <option value="研究生">研究生</option><option value="博士生">博士生</option>
            </select></td></tr>
        <tr>
            <td>地址：</td>    <td><input type="text" name="adress"></td>
        </tr>
        <tr>
            <td>邮编：</td>    <td><input type="text" name="post"></td>
        </tr>
        <tr>
            <td>爱好：</td>
            <td><input name="like" type="checkbox" value="游泳">游泳
                <input name="like" type="checkbox" value="听歌">听歌
                <input name="like" type="checkbox" value="跑步">跑步
                <input name="like" type="checkbox" value="羽毛球">羽毛球</td>
        </tr>
        <tr>
            <td>介绍：</td>
            <td><textarea name="introduce" rows="5" id="introduce"></textarea> </td>
        </tr>
        <tr>
            <td><input type="submit" name="Submit" value="注册">
                <input type="reset" name="Submit2" value="重置"></td>
        </tr>
        <tr>
            <img src="1.jpg" height="383" width="900"/>
        </tr>
    </table>
</form>
</body>
</html>
