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
        <div>
            <form action="scoreModify" method="post" name="form1" id="form1">
                <table width="900" border="0" align="center" class="word_darkGrey">
                    <tr>
                        <td width="132">学号：</td>
                        <td width="195"><label>
                                <input type="text" name="stuid" id="stuid" value="${score.id.stuid}"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">课程：</td>
                        <td width="195"><label>
                                <input type="text" name="course" id="" value="${score.id.course}"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">成绩：</td>
                        <td width="195"><label>
                                <input type="number" name="score" id="score" max="100" min="0" value="${score.score}"/>
                            </label></td>
                    </tr>
                    <tr>
                        <td width="132">是否通过：</td>
                        <td width="195" ><label>
                                
                                <input type="radio" value="是"  name="pass" checked="checked"/>是
                                <input type="radio" value="否"  name="pass"/>否
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