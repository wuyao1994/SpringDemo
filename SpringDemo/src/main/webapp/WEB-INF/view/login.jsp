<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body>
    <form action="/j_spring_security_check" method="post">
        <h2>Login</h2>
        Username:<input id="j_username" type="text" name="j_username"></br>
        <br> Password:<input id="j_password" type="password" name="j_password"></br>
        </br> <input type="submit" value="登录">
    </form>
</body>
</html>