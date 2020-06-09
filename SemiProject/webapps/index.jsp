<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.so.board.*, java.util.* " %>

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
                <li class="nav-item dropdown"><a href="/codingPanda/selectList.bo" class="nav-link"><span>전체 모임</span></a>
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

<div style="height: 100px;"></div>

<section class="wrapper">
    <section id="list" class="showcase" style="padding-bottom: 100px;">
        <div class="container">
          <div class="row text-center">
            <div class="col">
              <h2 class="display-5 mb-4">당신에게 맞는 코딩 메이트를 찾아보세요!</h2>
              <div class="search">
                <form action="/search/">
                  <!-- Form Row 1 -->
                  <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label class="sr-only">Group</label>
                      <input type="text" name="group" class="form-control" placeholder="모임명">
                    </div>
              
                    <div class="col-md-6 mb-3">
                      <label class="sr-only">Location</label>
                      <input type="text" name="location" class="form-control" placeholder="지역">
                    </div>
                  </div>
    
                  <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label class="sr-only">Teacher</label>
                      <input type="text" name="teacher" class="form-control" placeholder="언어스택">
                    </div>
              
                    <div class="col-md-6 mb-3">
                      <label class="sr-only">Start Date</label>
                      <input type="date"" name="start_date" class="form-control">
                    </div>
                  </div>
                  <button class="btn btn-secondary btn-block mt-4" type="submit">검색하기</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>

<div class="container">
    <div class="row sub_content">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="dividerHeading">
                <h2 style="text-align: center;">최근 등록된 모임</h2>
            </div>
        </div>

        <div class="col-sm-12">
            <div id="post-slider" class="owl-carousel">
                <div class="post-slide">
                    <div class="post-img">
                        <a href="#" ><img src="images/blog/blog_1.png" alt=""></a>
                    </div>
                    <div class="post-content">
                        <div class="post-date">
                            <span class="month">apr</span>
                            <span class="date">10</span>
                        </div>
                        <h5 class="post-title"><a href="#">Latest News Post</a></h5>
                        <p class="post-description">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae similique.
                        </p>
                    </div>
                    <ul class="post-bar">
                        <li> <i class="fa fa-users"></i> <a href="#">admin</a> </li>
                        <li> <i class="fa fa-comments"></i> <a href="#">2</a> </li>
                        <li> <i class="fa fa-thumbs-up"></i> <a href="#">2 Likes</a> </li>
                    </ul>
                </div>
                <div class="post-slide">
                    <div class="post-img">
                        <a href="#" ><img src="images/blog/blog_2.png" alt=""></a>
                    </div>
                    <div class="post-content">
                        <div class="post-date">
                            <span class="month">apr</span>
                            <span class="date">12</span>
                        </div>
                        <h5 class="post-title"><a href="#">Latest News Post</a></h5>
                        <p class="post-description">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae similique.
                        </p>
                    </div>
                    <ul class="post-bar">
                        <li> <i class="fa fa-users"></i> <a href="#">admin</a> </li>
                        <li> <i class="fa fa-comments"></i> <a href="#">3</a> </li>
                        <li> <i class="fa fa-thumbs-up"></i> <a href="#">5 Likes</a> </li>
                    </ul>
                </div>
                <div class="post-slide">
                    <div class="post-img">
                        <a href="#" ><img src="images/blog/blog_3.png" alt=""></a>
                    </div>
                    <div class="post-content">
                        <div class="post-date">
                            <span class="month">apr</span>
                            <span class="date">14</span>
                        </div>
                        <h5 class="post-title"><a href="#">Latest News Post</a></h5>
                        <p class="post-description">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae similique.
                        </p>
                    </div>
                    <ul class="post-bar">
                        <li> <i class="fa fa-users"></i> <a href="#">admin</a> </li>
                        <li> <i class="fa fa-comments"></i> <a href="#">5</a> </li>
                        <li> <i class="fa fa-thumbs-up"></i> <a href="#">7 Likes</a> </li>
                    </ul>
                </div>
                <div class="post-slide">
                    <div class="post-img">
                        <a href="#" ><img src="images/blog/blog_4.png" alt=""></a>
                    </div>
                    <div class="post-content">
                        <div class="post-date">
                            <span class="month">apr</span>
                            <span class="date">15</span>
                        </div>
                        <h5 class="post-title"><a href="#">Latest News Post</a></h5>
                        <p class="post-description">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae similique.
                        </p>
                    </div>
                    <ul class="post-bar">
                        <li> <i class="fa fa-users"></i> <a href="#">admin</a> </li>
                        <li> <i class="fa fa-comments"></i> <a href="#">9</a> </li>
                        <li> <i class="fa fa-thumbs-up"></i> <a href="#">8 Likes</a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</section><!--end wrapper-->

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
