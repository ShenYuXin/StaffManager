<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function getUrl(){
		var src = window.location.href; 
		var a = src.indexof("=");
		var b = src.length();
		var str = src.subString(a,b);
		alert(str);
	}
</script>
</head>
<body>
<form action="http://localhost:8080/ssm-test/stu">
	Name:<input type="text" name="name"><br>
	Age:<input type="text" name="name"><br>
	course:<select name="course">
		<option name="courseId" value="1000">计算机</option>
		<option name="courseId" value="1001">数据库</option>
		<option name="courseId" value="1002">英语</option>
	</select>
	<input type="submit" value="提交">
</form>
<button type="button" onclick="getUrl()">test</button>
</body>
</html>