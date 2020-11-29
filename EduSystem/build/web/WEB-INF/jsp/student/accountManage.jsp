<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${pageContext.request.contextPath}/">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
            <link href="css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h3 class="subTitle">个人信息</h3><a style="float:  right;margin-right: 50px;font-size: 20px"  href="modifyStudentPwd.do">修改密码</a>
        <br />
            <table style="width: 30%; font-size: 20px;background-color: #999999" border="0" align="center" cellpadding="0" cellspacing="0" class="table3">
                <tr height="50">
                    <td width="80">学号：</td>
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
        <br />
    </body>
</html>
