<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${pageContext.request.contextPath}/">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/default.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h3 class="subTitle">
	添加教师信息 &nbsp;&nbsp;&nbsp;&nbsp;<a href="bulkTeaAdd.jsp">批量导入</a>
</h3>
<div>
  <form action="addTeacher" method="post" name="form1" id="form1">
                <table width="900" border="0" align="center" class="word_darkGrey">
                    <tr>
                        <td>编号：</td>
                        <td><label>
                                <input type="text" name="id" id="id"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">姓名：</td>
                        <td width="195"><label>
                                <input type="text" name="name" id="name" />
                            </label></td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><label>
                                <input type="password" name="password" id="password"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">性别：</td>
                        <td width="195"><label>
                                <input type="hidden" />
                                <input type="radio" value="男"  name="gender" checked="checked"/>男
                                <input type="radio" value="女"  name="gender"/>女
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">专业：</td>
                        <td width="195"><label>
                                <input type="text" name="professional" id="professional" />
                            </label></td>
                    </tr>
                    <tr>
                        <td>生日：</td>
                        <td width="195"><label>
                                <input type="date" name="birthday" id="birthday" />
                            </label></td>
                    </tr>
                    <tr>
                        <td>邮箱：</td>
                        <td width="195"><label>
                                <input type="text" name="email" id="email" />
                            </label></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="button" id="button" class="btn_grey" value="提交" />
                        </td>
                    </tr>
                </table>
            </form>
</div>
</body>
</html>