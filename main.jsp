<!-- 기본적인 웹사이트 틀을 잡아주는 부분 charset="언어" -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<script>
	//웹사이트에 처음 접속한 사람들은 index페이지가 아니라 main페이지로 이동하게 만들어 준다.
		location.href = 'index.jsp';
	</script>
</body>
</html>