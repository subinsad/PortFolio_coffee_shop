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
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String email = request.getParameter("email");

Connection conn = null;
Statement stmt = null;
PreparedStatement pst = null;
String sql = null;

String dburl = "jdbc:mysql://localhost:3306/bbs?characterEncoding=UTF-8&serverTimezone=Asia/Seoul";
String dbid = "root";
String dbpwd = "multi2020";
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(dburl,dbid,dbpwd);

sql = "update reg_20192084 set pwd = ?, email = ? where id = ?";
pst = conn.prepareStatement(sql);
pst.setString(1,pwd);
pst.setString(2,email);
pst.setString(3,id);
pst.executeUpdate();

out.println("데이터가 갱신되었습니다.<br>");

pst.close();
conn.close();

%>

<p>
<button onclick="location.href='mypage.html'">마이페이지로 돌아가기</button>

</body>
</html>