<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import = "java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>

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

<% 
    String userID = null;
    if (session.getAttribute("userID") != null){
        userID = (String) session.getAttribute("userID");
    }
    if (userID == null){
    	PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('로그인하세요.')");
        script.println("location.href = 'login.jsp'");
        script.println("</script>");
    }
    int bbsID = 0;
    if (request.getParameter("bbsID") != null)
    {
        bbsID = Integer.parseInt(request.getParameter("bbsID"));
    }
    if (bbsID == 0)
    {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다')");
        script.println("location.href = 'bbs.jsp'");
        script.println("</script>");
    }
    Bbs bbs = new BbsDAO().getBbs(bbsID);
    if (!userID.equals(bbs.getUserID())){
    	PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('권한이 없습니다.')");
        script.println("location.href = 'bbs.jsp'");
        script.println("</script>");
    }
    %>
    
    <div class="wrap">
        <header>
            <ul>

            
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
                <div class="wrap_menu">
                    <div class="menu1">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>


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
                                <li><a href="./write.jsp">게시판</a></li>
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
                    <div class="width1270">
                        <section class="faq">
                            <h2 class="k_font"> board </h2>
                            <P> 여러분의 레시피를 올려보세요.</P>
                        </section>
                    </div>

                    <section class="">
                        <div class="width1270">
                            <form method="post" action="writeAction.jsp">
                                <table style="text-align: center; border: 1px solid #dddddd; width: 100%; height: 500px;" >
                                    <thead>
		    	    	<tr>
		    	    		<th colspan= "2" style= "padding-top: 50px; text-align: center; font-size: 1.3em;">게시판 글 수정 양식</th>
		    	    	</tr>
	    	    	</thead>
			    	<tbody>
			    		<tr>
			    			<td><input style="width: 95%; height: 80px; margin: 20px;"
			    			type="text" class="form-control" placeholder="글 제목"  name="bbsTitle" maxlength="50" value="<%= bbs.getBbsTitle()%>"></td>
			    		</tr>
			    		<tr>
			    			<td><textarea class="form-control" placeholder="글 내용"  name="bbsContent" maxlength="2048" style= "height:350px; width: 95%;"><%= bbs.getBbsContent()%></textarea></td>
			    		</tr>
			    	</tbody>
    	    	</table>
    	    	<input type="submit" class="btn btn-primary pull-right" value="글수정" style="width: 145px; height: 50px; font-size: 15px; float: right;
    				margin: 50px 0; font-weight: 600; background: white; cursor: pointer;">
    		</form>
                                    
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














</body>
</html>