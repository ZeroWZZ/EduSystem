<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${pageContext.request.contextPath}/">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>无标题文档</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <link href="../css/default.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <h3 class="subTitle">
            添加开课计划 &nbsp;&nbsp;&nbsp;&nbsp;
        </h3>
        <div class="text2">
            <form action="coursePlanAdd" method="post" name="form1" id="form1">
                <table width="900" border="0" align="center" class="word_darkGrey">
                    <tr>
                        <td>课程编号：</td>
                        <td><label>
                                <input type="text" name="courseid" id="courseid"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">班级编号：</td>
                        <td width="195"><label>
                                <input type="text" name="batch" id="batch" />
                            </label></td>
                    </tr>
                    <tr>
                        <td>教师编号：</td>
                        <td><label>
                                <input type="text" name="teacherid" id="teacherid"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td>周次：</td>
                        <td><label>
                                <input type="text" name="week" id="week" />
                            </label></td>
                    </tr>
                    <tr>
                        <td>每周节次：</td>
                        <td><label>
                                <input type="number" name="count" id="count"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td>教室类型：</td>
                        <td><label>
                                <input type="text" name="classroomType" id="classroomType" />
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