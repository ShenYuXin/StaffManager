<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">

<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script src="RES/testjs.js"></script>
<link rel="stylesheet" type="text/css" href="RES/style.css">
<title>STUDENT</title>

	<!--
	$(document).ready(function(){
		
		$("#select").click(function(){
			//alert("click select bottom");
			showtable();
		});
	});

	$(document).ready(function(){		
		$("#del").click(function(){
			showtable();
		});
	});

	function showtable(){
		$("#tab").empty();
		$.get("http://localhost:8080/ssm-test/select",function(data,status){
				var obj = JSON.parse(data);
				alert(data);
		for(var i = 0;i<obj.length;i++){
			var row = "<tr><td>"+obj[i].id+"</td><td>"+obj[i].name+"</td><td>"+obj[i].age+"</td><td>"+obj[i].sex+"</td></tr>";
			$("#tab").append(row);
		}
			});
	}-->

	<script type="text/javascript">
	/* $(document).ready(function(){
		$("#select").click(function(){
			$("#th1").siblings().empty();
			$.get("http://localhost:8080/ssm-test/selectage?age="+ document.getElementById('agei').value,
				function(data,status){
					//alert("HAHA"+data);
				var obj = JSON.parse(data);
				
		for(var i = 0;i<obj.length;i++){
			var row = "<tr><td>"+obj[i].studentId+"</td><td>"+obj[i].name+"</td><td>"+obj[i].age+"</td><td>"+obj[i].sex+"</td><td>"+obj[i].courseName+"</td><td>"+obj[i].teacherName+"</td><td>"+obj[i].sksj+
			"</td></tr>";
			$("#tab").append(row);
		}
			});
		});
	});

	$(document).ready(function(){
		$("#divc").click(function(){			
			document.getElementById('divs').style.display='none';
		});
	});


	function t1(){
		var name = document.getElementById('n1').value;
		var age = document.getElementById('n2').value;
		var cou = document.getElementById('n3').value;
		var str = document.getElementById('stuid').innerHTML;
		alert("修改成功！");
		$.get("http://localhost:8080/ssm-test/mod?id="+str+"&name="+name+"&age="+age+"&cou="+cou,function(data,status){
				//alert(data);
				document.getElementById('divs').style.display='none';
				window.location.reload();
			
			
		});
		
	}
 */


	</script>



</head>
<body onload="showtable()">
<div style="width: 50%; height: 500px; background-color: #80ff80;float: left;">
<div >
增加 
<form action="http://localhost:8080/ssm-test/add">
	学号<input type="text" name="SNO" required="required">
	姓名<input type="text" name="name" required="required">
	年龄<input type="text" name="age" required="required"><br>
	性别<select name="sex">
		<option name="sex" value="m">男</option>
		<option name="sex" value="w">女</option>
	</select>
	课程<select id="ccs" name="courseId">
		<option name="courseId" value="1000">计算机</option>
		<option name="courseId" value="1001">数据库</option>
		<option name="courseId" value="1002">英语</option>
	</select>
	<input type="submit" onclick="showtable()">
</form>
</div>
<hr>
<div>
删除
<form action="http://localhost:8080/ssm-test/del">
	name<input type="text" name="name" required="required">
	<input id="del" type="submit">
</form>
</div>
<hr>
<div>
	修改
	<form action="http://localhost:8080/ssm-test/mod">
	将id<input type="text" name="id" required="required">的Name,改成<input type="text" name="name2" required="required">
	<input type="submit" onclick="showtable()">
	</form>

	<hr>
	<form action="http://localhost:8080/ssm-test/mod2">
	将Name<input type="text" name="oldname" required="required">,改成<input type="text" name="newname" required="required">
	<input type="submit">
	</form>

</div>
</div>

<div  style="width: 50%;height: 500px;background-color:#99e6ff;float: right;">
<div class="wrap">
	查询
	<button id="select">查询</button>Age><input id="agei" type="text" name="age">
	<table id="tab" class="gridtable" border="1px" cellpadding="0" cellspacing="0" style="align-self: center;" align="center">
	<tr id="th1">
	<th>学号</th>
	<th>姓名</th>
	<th>年龄</th>
	<th>性别</th>
	<th>课程</th>
	<th>教师</th>
	<th>时间</th>
	</tr>
	</table>
</div>

</div>

</body>
<div id="divs" style="width: 100%;height: 500px;text-align: center;display: none;background:rgba(234, 234, 225,0.5); ;position: absolute;z-index: 10;">
<div class="modol">
	
	Student Id：<span id="stuid"></span><br><br>
	姓名<input id="n1" type="text" name="name" required="required"><br><br>
	年龄<input id="n2" type="text" name="age" required="required"><br><br>
	course:<select id="n3" name="course">
		<option id="1000" name="courseId" value="1000">计算机</option>
		<option id="1001" name="courseId" value="1001">数据库</option>
		<option id="1002" name="courseId" value="1002">英语</option>
	</select>
	<input type="button" name="ok" value="确定" onclick="t1()">
	<input id="divc" type="button" name="canel" value="取消">
	
</div>
</div>
</html>