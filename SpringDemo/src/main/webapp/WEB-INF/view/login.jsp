<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="/resources/script/jquery-1.7.2.min.js"></script>
<script src="/resources/script/bootstrap.min.js"></script>
</head>
<body background="/resources/image/icon1.jpg">
    <form class="form-horizontal" action="/j_spring_security_check" method="post" style="position: relative; left: 27%; top: 100px;color: white">
        <div class="form-group">
            <label for="inputUsername3" class="col-sm-2 control-label">Username</label>
            <div class="col-sm-10">
                <input name="j_username" type="Username" class="form-control" id="inputUsername3" placeholder="Username" style="width:15%">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
                <input name="j_password" type="password" class="form-control" id="inputPassword3" placeholder="Password" style="width:15%">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Sign in</button>
            </div>
        </div>
    </form>
</body>
</html>