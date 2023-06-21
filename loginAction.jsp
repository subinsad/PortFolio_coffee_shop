<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
 
<jsp:useBean id="user" class="user.User" scope="page"></jsp:useBean>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
 
<head>
<meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
<title>JSP BBS</title>
</head>
<body>
    <% // 자바 코드 삽입 
    
  //로그인을 한 회원들은 모두 세션아이디를 부여받기 때문에 로그인여부가 확인가능하다. 
  //로그인이 된 유저는 로그인과 회원가입페이지를 들어 갈 수없게 만드는 소스를 작성한다.
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
  		script.println("location.href = 'story.html'");
  		script.println("</script>");
  	}
    
    
        UserDAO userDAO = new UserDAO();
        int result = userDAO.login(user.getUserID(), user.getUserPassword());
        if (result ==1){
        	session.setAttribute("userID", user.getUserID());
    		//하나의 스크립트 문장을 넣어줄 수있도록 한다.
    		PrintWriter script = response.getWriter();
    		//println으로 접근해서 스크립트 문장을 유동적으로 실행 할 수 있게한다.
    		script.println("<script>");
    		//메인 페이지로 넘겨주는 선언을 해주고,
    		script.println("location.href = 'index.jsp'");
    		//스크립트 태그를 닫아준다.
    		script.println("</script>");
        }
        else if (result == 0){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호가 틀립니다.')");
            script.println("history.back()");   //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        else if (result == -1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('존재하지 않는 아이디입니다.')");
            script.println("history.back()");    //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        else if (result == -2){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('DB 오류가 발생했습니다.')");
            script.println("history.back()");    //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        
        
    %>
 
</body>
</html>