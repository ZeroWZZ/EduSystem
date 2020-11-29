<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<base href="${pageContext.request.contextPath}/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="resources/js/jquery-3.4.1.min.js"></script>
<style type="text/css">
</style>
</head>
<body>
	<h3 class="subTitle">
		班级管理
		<div class="search">
			<!-- <form id="form1" method="post"
				action="sys_Find_findClassesManagement.action?currentPage=0">
				<select name="selectk">
					<option selected="selected" value="2">开发方向</option>
					<option value="1">测试方向</option>
				</select> <input type="submit" name="Submit" class="btn_grey" value="搜索" />
			</form> -->
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="addBatch.do">增加班级</a>
	</h3>
	<br />
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table3">
		<tr align="center">
			<th width="138" height="51">班级名称</th>
			<th width="162">班级人数</th>
			<th width="90">所属专业</th>
			<th width="94">修改操作</th>
			<th width="116">删除操作</th>
		</tr>
		<c:forEach var="sc" items="${batchList}" varStatus="id">
			<tr align="center">
				<td>${sc.name}</td>
				<td>${sc.studentCount}</td>
				<td>${sc.professional}</td>
				<td><a href="batchModify.do?name=${sc.name}" target="_self">修改</a></td>
                                <td><a href="batchDelete?name=${sc.name}" target="_self">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
</body>
</html>