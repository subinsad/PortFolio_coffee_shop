<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String pwd = request.getParameter("pwd");

Connection conn=null;
Statement stmt = null;
PreparedStatement pst = null;
String sql = null;

String dburl = "jdbc:mysql://localhost:3306/bbs?characterEncoding=UTF-8&serverTimezone=Asia/Seoul";
String dbid = "root";
String dbpwd = "multi2020";

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(dburl,dbid,dbpwd);

sql = "delete from reg_20192084 where pwd = ?";
pst = conn.prepareStatement(sql);
pst.setString(1,pwd);
pst.executeUpdate();

pst.close();
conn.close();
%>
<script>
	alert("삭제 되었습니다.")
	location.href="login.jsp"
</script>
</body>
</html>