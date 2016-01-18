<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>首页</title>
</head>
<body>
    <table border="1" width="50%" align="center">
        <tr align="center">
            <th>Id</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>邮箱</th>
        </tr>
        <c:if test="${!empty user }">
        <c:forEach items="${user }" var="u">
            <tr>
                <td>${u.id }</td>
                <td>${u.name }</td>
                <td>${u.age }</td>
                <td>${u.email }</td>
            </tr>
        </c:forEach>
        </c:if>
</body>
</html>