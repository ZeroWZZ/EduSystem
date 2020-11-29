<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<base href="${pageContext.request.contextPath}/">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<h3 class="subTitle">
		开课计划管理
		<div class="search">
			<form action="courseQuery" method = "post">
				班级名称 :	<input type="text" name= "batch" value="${batch}">
				<input type="submit" class="btn_grey" value="搜索">
			</form>
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="coursePlanAdd.do">增加开课计划</a>
	</h3>
	<br />
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table3">
		<tr align="center">
			<th width="100" height="51">序号</th>
                        <th width="100">班级</th>
			<th width="100">课程编号</th>
			<th width="100">老师编号</th>
			<th width="94">修改操作</th>
			<th width="116">删除操作</th>
		</tr>
		<c:forEach var="course" items="${coursePlanList}">
			<tr align="center">
				<td>${course.id}</td>
                                <td>${course.batch}</td>
				<td>${course.courseid}</td>
				<td>${course.teacherid}</td>
				<td><a href="coursePlanModify.do?id=${course.id}">修改</a></td>
				<td><a href="coursePlanDelete?id=${course.id}">删除</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>