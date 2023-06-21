<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11.05</title>
</head>
<body>
<%
   Connection conn = null;
   Statement stmt = null;
   String sql = null;
         
   String dburl = "jdbc:mysql://localhost:3306/bbs?characterEncoding=UTF-8&serverTimezone=Asia/Seoul";
   String dbid = "root";
   String dbpwp = "multi2020";
   
   Class.forName("com.mysql.jdbc.Driver");
   conn = DriverManager.getConnection(dburl,dbid,dbpwp);
   
   stmt = conn.createStatement(); //Statement객체 생성
   
   sql = "create table reg_20192084(id varchar(10) not null, pwd varchar(10) not null, name char(8) not null, email varchar(20) not null, mobile1 varchar(4) not null, mobile2 varchar(4) not null, mobile3 varchar(4) not null, primary key(id))";
   stmt.executeUpdate(sql);
         
   conn.close();
   stmt.close();
   
   out.println("reg_20192097 테이블이 생성되었습니다.");
%>
</body>
</html>