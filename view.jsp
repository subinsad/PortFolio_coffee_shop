<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
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
	int bbsID = 0;
	if (request.getParameter("bbsID") != null){
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	
	if (bbsID ==0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		//로그인 안된 사람들은 로그인 페이지로 이동하게 만들어주면 된다.
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");
		//로그인이 된 사람들은 이쪽으로 넘어가게 해준다.
	}
	
	Bbs bbs = new BbsDAO().getBbs(bbsID);
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
                            
                                <table class="board_new_wrap" >
                                    <thead>
                                       
                                    </thead>
                                    <tbody style="display: grid;">
                                        <tr class="view_title">                                         
                                            <td><%=bbs.getBbsTitle() %></td>
                                            
                                        </tr>
                                        
                                        <tr  class="new1_box1" >
                                        <td style=" width: 20%; padding-right: 10px;">작성자 :  <%=bbs.getUserID().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></td>
                                        <td> 작성일자 : <%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분" %></td>
                                        
                                        </tr>

                                        <tr style="line-height:50px;">
                                        	<td> 레시피 : </td>
                                        </tr>
                                        
                                        <br> 
                                        <tr>
                                            <td colspan="2" style="min-height:200px; text-align:left;">
                                            <%= bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></td>
                                        </tr>
                                        
                                    </tbody>
                                    </table>
                                    
                                    <div class="new1_box3">
                                    <p>댓글달기</p>
            						<input type="text" placeholder="댓글을 입력해주세요." style="width: 100%;">
            						
                                        <a href="bbs.jsp"><input type="button" value="목록"></a>
                                        <%
                                        	if(userID != null && userID.equals(bbs.getUserID())) {
                                        %>		
                                        		<a href="update.jsp?bbsID=<%= bbsID %>" class="board_btn"> 수정 </a>
                                        		<a href="deleteAction.jsp?bbsID=<%= bbsID %>" class="board_btn"> 삭제 </a>
                                        <%		
                                        	}
                                        %>
                                        <a href="write.jsp"><input type="button" value="글쓰기"></a>
                                    </div>
                                    

                                
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