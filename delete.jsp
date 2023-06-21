<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/import.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" 
    crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>

<div class="wrap_login">
        <header>
            <ul>
                <li> <a href="./login.jsp">LOGIN </li></a>
                <li> <a href="./cart.html">CART </li></a>
                <li> <a href="./mypage_order.html">ORDER </li></a>
                <li> <a href="./join_ok_d.jsp">JOIN </li></a>
                <li> <a href="./mypage.html">MY PAGE </li></a>
            </ul>
            <div>
                <h1>
                    <a href="./index.jsp">
                        <img src="./img/main/logo-fin.png" alt="">
                    </a>
                </h1>

                <nav>
                    <ul class="header_nav">
                         <li class="dropdown">
                            <a href="">스토리</a>
                            <ul>
                                <li><a href="./story.html">소개</a></li>
                                <li><a href="./coffee.html">커피용어</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="">커피캡슐</a>
                            <ul>
                                <li><a href="./product_home.html">네스프레소</a></li>
                                <li><a href="./product_home_illy.html">일리</a></li>
                                <li><a href="./product_home_star.html">스타벅스</a></li>
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="">레시피</a>
                            <ul>
                                <li><a href="./bbs.jsp">게시판</a></li>
                                <li><a href="./best_recipe1.html">구매하기</a></li>
                            </ul>
                        </li>
                          <li>
                            <a href="./brand.html">재활용</a>
                          </li>
                          <li class="dropdown">
                            <a href="">고객센터</a>
                            <ul>
                                <li><a href="./f&q.html">faq</a></li>
                                <li><a href="./event.html">news</a></li>
                              </ul>   
                          </li>
                        </ul>
                      </nav>
            </div>
        </header>               
       <form method="post" action="deleteproc.jsp">

        <section class="width565">
            <h2 class="en_font"> 삭제할 아이디 정보를 입력하세요  </h2>
            <div class="login_box">
            <span>  비밀번호 : </span>
                <input type="text" size="10" name="pwd" autocomplete="off" required>
            </div>
    
               
                <div class="login_btn">
                    <input type="submit" value="삭제">
                    <input type="reset" value="취소">
                </div>
    
                
            </section>
            </form>

            <footer>
            <div class="width1900">
                <div class="footer_span">
                    <p>상호 : Deeply 대표자 : 박수빈 등록번호 : 110-86-10100
                        <span>통신판매업신고 2014 서울서대문0247 </span> <br>
                        이메일 : deeply@naver.com 주소 : 경기도 화성시 봉담읍 삼천병마로 1182
                    </p>
                </div>
            </div>
        </footer>
    </div>
    
</form>
</body>
</html>