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
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	//String name = request.getParameter("name");

	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = null;
	ResultSet rs = null;
	
	String dburl = "jdbc:mysql://localhost:3306/bbs?characterEncoding=UTF-8&serverTimezone=Asia/Seoul";
	String dbid = "root";
	String dbpwd = "multi2020";
	
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(dburl,dbid,dbpwd);
	
 	String SQL = "select * from reg_20192084 where id = ? and pwd = ?";
	pstmt = conn.prepareStatement(SQL);
	
	pstmt.setString(1, id);
	pstmt.setString(2, pwd);

	rs = pstmt.executeQuery();
	
	if (rs.next())
	{
		String ID = rs.getString("id");
		String PWD = rs.getString("pwd");
		String NAME = rs.getString("name");
		
		
		session.setAttribute("id", ID);
		session.setAttribute("pwd", PWD);
		session.setAttribute("name", NAME);
	
%>



<script language="JavaScript">
	alert('<%=id%>님 환영합니다.');
	location.href = "./index.jsp";

<%
} else{
	out.println("<script> alert('등록되지 않은 아이디거나, 아이디 또는 비밀번호를 잘못 입력하셨습니다.'); location.href='login.jsp';</script>");
	pstmt.close();
	rs.close();
	conn.close();
}
%>
</script>

</body>
</html>