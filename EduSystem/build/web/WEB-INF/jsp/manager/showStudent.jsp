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
    <h3 align="center" class="subTitle">该学生的详细信息</h3><br>
  <c:choose>
  	<c:when test="${student==null}">
  	<p class="nodate">暂无数据</p>
  	</c:when>
  	<c:otherwise>
            <table style="width: 30%; font-size: 20px" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
                <tr height="50">
                    <td width="100">学号：</td>
                    <td >${student.id }</td>
		</tr >
                <tr height="50">
                    <td width="80">姓名：</td>
                    <td >${student.name }</td>
                 </tr >
                <tr height="50">
                    <td width="80">性别：</td>
                    <td >${student.gender }</td>
		</tr>
                <tr height="50">
                    <td width="80">班级：</td>
                    <td  colspan="2">${student.batch}</td>
		</tr>
            </table>
        </c:otherwise>
  </c:choose>

</body>
</html>
