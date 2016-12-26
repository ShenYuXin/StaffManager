var obj;	
$(document).ready(function(){
		
		$("#select").click(function(){
			alert("select click!");
			$.post("http://localhost:8080/ssm-test/select",{age:document.getElementById('agei').value},
				function(data,status){
					alert(data);
				});
			showtable();
		});
	});

	$(document).ready(function(){		
		$("#del").click(function(){
			alert("del click!");
			showtable();
		});
	});

	function showtable(){
		//$("#tab").empty();
		$("#th1").siblings().empty();
		$.get("http://localhost:8080/ssm-test/select",function(data,status){
				obj = JSON.parse(data);
				//alert(data);
		for(var i = 0;i<obj.length;i++){
			var row = "<tr id='"+i+"'><td>"+obj[i].studentId+"</td><td>"+obj[i].name+"</td><td>"+obj[i].age+"</td><td>"+obj[i].sex+"</td><td>"+obj[i].courseName+"</td><td>"+obj[i].teacherName+"</td><td>"+obj[i].sksj+
			"</td><td><a onclick='Delbtn("+i+")' style='cursor: pointer'>删除</a>&nbsp <a onclick='editbtn("+i+")' style ='cursor: pointer'>编辑</a> </td></tr>";
			$("#tab").append(row);
		}
		
			});
	}

	function Delbtn(i){
		var r = confirm("确认删除！");
		var v = $("td").siblings().first().text();
		if(r==true){
		//	console.log(i);
			var v = $("td").siblings().first().text();
			$("#tab").children('#'+i).remove();
			$('#'+i).remove();
			fun_Del(v);
			
		}
	}

	//删除

	function fun_Del(v){
		$(document).ready(function(){
			$.get("http://localhost:8080/ssm-test/del?id="+v,function(data,status){
				
			});
		});
	}

	//修改
	function editbtn(i){		
		$(document).ready(function(){
			 var id = obj[i].studentId;
			//window.open("http://localhost:8080/ssm-test/HTML/Edit.jsp?id="+id,"","width:200,height=200");
			document.getElementById('divs').style.display='block';
			document.getElementById("stuid").innerHTML=id;
			document.getElementById('n1').value = obj[i].name;
			document.getElementById('n2').value = obj[i].age;
			//document.getElementById('${obj[i].courseId}').selected = true;
			//console.log(obj[i].courseId);
			var select_obj = document.getElementById('n3');
			for(j=0;j<select_obj.length;j++){
				if(select_obj[j].value ==obj[i].courseId){
					select_obj[j].selected = true;
				}
			}
		});
	}

	 $(document).ready(function(){
		$("#divc").click(function(){			
			document.getElementById('divs').style.display='none';
		});
	});
	
	$(document).ready(function(){
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
