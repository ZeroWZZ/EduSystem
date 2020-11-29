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
     <div style=" height:600px;width: 100%">
	<h3 class="subTitle">
		专业计划管理
		<div class="search">
			<form action="professionalPlanQuery" method = "post">
				按专业名称查看专业计划:
				<input type="text" name= "name"/>
				<input type="submit" class="btn_grey" value="搜索">
			</form>
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="addProfessionalPlan.do">增加专业计划</a>
	</h3>
	<br />
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table3">
		<tr align="center">
			<th width="100" height="20">编号</th>
			<th width="100">专业</th>
			<th width="100">课程</th>
			<th width="100">学年</th>
			<th width="100">学期</th>
			<th width="94">修改操作</th>
			<th width="116">删除操作</th>
		</tr>
		<c:forEach var="sc" items="${professionalPlanList}" varStatus="id">
			<tr align="center">
				<td>${sc.id}</td>
				<td>${sc.professional}</td>
				<td>${sc.course}</td>
				<td>${sc.year}</td>
				<td>${sc.term}</td>
				<td><a href="professionalPlanModify.do?id=${sc.id}"  target="_self">修改</a></td>
				<td><a href="professionalPlanDelete?id=${sc.id}"  target="_self">删除</a></td>
			</tr>
		</c:forEach>
	</table>
     </div>
<div style=" height: 20%;width: 100%;font-size: 16px;" align="center"><br/>
    <table style="">
        <tr items="${page}">
            <form method="GET" action="professionalPlanManage">
                <td><input type="hidden" name="page" value="1"></td>
                <td><input type="submit" value="首页"></td>
            </form>
            <form method="GET" action="professionalPlanManage">
                <td><input type="hidden" name="page" value="${page.prefPage}"></td>
                <td><input type="submit" value="上一页"></td>
            </form>
                <td >当前：第<font style="color: #20A8F0; font-size: 20px">${page.currentPage}</font>页<--></td>
                <td>共${page.totalPages}页</td>
            <form method="GET" action="professionalPlanManage">
                <td><input type="hidden" name="page" value="${page.nextPage}"></td>
                <td><input type="submit" value="下一页"></td>
            </form>
            <form method="GET" action="professionalPlanManage">
                <td><input type="hidden" name="page" value="${page.totalPages}"></td>
                <td><input type="submit" value="尾页"></td>
            </form>
        </tr>
    </table>
    <form method="post" action="professionalPlanManage" >
        <table  style="">
            <tr>
                <td>跳转到第:<input type="text" name="page" size="5"/>页</td>
                <td><input type="submit" value="确定"></td>
            </tr>
        </table>
    </form>
    共搜索到${page.totalUsers}条信息
</div>
</body>
</html>