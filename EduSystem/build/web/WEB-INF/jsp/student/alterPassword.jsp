<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<base href="${pageContext.request.contextPath}/">
    </head>
<body>
    <center>
    <div style="width:27%;height:250px;">
            <table width="310" height="200" >
		<tr>
                    <th>旧密码：</th>
                    <td><input type="password" id="oldPassword" name="oldPassword" required="required" style="font-size: 23px;width: 200px">
                        <input type="hidden" id="pwd" name="pwd" value="${sessionScope.student.password}"></td>
		</tr>
		<tr>
                    <th>新密码：</th>
                    <td><input type="password" name="password" id="password" required="required" style="font-size: 23px;width: 200px"></td>
		</tr>
                <tr>
                    <td colspan="2" align="center"><input type="button" name="submitBtn" id="submitBtn" value="确认修改" style="font-size: 25px;width: 120px;height: 40px"> </td>
		</tr>
            </table>
    </div>
    </center>            
</body>
</html>
