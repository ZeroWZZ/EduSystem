<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${pageContext.request.contextPath}/">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>成绩维护</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="search">
            <form action="getStudentListToAddScore" method = "post">
                按：课程<select name="course" id="course">
                    <c:forEach var="course" items="${list2}">
				<option value=${course}>${course}</option>
                        </c:forEach>
                </select>
                班级<select name="batch" id="batch">
                    	<c:forEach var="batch" items="${list1}">
				<option value=${batch}>${batch}</option>
                        </c:forEach>
                </select>
                查看学生:
                <input type="submit" class="btn_grey" value="搜索">
            </form>
        </div>
        <h3 class="subTitle">
            学生成绩信息
            &nbsp;&nbsp;&nbsp;&nbsp;
        </h3>

        <br />
        <table width="90%" border="0" align="center" cellpadding="0"
               cellspacing="0" class="table3">
            <tr align="center">
                <th width="100">班级</th>
                <th width="100">学号</th>
                <th width="100">姓名</th>
                <th width="100">课程</th>
                <th width="100">分数</th>
                <th width="100">是否通过</th>
            </tr>
            <c:forEach var="score" items="${list}">
                <tr align="center">
                    <td>${score[0]}</td>
                    <td>${score[1]}</td>
                    <td>${score[2]}</td>
                    <td>${score[3]}</td>
                    <td>${score[4]}</td>
                    <td>${score[5]}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
