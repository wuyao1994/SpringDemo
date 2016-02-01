<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>首页</title>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="/resources/script/jquery-1.7.2.min.js"></script>
<script src="/resources/script/bootstrap.min.js"></script>
</head>
<body>
    <a href="/addUser1" class="btn btn-default" style="position: relative; top: 10px">添加用户</a><br><br>
    <table border="1" width="50%" align="center" class="table table-hover">
        <tr align="center">
            <th>Id</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>邮箱</th>
            <th></th>
            <th></th>
        </tr>
        <c:if test="${!empty user }">
            <c:forEach items="${user }" var="u">
                <tr>
                    <td>${u.id }</td>
                    <td>${u.name}</td>
                    <td>${u.age }</td>
                    <td>${u.email }</td>
                    <td><a href="/deleteUser?id=${u.id }">删除</a></td>
                    <td><a href="/getUser?id=${u.id }">编辑</a></td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
    <form class="form-inline" action="/search" method="post" name="search" style="position: relative; left: 5%">
        <div class="form-group">
            <label for="name">Name</label> <input type="text" class="form-control" id="name" name="name" placeholder="吴瑶">
        </div>
        <button type="submit" class="btn btn-default">查询</button>
    </form>
</body>
</html>