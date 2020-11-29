<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${pageContext.request.contextPath}/">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h3 class="subTitle">学生管理
  <div class="search">
      <form id="form1" method="post" action="studentQueryByBatch" style=" display: inline-block">
           	 班级：<input type="text" name="batch" value="${student.batch}" />
            <input type="submit" name="Submit" class="btn" value="搜索" />
        </form>
        <form id="form1" method="post" action="studentQuery" style=" display: inline-block">
           	 学生学号：<input type="text" name="id" value="${student.id}"  />
            <input type="submit" name="Submit" class="btn" value="搜索" />
        </form>
  </div>
  &nbsp;&nbsp;&nbsp;&nbsp;<a href="addStudent.do">增加学生</a>
</h3>
<br />
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
  <tr align="center">
    <td width="127" height="51">学生学号</td>
    <td width="100">姓名</td>
    <td width="50">性别</td>
    <td width="100" >所在班级</td>  
    <td width="87">查看详细信息</td>
    <td width="87">修改操作</td>
    <td width="87">删除操作</td>
  </tr>
  <c:choose>
  	<c:when test="${studentList==null}">
  	<td colspan="10" ><p class="nodate">暂无数据</p></td>
  	</c:when>
  	<c:otherwise>
  		<c:forEach items="${studentList }" var="s">
	  <tr align="center">
	    <td >${s.id }</td>
	    <td >${s.name }</td>
	    <td >${s.gender }</td>
	    <td >${s.batch}</td>
            <td><a href="studentQuery.do?id=${s.id }" target="_self">查看</a></td>
	    <td><a href="studentModify.do?id=${s.id }" target="_self">修改</a></td>
	    <td><a href="studentDelete?id=${s.id }" target="_self">删除</a></td>
	  </tr>
  </c:forEach>
  	</c:otherwise>
  </c:choose>
</table>
</body>
</html>