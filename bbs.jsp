<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

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
		

	    int pageNumber = 1;
	    if (request.getParameter("pageNumber") != null){
	    	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
            <section class="faq" style="position: relative;">
                <h2 class="k_font"> 레시피 게시판 </h2>
                <P> 레시피를 공유해 보세요</P>

                <div class="faq_table">
                <form method="post" action="writeAction.jsp">
                    <table border="1" class="board_list_table">
                        <thead>
    	    	<tr>
    	    		<th style= " text-align: center;">번호</th>
    	    		<th style= " text-align: center;">작성자</th>
    	    		<th style= "text-align: center;">제목</th>
    	    		<th style= " text-align: center;">작성일</th>
    	    	</tr>
    	    	</thead>
    	    	<tbody>
    	    		<tr>
    	    			<%
                    BbsDAO bbsDAO = new BbsDAO();
                    ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
                    for(int i = 0; i < list.size(); i++)
                    {
                %>
                
                    <tr>
                        <td><%=list.get(i).getBbsID() %></td> <!-- 특수문자를 제대로 출력하기위해 & 악성스크립트를 방지하기위해 -->
                        <td><%=list.get(i).getUserID() %></td>
                        <td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></a></td>
                        
                        <td><%=list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11, 13) + "시" 
                        + list.get(i).getBbsDate().substring(14,16) + "분" %></td>
                    </tr>
                <%
                    }
                %>
    	    		</tr>
    	    	</tbody>
    	    </table>
    	    <%
                if(pageNumber != 1) {
            %>
                <a href="bbs.jsp?pageNumber=<%=pageNumber - 1 %>" class="btn btn-success btn-arrow-left"style="text-decoration: none; color: white;
    				margin-top: 80px; display: inline-block;">이전</a>
            <%
                } if (bbsDAO.nextPage(pageNumber + 1)) {
            %>
                <a href="bbs.jsp?pageNumber=<%=pageNumber + 1 %>" class="btn btn-success btn-arrow-left" style="text-decoration: none; color: white;
    				margin-top: 80px; display: inline-block;">다음</a>
            
            <%
                }
            %>
    	    

                    <div class="board_list_btn">
                      <a href="write.jsp"><input type="button" value="글쓰기"></a>
                    </div>   
                    </form>                
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