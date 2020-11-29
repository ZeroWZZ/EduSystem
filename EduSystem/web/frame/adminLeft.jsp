<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<base href="${pageContext.request.contextPath}/">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>无</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div id="nav_container">
            <table border="0" width="160" height="638" bordercolor="#FFF" bgcolor="#FFFFFF" cellspacing="0">
                <tr>
                    <td valign="top">
                        <ul>
                            <li><a href="studentManage?page=1" target="mainFrame">学生管理</a></li>
                            <li><a href="teacherManage?page=1" target="mainFrame">教师管理</a></li>
                            <li><a href="batchManage" target="mainFrame">班级管理</a></li>
                            <li><a href="professionalManage" target="mainFrame">专业管理</a></li>
                            <li><a href="professionalPlanManage?page=1" target="mainFrame">专业计划管理</a></li>
                            <li><a href="courseManage?page=1" target="mainFrame">课程管理</a></li>
                            <li><a href="coursePlanManage" target="mainFrame">开课管理</a></li>
                            <li><a href="scoreManage?page=1" target="mainFrame">成绩管理</a></li>
                            <li><a href="exit" target="_parent" onclick="javascript: return confirm('确认退出用户吗？');">退出用户</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>
