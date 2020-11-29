<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="resources/js/jquery-3.4.1.min.js"></script>
        <base href="${pageContext.request.contextPath}/">
        <title>JSP Page</title>
    </head>
<body>
    <center>
    <div style="width:27%;height:250px">
        <form action="modifyTeacherPwd" method="post">
            <table width="310" height="200" >
		<tr>
                    <th>新密码：</th>
                    <td><input type="password" name="password" id="password" required="required" style="font-size: 23px;width: 200px"></td>
		</tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="submitBtn" id="submitBtn" value="确认修改" style="font-size: 22px;width: 120px;height: 40px"> </td>
		</tr>
            </table>
	</form>
    </div>
    </center>            
</body>
</html>
