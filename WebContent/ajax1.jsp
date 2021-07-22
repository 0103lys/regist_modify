<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax</title>
</head>
<body>
	<h2>Ajax</h2>
	<button onclick="sendRequest()">요청보내기</button>
	<p id="text"></p>
	
	<script>
		'use strick';
		function sendRequest() {
			const xhr = new XMLHttpRequest();
			xhr.open('GET','ajax1_ok.jsp?userid=apple&userpw=1111', true);	// get방식
			xhr.send();
			
			// XMLHttpRequest.DONE : 4(완료), xhr.status : 200(정상적인 페이지 접근)
			xhr.onreadystatechange = function(){
				if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
					document.getElementById('text').innerHTML = xhr.responseText;
				}
				
			}
		}
	
	</script>
</body>
</html>