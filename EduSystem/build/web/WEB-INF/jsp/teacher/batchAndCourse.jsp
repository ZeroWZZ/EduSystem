
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${pageContext.request.contextPath}/">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>成绩与课程</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />

    </head>
    <body>
        <h3 class="subTitle">
            本学期课程与班级
            &nbsp;&nbsp;&nbsp;&nbsp;
        </h3>
        <br />
        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
            <tr align="center">
                <th width="100">班级</th>
                <th width="100">课程</th>
            </tr>
            <c:forEach var="x" items="${list}">
                <tr align="center">
                    <td>${x[0]}</td>
                    <td>${x[1]}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
