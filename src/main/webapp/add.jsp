<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/8/17
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/index_work.css">
    <script type="text/javascript" src="js/jQuery.3.5.1.js"></script>
</head>
<body>
<form action="add">
    姓名:<input type="text" name="name"><br>
    性别:<input type="text" name="gender"><br>
    确诊疾病:<select name="disease.did" id="jb">

            </select><br>
    确诊日期:<input type="date" name="diagnosed"><br>
    生日:<input type="date" name="birthday"><br>
    当前状态:<input type="radio" >在世
    <input type="radio">离世
    <input type="date" name="diedate"><br>
    <input type="submit" value="添加">
</form>
</body>
<script type="text/javascript">
    $.post("query",function (obj) {
        for (var x in obj){
            $("#jb").append("<option value='"+obj[x].did+"'>"+obj[x].dname+"</option>");
        }
    });
</script>
</html>
