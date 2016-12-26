<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<title>Insert title here</title>
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
var str;

function getid(){
		var src = window.location.href; 
		var a = src.indexOf("=");
		var b = src.length;
		str = src.substring(a+1,b);		
}

$(document).ready(function(){
	$("#sub").click(function(){
		var name = document.getElementById('n1').value;
		var age = document.getElementById('n2').value;
		var cou = document.getElementById('n3').value;
		alert("修改成功！");
		$.get("http://localhost:8080/ssm-test/mod?id="+str+"&name="+name+"&age="+age+"&cou="+cou,function(data,status){});
	});
});

</script>
</head>
<body onload="getid()">
	Name:<input id="n1" type="text" name="name"><br>
	Age:<input id="n2" type="text" age="age"><br>
	course:<select id="n3" name="course">
		<option name="courseId" value="1000">计算机</option>
		<option name="courseId" value="1001">数据库</option>
		<option name="courseId" value="1002">英语</option>
	</select>
	<input id="sub" type="button" value="提交">
</body>
</html>