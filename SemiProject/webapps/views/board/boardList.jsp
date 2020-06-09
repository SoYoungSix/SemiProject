<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.so.board.model.vo.*, java.util.* " %>
<%
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Coding Panda</title>
    <meta name="description" content="">

    
    <script src="http://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/codingPanda/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/codingPanda/resources/css/jquery.smartmenus.bootstrap-4.css"/>
    <link rel="stylesheet" href="/codingPanda/resources/css/style.css">
    <link rel="stylesheet" href="/codingPanda/resources/css/animate.css"/>
	
</head>
<body class="home">
<header id="header">
<div class="container">
<div class="row">
<div id="logo-bar" class="col-sm-12">
    <div id="logo">
        <h1><a href="index.html"><img src="/codingPanda/resources/images/logoCP.png" style="height: 100px; width: 280px;"/></a></h1>
    </div>
</div>

<div id="menu-bar" class="col-sm-12">
    <nav class="navbar navbar-expand-lg navbar-light  rounded mb-4">
        <!--  <div class="container">-->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNavDropdown">
             <ul class="nav navbar-nav">
                <li class="nav-item dropdown active"><a href="index.html" class="nav-link"><span>HOME</span></a>
                </li>
                <li class="nav-item dropdown"><a href="#" class="nav-link"><span>전체 모임</span></a>
                </li>
                <li class="nav-item dropdown"><a href="#" class="nav-link"><span>모임 만들기</span></a>
                </li>
                <li class="nav-item dropdown"><a href="#" class="nav-link"><span>로그인</span></a>
                </li>
                <li class="nav-item dropdown"><a href="#" class="nav-link"><span>회원가입</span></a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<!--/#menu-bar -->
</div>
</div>
</header>


<div class="container">

<div class="row sub_content">

    <div class="col-lg-8 mx-auto">
        <div class="dividerHeading">
            <h4><span>우리 모임의 게시글</span></h4>
        </div>
    </div>

    <div class="col-lg-8 table-responsive mx-auto">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>번호</th>
                <th>사진</th>
                <th>작성자</th>
                <th>제목</th>
                <th>작성일</th>
            </tr>
            </thead>
            <tbody>
            <% for(Board b : list) { %>
            <tr>
            	<input type="hidden" value="<%= b.getBno() %>"/>
                <td><%= b.getBno() %></td>
                <td>
                <% if(b.getmPicture() != null) { %>
                <!-- 변경해야함 -->
                <img src="/codingpanda/resources/<%= b.getmPicture() %>">
                <% } else { %>
                <span><img class="rounded-circle img-responsive" src="/codingPanda/resources/images/content/recent_1.png"
                	   width="30px;" height="30px;"></span>
                <% } %>
                </td>
                <td><%= b.getbWriter() %></td>
                <td><%= b.getbTitle() %></td>
                <td><%= b.getbDate() %></td>
            </tr>
			<% } %>
            </tbody>
        </table>
    </div>
</div>

<div class="row">
    <div class="col-lg-10 text-right">
        <!-- Standard button -->
        <button class="btn btn-default btn-md" type="button" onclick="location.href='views/board/boardInsertForm.jsp'">작성하기</button>
    </div>
</div>
</div>

<div style="height: 50px;"></div>

		<%-- 페이지 처리 --%>
		<div class="pagingArea" align="center">
			<button onclick="location.href='<%= request.getContextPath() %>/selectList.bo?currentPage=1'"><<</button>
			<% if(currentPage <= 1){  %>
			<button disabled><</button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/selectList.bo?currentPage=<%=currentPage - 1 %>'"><</button>
			<%  } %>
			
			<% for(int p = startPage; p <= endPage; p++){
					if(p == currentPage){	
			%>
				<button disabled><%= p %></button>
			<%      }else{ %>
				<button onclick="location.href='<%= request.getContextPath() %>/selectList.bo?currentPage=<%= p %>'"><%= p %></button>
			<%      } %>
			<% } %>
				
			<%  if(currentPage >= maxPage){  %>
			<button disabled>></button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/selectList.bo?currentPage=<%=currentPage + 1 %>'">></button>
			<%  } %>
			<button onclick="location.href='<%= request.getContextPath() %>/selectList.bo?currentPage=<%= maxPage %>'">>></button>
			
		</div>
		
		<div style="height: 30px;"></div>

<script>
	$(function(){
		$("td") .click(function(){
			var bno = $(this).parent().find("input").val();
			location.href="<%=request.getContextPath()%>/selectOne.bo?bno=" + bno;
		});
	});
</script>

<section class="footer_bottom">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <p class="copyright">&copy; Copyright 2020 SoYoung | Powered by  <a href="#">352 Class</a></p>
            </div>

            <div class="col-sm-6 ">
                <div class="footer_social">
                    <ul class="footbot_social">
                        <li><a class="fb" href="#." data-placement="top" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twtr" href="#." data-placement="top" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="dribbble" href="#." data-placement="top" data-toggle="tooltip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
                        <li><a class="skype" href="#." data-placement="top" data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
                        <li><a class="rss" href="#." data-placement="top" data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="/codingPanda/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/codingPanda/resources/js/popper.min.js"></script>
<script src="/codingPanda/resources/js/bootstrap.min.js"></script>
<script src="/codingPanda/resources/js/jquery.easing.1.3.js"></script>
<script src="/codingPanda/resources/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="/codingPanda/resources/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="/codingPanda/resources/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="/codingPanda/resources/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="/codingPanda/resources/js/jflickrfeed.js"></script>
<script type="text/javascript" src="/codingPanda/resources/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="/codingPanda/resources/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="/codingPanda/resources/js/swipe.js"></script>
<script type="text/javascript" src="/codingPanda/resources/js/jquery.countTo.js"></script>
<script src="/codingPanda/resources/js/main.js"></script>

<!-- WARNING: Wow.js doesn't work in IE 9 or less -->
<!--[if gte IE 9 | !IE ]><!-->
<script type="text/javascript" src="/codingPanda/resources/js/wow.min.js"></script>
<script>
    // WOW Animation
    //new WOW().init();
</script>

</body>
</html>
