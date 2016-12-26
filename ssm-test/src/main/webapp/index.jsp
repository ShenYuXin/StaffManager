<html>
<head>
	<script type="text/javascript">
		function showTime(){
			var mouth = Date.getMonth()+1;
			var date = Date.getDay()+1;
			var hour = Date.getHours()+1;
			var Min = Date.getMinutes()+1;
			var sec = Date.getSeconds();
		}


		$(document).ready(function(){
			$("#text").click(function(){
				alert("click text");
			});
		});

		function btn(){
			alert("click text!!")
		}
	</script>
</head>
<body>
<h2>Hello World!</h2>
<div style="width: 100%;background-color: #00FF00;height: 20px">
<a onclick="btn()" style="cursor: pointer;"> HELLO WORLD </a>
</div>
<div style="height: 100%;width: 50%;background-color: #99e6ff;float: left;">
	sdfsadfasdfsaf
</div>
<div style="height: 100%;width: 50%;background-color: #27e6ff;float: right;"></div>
</body>
</html>
