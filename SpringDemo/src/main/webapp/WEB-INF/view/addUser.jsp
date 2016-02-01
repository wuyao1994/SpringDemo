<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<title>添加用户</title>
<script type="text/javascript">
    function addUser() {
        var form = document.forms[0];
        form.action = "/addUser";
        form.method = "post";
        form.submit();
    }
</script>
</head>
<body>
    <form class="form-inline" style="position: relative; top:50px">
        <div class="form-group">
            <label for="name">Name</label> <input type="text" class="form-control" id="name" name="name" placeholder="Jane Doe">
        </div>
        <div class="form-group">
            <label for="age">Age</label> <input type="text" class="form-control" id="age" name="age" placeholder="21">
        </div>
        <div class="form-group">
            <label for="email">Email</label> <input type="text" class="form-control" id="email" name="email" placeholder="jane.doe@example.com">
        </div>
        <button type="submit" class="btn btn-default" onclick="addUser()">添加</button>
    </form>
</body>
</html>