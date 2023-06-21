<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/import.css">
    <title>join</title>
    <script>
        (function(d) {
          var config = {
            kitId: 'egm2vlw',
            scriptTimeout: 3000,
            async: true
          },
          h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='https://use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
        })(document);
        
        function checkLogin(){
        	var form = document.resistForm;
        	if(form.id.value==""){
        		alert("아이디를 입력해 주세요.");
        		form.id.focus();
        		return false;
              }
              else if (form.id.value.length < 4 || form.id.value.length > 16) {
                 alert("아이디를 조건에 맞게 입력해 주세요.");
                 form.id.select();
                 return;
                 
                 
              }


        	var a = form.email.value.indexOf("@");
        	var b = form.email.value.indexOf(".");

        	if(a == 0 || a == -1 || b == o || b == -1) {
           alert("이메일을 정확하게 입력하세요");
           form.email.value="";
           form.email.focus();
            return false;
        	}
        	
        	

        		var form = document.userInfo;
        		
        		if(!form.idDuplication.value !="idCheck"){
        			alert("아이디 중복체크를 해주세요.");
        			return false;
        		}
        		
        	}
      </script>
</head>
<body>
    <div class="wrap_join">
        <header>
            <ul>
                <li> <a href="./login.jsp">LOGIN </a></li>
                <li> <a href="./cart.html">CART </a></li>
                <li> <a href="./mypage_order.html">ORDER </a></li>
                <li> <a href="./join.html">JOIN </a></li>
                <li> <a href="./mypage.html">MY PAGE</a></li>
            </ul>
            <div>
                <div class="wrap_menu">
                    <div class="menu1">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>


                <nav>
                    <h1>
                        <a href="./index.html">
                            <img src="./img/main/logo-fin.png" alt="">
                        </a>
                    </h1>

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
    	</div>
    </header>

		<form method="POST" action="resistproc.jsp">
        <div class="width1270">
            <section class="join">
                <h2>회원가입</h2>
                <div class="join_bar">
                    <span> 회원구분</span>
                    <span> 개인회원</span>
                </div>

                <h3 class="k_font"> 기본정보</h3>
                <span class="join_r"> 필수입력사항 </span>

                <div class="join_info">
                    <ul>
                        <li> <label for="id" class="join_af"> 아이디</label>
                            <input type="text"  name="userID"  >
                            <p> (영문소문자/숫자,4~16자)</p>
                        </li>

                        <li> <label for="pwd" class="join_af">비밀번호 </label> 
                            <input type="password" name="userPassword">
                            <p> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</p>
                        </li>

                        <li> <label for="pwd" class="join_af"> 비밀번호 확인</label>
                            <input type="password">
                        </li>

                        <li> <label for="" class="join_af">이름 </label>
                            <input type="text" name="userName">
                        </li>

                        <li class="join_call"> <label for=""class="join_af" >휴대전화</label>
                            <span class="call_next"></span>
                            <input type="text" name="mobile1">
                            <span class="call_next"> - </span>
                            <input type="text" name="mobile2">
                            <span class="call_next"> - </span>
                            <input type="text"  name="mobile3">
                        </li>

                        <li> <label for="">이메일 </label>
                            <input type="email"  name="userEmail">
                    </ul>
                </div>


                <div class="join_plus">
                    <h3 class="k_font"> 추가정보 </h3>
                    <ul class="join_bar">
                        <li><span> 성별</span> 
                            <input type="radio"> 남자
                            <input type="radio"> 여자
                        </li>
                        <li><span>생년월일</span>
                            <input type="text">년
                            <input type="text">월
                            <input type="text">일
                        </li>
                    </ul>
                </div>                
            </section>
            
            <div class="join_btn">
                <input type="submit" value="회원가입">
                <input type="button" value="취소">

            </div>
            </section>
        </form>
        </div>

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