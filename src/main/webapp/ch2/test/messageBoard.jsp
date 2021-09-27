<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/9/27
  Time: 下午1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8"%>
<!-- 提交的是几个表单的测试 -->
<form name="form1" action="showMessage.jsp" method="post">
    <table border="1" rules="rows">
        <tr height="30">
            <td>发言标题：</td>
            <td><input type="text" name="title" size="35"></td>
        </tr>
        <tr>
            <td>发言内容：</td>
            <td><textarea name="content" rows="8" cols="34"></textarea></td>
        </tr>
        <tr align="center" height="30">
            <td colspan="2">
                <input type="submit" value="提交">
                <input type="reset" value="重置">
            </td>
    </table>
</form>
