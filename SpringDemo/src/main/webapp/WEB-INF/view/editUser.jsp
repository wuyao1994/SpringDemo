<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑</title>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="/resources/script/jquery-1.7.2.min.js"></script>
<script src="/resources/script/bootstrap.min.js"></script>
</head>
<body>
<form name="userForm" action="/updateUser" method="post">
    <input type="hidden" name="id" value="${user.id }">
    <table border="1" width="50%" align="center" class="table">
        <tr>
            <td>姓名:</td>
            <td>
                <input type="text" name="name" value="${user.name}">
            </td>
        </tr>
        <tr>
            <td>年龄:</td>
            <td>
                <input type="text" name="age" value="${user.age}">
            </td>
        </tr>
        <tr>
            <td>邮箱:</td>
            <td>
                <input type="text" name="email" value="${user.email}">
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" value="修改" class="btn btn-default">
            </td>
        </tr>
    </table>
</form>
</body>
</html>