<%@page import="com.qdu.pojo.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>无标题文档</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
    </head>
<% Boolean asc=true;%>
    <body>
        <div id="nav_container">
            <table border="0" width="160" height="638" bordercolor="#FFF" bgcolor="#FFFFFF" cellspacing="0">
                <tr>
                    <td valign="top">
                        <ul>
                            <li><a href="<%=path%>/accountmanage" target="mainFrame">个人信息</a></li>
                            <li><a href="<%=path%>/scoreQuery2?id=${student.id}&&asc=<%=asc%>" target="mainFrame">成绩和课程</a></li>
                            <li><a href="<%=path%>/studentProfessionalPlanQuery?name=${student.batch}" target="mainFrame">查看专业计划</a></li>
                            <li><a href="<%=path%>/exit" target="_parent" onclick="javascript: return confirm('确认退出用户吗？');">退出用户</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>
