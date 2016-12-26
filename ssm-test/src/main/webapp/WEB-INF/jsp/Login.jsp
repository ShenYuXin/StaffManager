<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>考勤管理系统</title>
    <link rel="stylesheet" type="text/css" href="/ssm-test/RES/Styles/base.css" />
    <link rel="stylesheet" type="text/css" href="/ssm-test/RES/Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="/ssm-test/RES/Styles/bootstrap.min.css" />
    <script type="text/javascript" src="/ssm-test/RES/Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="/ssm-test/RES/Scripts/jquery.spritely-0.6.js"></script>
    <link rel="stylesheet" type="text/css" href="/ssm-test/RES/Styles/login.css" />
    <script type="text/javascript">
        $(function() {
            $('#clouds').pan({ fps: 20, speed: 0.7, dir: 'right', depth: 10 });
            $('.login').click(function () {
                if ($('#uid').val() == "" || $('#pwd').val() == "" || $('#code').val() == "") { $('.tip').html('用户名或密码不可为空！') }
                else {
                	$.post("/ssm-test/check/worker",
                		{
                		username:$('#uid').val(),
                		pwd:$('#pwd').val()
                		},
                		function(data,status){
                			window.alert(data);
                		}
                		);
                    //location.href = 'index.html';
                }
            })
        })

        function createRandomCode(){
        	var seed = new Array('abcdefghijklmnopqrstuvwsyz','1234567890');

        	var str='';
        	for(var i = 0;i<5;i++){
        		var v = Math.floor(Math.random()*2);
        		str+=seed[v].substr(Math.floor(Math.random()*seed[v].length),1);
        	}
        	return str;
        }

        function RecreateCode(){
        	document.getElementById('autoRandom').innerHTML = createRandomCode();
        }
    </script>
</head>
<body>
    <div id="clouds" class="stage"></div>
    <div class="loginmain">
    </div>

    <div class="row-fluid">
        <h1>考勤管理系统</h1>
        <p>
            <label>帐&nbsp;&nbsp;&nbsp;号：<input type="text" id="uid" /></label>
        </p>
        <p>
            <label>密&nbsp;&nbsp;&nbsp;码：<input type="password" id="pwd" /></label>
        </p>
        <p class="pcode">
            <label>效验码：<input type="text" id="code" maxlength="5" class="code" value="" />&nbsp;<span id="autoRandom"></span><a href="#" onclick="RecreateCode()">下一张</a></label>
        </p>
        <p class="tip">&nbsp;</p>
        <hr />
        <input type="button" value=" 登 录 " class="btn btn-primary btn-large login" />
        &nbsp;&nbsp;&nbsp;<input type="button" value=" 取 消 " class="btn btn-large" />
    </div>
</body>
<script type="text/javascript">
	 window.onload = document.getElementById("autoRandom").innerHTML = createRandomCode();
</script>
</html>