<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <title>智能机器人-教学模式</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/robot/jquery/jquery-1.7.1.min.js"></script>
    <script type="text/javascript">
    function save(){
    	//var url = "/robot/saveProblem.robot";
		//document.forms[0].action = url;
		//document.forms[0].submit();
		var question = document.getElementById("question").value;
		var answer = document.getElementById("answer").value;

		if(question.replace(/[ ]/g,"").length <= 0){
			alert("请输入问题");
			return;
		}	
		if(answer.replace(/[ ]/g,"").length <= 0){
			alert("请输入答案");
			return;
		}
		if(answer.length > 300){
			alert("答案的字符个数不能超过300");
			return;
		}
		
		$.ajax({  
	    url:"/robot/saveProblem.robot",  
	    async: false,
	    type:'post',  
	    data:'question='+question+'&answer='+answer,  
	    dataType:'html',  
	    success:function(data,status){  
	        if(status == "success"){  
	        	if("1" == data){
	        		alert("保存成功");
	        		document.getElementById("question").value="";
					document.getElementById("answer").value="";
	        	}else{
	        		alert("保存失败");
	        	}
	        }  
	    },  
	    error:function(xhr,textStatus,errorThrown){  
	    } 
	});
    }
    </script>
</head>
<body>
	<form action="">
	<center>
		<table>
			<tr>
				<td>提问：</td>
				<td><input type="text" id="question" name="question" value="" style="width:300px;" maxlength="30"/></td>
			</tr>
			<tr>
				<td>回答：</td>
				<td><textarea id="answer" name="answer" style="height:150px;width:300px;"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td align="right"><input type="button" value="保存" onclick="save();"></td>
			</tr>
		</table>
	</center>	
	</form>
</body>
</html>