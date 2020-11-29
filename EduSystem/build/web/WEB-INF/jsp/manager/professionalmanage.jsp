<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${pageContext.request.contextPath}/">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dth">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>无标题文档</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <h3 class="subTitle">
            专业管理
<!--            <div class="search">
            </div>-->
            &nbsp;&nbsp;&nbsp;&nbsp;<a href="addProfessional.do">增加专业</a>
        </h3>
        <br />
        <table width="90%" border="0" align="center" cellpadding="0"
               cellspacing="0" class="table3">
            <tr align="center">
                <th width="138" height="51">专业名称</th>
                <th width="162">所属学院</th>
                <th width="100">描述</th>
                <th width="94">修改操作</th>
                <th width="116">删除操作</th>
            </tr>
            <c:forEach var="sc" items="${professionalList}" varStatus="id">
                <tr align="center">
                    <td>${sc.name}</td>
                    <td>${sc.faculty}</td>
                    <td>${sc.remark}</td>
                    <td><a href="professionalModify.do?name=${sc.name}">修改</a></td>
                    <td><a href="professionalDelete?name=${sc.name}">删除</a></td>
                </tr>
            </c:forEach>
        </table>
        <br />
    </body>
</html>