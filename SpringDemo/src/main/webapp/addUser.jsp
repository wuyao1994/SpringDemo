<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
<script type="text/javascript">
function addUser() {
    var form = document.forms[0];
    form.action="/addUser";
    form.method="post";
    form.submit();
}
</script>
</head>
<body>
    <h2>添加用户</h2>
    <form name="userForm" action="">
         姓名<input type="text" name="name">
        年龄<input type="text" name="age">
        邮箱<input type="text" name="email">
        <input type="button" value="添加" onclick="addUser()">
    </form>
</body>
</html>