<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <link rel="stylesheet" href="./css/import.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
        (function(d) {
          var config = {
            kitId: 'egm2vlw',
            scriptTimeout: 3000,
            async: true
          },
          h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='https://use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
        })(document);
        
      </script>
    <title>login</title>
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
        <form method="post" action = "loginAction.jsp">

        <section class="width565">
            <h2 class="en_font"> login </h2>
            <div class="login_box">
                <input type="text" name="userID"  placeholder="ID"> <br>
                <input type="password" name="userPassword" placeholder="PWD">
            </div>
    
            <div class="login_search">
                <a href="">아이디찾기/</a>
                <a href="">비밀번호찾기</a>
            </div>
               
                <div class="login_btn">
                    <input type="submit" value="로그인">
                </div>
    
                <div class="login_join">
                    <p>아직 회원이 아니신가요? <br>
                        고객님을 위한 다양한 혜택이 준비되어 있습니다.
                    </p>
                    <button type="button" value="회원가입" onclick="location.href='./join_ok_d.jsp'"> 회원가입</button>
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
    
</body>
</html>