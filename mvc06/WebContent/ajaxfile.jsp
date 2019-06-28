<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	var btn,file,xhr,formData;
	
	$(document).ready(function(){
		$('button').click(function(){
			var input=document.querySelector('#myfile');
			formData=new FormData();
			formData.append('myfile',input.files[0]);
			$.ajax({
				url:'upload.bit',
				method:'post',
				data:formData,
				contentType: false,
				processData: false,
				success:function(){
					alert('업로드 성공');
				}
			});
		});
	});
	
	
	/* 
	window.onload=function(){
		btn=document.querySelector('button');
		btn.onclick=function(){
			var filedata=new FormData();
			file=document.querySelector('#myfile');
			filedata.append('myfile',file.files[0]);
			
			filedata.append('id','admin');
			xhr=new XMLHttpRequest();
			xhr.onreadystatechange=upload;
			xhr.open('post','upload1.bit',true);
			xhr.send(filedata);
		};
	};
	var cnt=0;
	function upload(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				alert('업로드완료');
			}else{
				console.log(cnt++);			
			}
		}		
	} 
	*/


</script>
</head>
<body>
	<h1>ajax파일업로드</h1>
	<div>
		<input type="file" id="myfile" />
	</div>
	<div>
		<button>upload</button>
	</div>
</body>
</html>





