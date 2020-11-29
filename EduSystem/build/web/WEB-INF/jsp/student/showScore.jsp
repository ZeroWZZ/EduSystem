<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<base href="${pageContext.request.contextPath}/">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h3 align="center" class="subTitle">您的课程成绩如下</h3>
	<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
		<tr align="center">
                        <th width="100">课程</th>
                        <th width="100">分数</th>
			<th width="100">是否及格</th>
			<th width="100">学年</th>
			<th width="100">学期</th>
		</tr>
		<c:forEach var="score" items="${score}">
			<tr align="center">
				<td>${score[0]}</td>
				<td>${score[1]}</td> 
				<td>${score[2]}</td> 
				<td>${score[3]}</td> 
				<td>${score[4]}</td> 
			</tr>
		</c:forEach>
	</table>
</body>
</html>