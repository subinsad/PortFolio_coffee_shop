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
    <title>board</title>

    <link rel="stylesheet" href="./css/import.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
        (function (d) {
            var config = {
                kitId: 'egm2vlw',
                scriptTimeout: 3000,
                async: true
            },
                h = d.documentElement, t = setTimeout(function () { h.className = h.className.replace(/\bwf-loading\b/g, "") + " wf-inactive"; }, config.scriptTimeout), tk = d.createElement("script"), f = false, s = d.getElementsByTagName("script")[0], a; h.className += " wf-loading"; tk.src = 'https://use.typekit.net/' + config.kitId + '.js'; tk.async = true; tk.onload = tk.onreadystatechange = function () { a = this.readyState; if (f || a && a != "complete" && a != "loaded") return; f = true; clearTimeout(t); try { Typekit.load(config) } catch (e) { } }; s.parentNode.insertBefore(tk, s)
        })(document);
    </script>


    <title>board list</title>
</head>

<body>
    <%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%>

    <div class="wrap_faq">
        <header>
            <ul>
            
            <%
            Object userid = session.getAttribute("id");
            %>
            
            <%
            if (userid==null){
            %>
                <li> <a href="./login.jsp">LOGIN </li></a>
                <li> <a href="./cart.html">CART </li></a>
                <li> <a href="./mypage_order.html">ORDER </li></a>
                <li> <a href="./join_ok_d.jsp">JOIN </li></a>
                <li> <a href="./mypage.html">MY PAGE </li></a>
                
             <%
            } else {
             %>
             <li> <%="name"%>님 </li>
             <li> <a href="./logout.jsp">LOGOUT </li></a>
                <li> <a href="./cart.html">CART </li></a>
                <li> <a href="./mypage_order.html">ORDER </li></a>
                <li> <a href="./mypage.html">MY PAGE </li></a>
                
                <%
            }
                %>
                
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

        <div class="width1270">
            <section class="faq">
                <h2 class="k_font"> 레시피 게시판 </h2>
                <P> 레시피를 공유해 보세요</P>

                <div class="faq_table">
                <form method="post" action="writeAction.jsp">
                    <table border="1" class="board_list_table">
                        <caption>f&q목록</caption>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>작성자</th>
                                <th><a href="#">제목 </a></th>
                                <th>등록일</th>
                            </tr>


                            <tr>
                                <td>1</td>
                                <td>유현영</td>
                                <td><a href="./board_new2.html">바닐라 라떼 레시피 </a></td>
                                <td> 22.10.02</td>
                            </tr>
                        
                        </thead>
                    </table>

                    <div class="board_list_btn">
                      <a href="./board_sub.html"><input type="submit" value="글쓰기"></a>  
                    </div>   
                    </form>                
                </div>
                

                <div class="number">
                    <ul>
                        <li> <a href="#"> &lt; </a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li> <a href="#">  &gt; </a></li>

                    </ul>
                </div>
            </section>
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


</body>

</html>