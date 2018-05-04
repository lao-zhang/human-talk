<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="script/login.js"></script>
    <title>humantalk 登录</title>
</head>
<body>
<div class="container">
    <div class="col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6 col-lg-offset-4 col-lg-4">
        <form action="getId" method="post" onsubmit="return go()">
            <div class="form-horizontal">
                <span class="heading">用户登录</span>
                <div class="form-group">
                    <input type="text" class="form-control" name="userid"  id="inputEmail3" placeholder="填写一个你喜欢的昵称">
                </div>
                <div class="form-group validate">
                    <input type = "text" class="col-md-8"  id="input" value="" />
                    <input type = "button" class="col-md-4" id="code" onclick="createCode()"/>
                </div>
            </div>

            <div class="form-group">
                <input type="checkbox" value="None" id="checkbox1" name="check" />
                <label for="checkbox1">Remember me</label>
                <button type="submit" class="btn btn-default" >登录</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>