<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/import.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" 
    crossorigin="anonymous"></script>

    <script>
        $(document).ready(function(){
            $('.menu1').click(function(){
                if($('.menu1').hasClass('active')){
                    $('.menu1').removeClass('active');
                }else{
                    $('.menu1').addClass('active');
                }

                
            })
        })

        function hover(element, path) {
            element.setAttribute('src','./img/main/best_n_1.png');
            element.style.opacity='1', element.style.transition='0.5'

        }

        function unhover(element) {
            element.setAttribute('src','./img/main/1x/vertuo_g1.png');
            element.style.opacity='0.8', element.style.transition='0.5'
            element.stop().animate({opacity : 1},500);
        }

        $('#header').prepend('<div id="menu-icon"><span class="first"></span><span class="second"></span><span class="third"></span></div>');
	
        $("#menu-icon").on("click", function(){
        $("nav").slideToggle();
        $(this).toggleClass("active");
        });




    </script>
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

    <title>main</title>
</head>
<body>
    <div class="wrap">
        <header>
            <ul>
            
            <%
	//로그인이 된 사람들은 로그인정보를 담을 수 있도록한다.
	String userID = null;
	//만약에 현재 세션이 존재한다면
	if (session.getAttribute("userID") != null) {
		//그 아이디값을 받아서 userID인스턴스로 관리할 수 있도록 한다.
		userID = (String) session.getAttribute("userID");
	}
	%>
            
            <%
            if (userID == null){
            %>
                <li> <a href="./login.jsp">LOGIN </a></li>
                <li> <a href="./cart.html">CART </a></li>
                <li> <a href="./mypage_order.html"> ORDER </a></li>
                <li> <a href="./join_ok_d.jsp">JOIN </a></li>
                <li> <a href="./mypage.html">MY PAGE </a></li>
                
             <%
            }else {
             %>
             <li>  </li>
             <li> <a href="./logout.jsp">LOGOUT </a></li>
                <li> <a href="./cart.html">CART </a></li>
                <li> <a href="./mypage_order.html">ORDER </a></li>
                <li> <a href="./mypage.html">MY PAGE </a></li>
                
                <%
            }
                %>
                
            </ul>
            <div>


                <nav>
                    <h1>
                        <a href="./index.jsp">
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
    <!-- <div class="mainbanner">
            <div>
                <h2>recycled capsule</h2>
                <p> 네스프레소의 커피캡슐은 재활용이 됩니다. </p>
            </div> -->

    <div class="mainbanner2">

        <div class="main_nes">
            <div class="main_nes_w">
                <h2> 네스프레소의 재활용</h2>
                <div>
                    <p>
                        네스프레소의 알루미늄 캡슐은 <br>
                        재활용이 됩니다.
                    </p>
                    <p>
                        여러분도 캡슐재활용에 동참해보세요!
                    </p>
                </div>
                <div class="main_btn">
                    <a href="./brand.html"><input type="button" value=" learn more"></a>
                </div>
            </div>
        </div>


        <div class="main_nes">
            <div class="main_coffee_w">
                <h2> 커피찌꺼기의 재활용</h2>
                <div>
                    <p>
                        커피찌꺼기로 재활용 할 수있는 방법은 <br>
                        다양합니다.
                    </p>
                    <p>
                        집에서 직접 방향제를 만들어 보세요.
                    </p>
                </div>
                <div class="main_btn">
                    <a href="./brand.html"><input type="button" value=" learn more"></a>
                </div>
            </div>
        </div>

    </div>

    </div>

    <section>
        <div class="width1270">
            <h3>레시피</h3>
            <div class="vertuo_line">
                <p> <span> BEST 레시피 </span></p>
                <ul>
                    <li>
                        <div class="vertuo">
                            <a href="./best_recipe1.html">

                                <img src="./img/main/1x/vertuo_g1.png" class="main_b"
                                    onmouseover="this.src='./img/main/best_n_1.png'"
                                    onmouseout="this.src='./img/main/1x/vertuo_g1.png'">
                                <!-- <img src="./img/main/1x/vertuo_g1.png" class="main_b" 
                                    onmouseover="hover(this)"
                                     onmouseout="unhover(this)"  > -->
                                <span> Latte </span><br>
                                <mark> 카페라떼 </mark>
                            </a>
                        </div>
                    </li>

                    <li>
                        <div class="vertuo">
                            <a href="./best_recipe2.html">
                                <img src="./img/main/1x/vertuo_g2.png" alt=""
                                    onmouseover="this.src='./img/main/best_n_2.png'"
                                    onmouseout="this.src='./img/main/1x/vertuo_g2.png'">
                                <span> Latte </span><br>
                                <mark> 모카라떼 </mark>
                            </a>
                        </div>
                    </li>

                    <li>
                        <div class="vertuo">
                            <a href="./best_recipe3.html">
                                <img src="./img/main/1x/vertuo_g3.png" alt=""
                                    onmouseover="this.src='./img/main/best_n_3.png'"
                                    onmouseout="this.src='./img/main/1x/vertuo_g3.png'">
                                <span> Espresso </span>
                                <mark> 헤이즐넛 아메리카노 </mark>
                            </a>
                        </div>
                    </li>

                    <li>
                        <div class="vertuo">
                            <a href="./best_recipe4.html">
                                <img src="./img/main/1x/vertuo_g4.png" alt=""
                                    onmouseover="this.src='./img/main/best_n_4.png'"
                                    onmouseout="this.src='./img/main/1x/vertuo_g4.png'">
                                <span> Latte </span>
                                <mark> 크림라떼 </mark>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="orgins_line">
                <p> <span> NEW 레시피 </span> </p>
                <ul>
                    <li>
                        <div class="orgins">
                            <a href="./board_new1.html">
                                <img src="./img/main/1x/vertuo_g5.png" alt=""
                                    onmouseover="this.src='./img/main/orgins_line_1.png'"
                                    onmouseout="this.src='./img/main/1x/vertuo_g5.png'">
                                <span> Latte </span>
                                <mark> 티라미슈라떼 </mark>
                            </a>
                        </div>
                    </li>

                    <li>
                        <div class="orgins">
                            <a href="./board_new2.html">
                                <img src="./img/main/1x/vertuo_g6.png" alt=""
                                    onmouseover="this.src='./img/main/orgins_line_2.png'"
                                    onmouseout="this.src='./img/main/1x/vertuo_g6.png'">
                                <span>Latte </span>
                                <mark> 바닐라크림 라떼 </mark>
                            </a>
                        </div>
                    </li>

                    <li>
                        <div class="orgins">
                            <a href="./board_new3.html">
                                <img src="./img/main/1x/vertuo_g7.png" alt=""
                                    onmouseover="this.src='./img/main/orgins_line_3.png'"
                                    onmouseout="this.src='./img/main/1x/vertuo_g7.png'">
                                <span> Espresso </span><br>
                                <mark> 아샷추 </mark>
                            </a>
                        </div>
                    </li>

                    <li>
                        <div class="orgins">
                            <a href="./board_new4.html">
                                <img src="./img/main/1x/vertuo_g8.png" alt=""
                                    onmouseover="this.src='./img/main/orgins_line_4.png'"
                                    onmouseout="this.src='./img/main/1x/vertuo_g8.png'">
                                <span> Latte </span><br>
                                <mark> 아몬드크림라떼 </mark>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <div class="width1270">
        <ul class="three_box">
            <li>
                <a href="./product_home.html"> <img src="./img/main/three_box_1.png" alt=""><br>
                    <span> 네스프레소 커피캡슐 보기 </span></a>
            </li>

            <li>
                <a href="./product_home_illy.html"> <img src="./img/main/three_box_2.png" alt=""><br>
                    <span> 일리 커피캡슐 보기 </span></a>
            </li>

            <li>
                <a href="./product_home_star.html"> <img src="./img/main/three_box_3.png" alt=""><br>
                    <span> 스타벅스 커피캡슐 보기 </span></a>
            </li>
        </ul>
    </div>


    <section class="story">
        <div class="width1900">
            <h3>재활용</h3>
        </div>
        <div class="story_text">
            <div class="width1270">
                <div class="story_img">
                </div>
                <div class="uganda">
                    <b> 재활용이 가능한 캡슐 </b>
                    <p>
                        네스프레소의 커피캡슐은 재활용이 가능한 소재로 제작되었습니다.
                        여러분들도 네스프레소의 재활용에 참여하실 수 있습니다.
                        커피캡슐을 먹고 나온 쓰레기, 버리지말고 재활용캠페인에 참여해주세요.
                        여러분의 참여를 기다리고있습니다.
                    </p>

                    <div class="stroy_btn">
                        <a href="./brand.html"><input type="button" value="재활용페이지 가기"></a>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="video">
        <div class="width1270">
            <h3> 레시피 영상
            </h3>
            <iframe width="100%" height="635px" src="https://www.youtube.com/embed/2jLi5qORNhM" title="YouTube video player" 
            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen></iframe>
        </div>
    </section>

    <section class="fore_box">
        <div class="width1270">
            <h3> 커피가루 재활용 방법 </h3>
            <div class="">
                <ul>
                    <li>
                        <figure>
                            <img src="./img/main/fore_box_1.png" alt="" height="300px">
                            <figcaption>
                                <dl>
                                    <dt> 방향제로 사용하기</dt>
                                    <dd> 커피가루를 건조후, 다시팩에 넣어 방향제로 사용할 수 있습니다. </dd>
                                </dl>
                            </figcaption>
                        </figure>
                    </li>

                    <li>
                        <figure>
                            <img src="./img/main/fore_box_2.png" alt="" height="300px">
                            <figcaption>
                                <dl>
                                    <dt> 기름제거</dt>
                                    <dd> 후라이팬의 기름을 흡수해 세제를 적게 이용하고 기름을 제거할 수 있습니다. </dd>
                                </dl>
                            </figcaption>
                        </figure>
                    </li>

                    <li>
                        <figure>
                            <img src="./img/main/fore_box_3.png" alt="" height="300px">
                            <figcaption>
                                <dl>
                                    <dt> 신발 습기 제거</dt>
                                    <dd>종이컵에 넣고 잘 신지 않는 신발 옆에 두거나
                                        플라스틱 용기에 키친타올을 깔고 올려줍니다.
                                    </dd>
                                </dl>
                            </figcaption>
                        </figure>
                    </li>

                    <li>
                        <figure>
                            <img src="./img/main/fore_box_4.png" alt="" height="300px">
                            <figcaption>
                                <dl>
                                    <dt> 천연비료</dt>
                                    <dd>바람이 잘 드는곳에서 식물들에게 거름으로 좋게 사용할 수 있습니다. </dd>
                                </dl>
                            </figcaption>
                        </figure>
                    </li>
                </ul>
            </div>
        </div>
    </section>


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