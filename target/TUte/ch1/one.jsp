<%--
  Created by IntelliJ IDEA.
  User: lqc
  Date: 2021/9/18
  Time: 下午1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="ISO-8859-1"%>

<html>
<head>
    <title>output the system time!</title>
</head>

<body>
<%
    Date d=new Date();
    SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String time=format.format(d);
    out.println("Current time is "+time);%><br>
<%
    //Excise1.5
    int h=d.getHours();
    if(h>=1 && h<=12)
        out.println(h+"hour Good morning");
    else if(h>=13 && h<=16)
        out.println(h+"hour Good aftermoon");
    else
        out.println(h+"hour Good evening");

%>
</body>
</html>
