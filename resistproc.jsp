<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>


<jsp:useBean id="user" class="user.User" scope="page"></jsp:useBean>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userEmail"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
<title>회원가입</title>
</head>
<body>
<%

//로그인이 된 유저는 회원가입페이지를 들어 갈 수없게 만드는 소스를 작성한다.
	String userID = null;
	//세션을 확인해서 userID에 세션이 존재하는 회원들은
	if (session.getAttribute("userID") != null) {
		//userID에 해당 세션ID를 넣어준다.
		userID = (String) session.getAttribute("userID");
	}
	//이미 로그인이 된사람은 또 다시 로그인을 할수없게 막아주는 부분
	if (userID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
	}
	
	
    	if (user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null 
    		 || user.getUserEmail() == null){
    		PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('모든 문항을 입력해주세요.')");
            script.println("history.back()");    // 이전 페이지로 사용자를 보냄
            script.println("</script>");
    	}else {
    		UserDAO userDAO = new UserDAO();
            int result = userDAO.join(user);
            if (result == -1){ // 회원가입 실패시
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('이미 존재하는 아이디입니다.')");
                script.println("history.back()");    // 이전 페이지로 사용자를 보냄
                script.println("</script>");
            }else{ // 회원가입 성공시
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("location.href = 'index.jsp'");    // 메인 페이지로 이동
                script.println("</script>");
            }
    	}
    %>
    

</body>
</html>