<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="text/javascript"
   src="/codingPanda/resources/js/jquery-1.10.2.min.js"></script>
<title>Amaze Responsive Multipurpose Template</title>
<meta name="description" content="">

<!-- CSS FILES -->
<link rel="stylesheet"
   href="/codingPanda/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
   href="/codingPanda/resources/css/jquery.smartmenus.bootstrap-4.css" />
<link rel="stylesheet" href="/codingPanda/resources/css/style.css">
<link rel="stylesheet" href="/codingPanda/resources/css/animate.css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="home">
   <header id="header">
      <div class="container">
         <div class="row">
            <div id="logo-bar" class="col-sm-12">
               <div id="logo">
                  <h1>
                     <a href="/codingPanda/index.jsp"><img
                        src="/codingPanda/resources/images/logoCP.png"
                        style="height: 100px; width: 280px;" /></a>
                  </h1>

               </div>
            </div>

            <!-- Navigation
================================================== -->
            <div id="menu-bar" class="col-sm-12">
               <nav class="navbar navbar-expand-lg navbar-light  rounded mb-4">
                  <!--  <div class="container">-->
                  <button class="navbar-toggler" type="button"
                     data-toggle="collapse" data-target="#navbarNavDropdown"
                     aria-controls="navbarSupportedContent" aria-expanded="false"
                     aria-label="Toggle navigation">
                     <span class="navbar-toggler-icon"></span>
                  </button>

                  <div class="collapse navbar-collapse" id="navbarNavDropdown">
                     <ul class="nav navbar-nav">
                        <li class="nav-item dropdown active"><a
                           href="/codingPanda/index.jsp" class="nav-link"><span>HOME</span></a>
                        </li>
                        <li class="nav-item dropdown"><a href="#" class="nav-link"><span>전체
                                 모임</span></a></li>
                        <li class="nav-item dropdown"><a href="#" class="nav-link"><span>모임
                                 만들기</span></a></li>
                        <li class="nav-item dropdown"><a href="#" class="nav-link"><span>로그인</span></a>
                        </li>
                        <li class="nav-item dropdown"><a href="#" class="nav-link"><span>회원가입</span></a>
                        </li>
                     </ul>
                  </div>
               </nav>
            </div>
            <!--/#menu-bar -->
            <section id="page-head" class="col-sm-12">
               <div class="page_title">
                  <h2>모임 정보 수정하기</h2>
               </div>
               <nav id="breadcrumbs">
                  <ul>
                     <li><a href="/codingPanda/index.jsp">Home</a></li>
                     <li>Group Update</li>
                  </ul>
               </nav>
            </section>
         </div>
      </div>
   </header>




   <!-- 모임정보 수정 페이지 시작 -->

   <!--start wrapper-->
   <section class="wrapper">
      <section class="content contact text-center">

         <div class="container">
            <!-- 
               이건 지도 나타내는 부분.
               <div class="row sub_content">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                     <div class="maps">
                        <div id="page_maps"></div>
                     </div>
                  </div>
               </div> 
            
            -->
            <div class="blog_single">
               <div class="row sub_content">
                  <div class="col-md-12">
                     <div class="dividerHeading">
                        <h4>
                           <span>그룹 정보 수정하기</span>
                        </h4>
                     </div>
                     <p>그룹에 대한 정보를 수정해보세요!</p>

                     <!--       <div class="alert alert-success hidden alert-dismissable" id="contactSuccess">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <strong>Success!</strong> Your message has been sent to us.
                  </div>

                  <div class="alert alert-error hidden" id="contactError">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <strong>Error!</strong> There was an error sending your message.
                  </div> -->
                  <div class=row>
                  <div class="col-lg-6">
                        <div>
                           <img src="http://placehold.it/500x300" alt="스터디 대표 이미지" style = "padding-bottom : 10px;"><br>
                        </div>
                     
                           <button class="btn btn-warning btn-lg" type="button" style="padding-right:50px; padding-left:50px" >이미지
                              추가하기</button>&nbsp;&nbsp;&nbsp;
                           <button class="btn btn-success btn-lg" type="button" style="padding-right:50px; padding-left:50px">이미지
                              변경하기</button>
                  </div>
                     <div class="col-lg-3">
                  <p  style="font-size: 20px;">모임원 내보내기</p>
                  </div>
                  <div class="col-lg-3">
                  <p  style="font-size: 20px;">모임장 양도하기</p>
                  </div>
                  </div>
                     <form id="contactForm" action="" novalidate="novalidate">
                        <div class="row form-group">
                           <div class="col-lg-6 ">
                              <input type="text" id="name" name="name" class="form-control"
                                 maxlength="100" data-msg-required="스터디명을 입력해주세요." value=""
                                 placeholder="스터디명">
                           </div>
                           <div class="col-lg-6 ">
                              <input type="number" id="memCt" name="memCt"
                                 placeholder="모임 정원" max="10" min="1" value="" step="1"
                                 class="form-control" maxlength="100" value="">
                           </div>
                        </div>
                        <div class=row>
                           <div class="col-lg-6 ">
                              <select id="language" name="language" class="form-control"
                                 maxlength="100" data-msg-required="언어를 선택해주세요." value="">
                                 <option value="언어선택" hidden>언어선택</option>
                                 <option value="C">C</option>
                                 <option value="C++">C++</option>
                                 <option value="C#">C#</option>
                                 <option value="Java">Java</option>
                                 <option value="Javascript">Javascript</option>
                                 <option value="Python">Python</option>
                                 <option value="SQL">SQL</option>
                                 <option value="직접 입력">직접 입력</option>
                              </select>
                           </div>
                           <div class="col-lg-6 text-left">
                              <input type="text" id="result"
                                 style="background-color: transparent; border: 0 solid black; text-align: left; color: royalblue; position: absolute; margin: 0, 50, 0, 0; margin-top: 10px;">
                           </div>
                        </div>

                        <div class="row form-group">
                           <div class="col-md-12">
                              <textarea id="message" class="form-control" name="message"
                                 rows="10" cols="50" data-msg-required="내용을 입력하세요."
                                 maxlength="5000" placeholder="모임을 소개해주세요."></textarea>
                           </div>
                        </div>
                        <div class=row>
                           <div class="col-lg-6 col-sm-6 ">
                              <label for="date1">모임 시작일시</label> <input
                                 type="datetime-local" id="date1" name="date1"
                                 class="form-control" maxlength="100" required>
                           </div>
                           <div id="long" class="col-lg-6 col-sm-6  "
                              style="display: none;">
                              <label for="date2">모임 종료일시</label> <input
                                 type="datetime-local" name="date2" class="form-control"
                                 maxlength="100" required style="text-align: left">
                           </div>
                           <div class="row mx-auto">
                              <div id="check1" class="col-lg-6 col-sm-6 ">
                                 <label for="longTck">장기 모임일 경우 체크</label> <input type="radio"
                                    id="longTck" name="Tck">
                              </div>
                              <div id="check2" class="col-lg-6 col-sm-6 ">
                                 <label for="shortTck">단기 모임일 경우 체크</label> <input
                                    type="radio" id="shortTck" name="Tck">
                              </div>
                           </div>
                        </div>
                        <br /> <br />
                        <div class="row form-group">
                           <div class="col-lg-2 " style="margin-top: 10px">
                              <p style="font-size: 20px;">모임 장소</p>
                           </div>
                           <div class="col-lg-6 ">
                              <input type="search" name="location" id="location"
                                 class="form-control" maxlength="100" required>
                           </div>
                           <div class="col-lg-2 " style="margin-top: 10px">
                              <p style="font-size: 20px;">모임 회비</p>
                           </div>
                           <div class="col-lg-2" >
                           <input type="text" name="money" id="money" class="form-control" maxlength="100" style="padding-top: 10px;
                                    padding-bottom: 10px; padding-left: 20px; padding-right: 2-; padding-right: 20px;">
                           </div>
                        </div>
                        <div class="container" style="margin: auto;">
                           <div class="row sub_content">
                              <div class="col-lg-12 col-md-12 col-sm-12">
                                 <div class="maps">
                                    <div id="page_maps"></div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-6">
                              <button class="btn btn-success btn-lg" type="submit" style="padding-right:50px; padding-left:50px">모임 수정하기
                              </button>
                           </div>
                              <div class="col-md-6">
                              <button class="btn btn-danger btn-lg" type="submit" style="padding-right:50px; padding-left:50px">모임 삭제하기
                              </button>
                              </div>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </section>
   <!--end wrapper-->


   <!-- 모임정보 수정 페이지 끝 -->

   <section class="footer_bottom">
      <div class="container">
         <div class="row">
            <div class="col-sm-6">
               <p class="copyright">
                  &copy; Copyright 2020 SoYoung | Powered by <a href="#">352
                     Class</a>
               </p>
            </div>

            <div class="col-sm-6 ">
               <div class="footer_social">
                  <ul class="footbot_social">
                     <li><a class="fb" href="#." data-placement="top"
                        data-toggle="tooltip" title="Facebook"><i
                           class="fa fa-facebook"></i></a></li>
                     <li><a class="twtr" href="#." data-placement="top"
                        data-toggle="tooltip" title="Twitter"><i
                           class="fa fa-twitter"></i></a></li>
                     <li><a class="dribbble" href="#." data-placement="top"
                        data-toggle="tooltip" title="Dribbble"><i
                           class="fa fa-dribbble"></i></a></li>
                     <li><a class="skype" href="#." data-placement="top"
                        data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
                     <li><a class="rss" href="#." data-placement="top"
                        data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </section>


   <script type="text/javascript"
      src="/codingPanda/resources/js/popper.min.js"></script>
   <script src="/codingPanda/resources/js/bootstrap.min.js"></script>
   <script src="/codingPanda/resources/js/jquery.easing.1.3.js"></script>
   <script src="/codingPanda/resources/js/retina-1.1.0.min.js"></script>
   <script type="text/javascript"
      src="/codingPanda/resources/js/jquery.smartmenus.min.js"></script>
   <script type="text/javascript"
      src="/codingPanda/resources/js/jquery.smartmenus.bootstrap.min.js"></script>
   <script type="text/javascript"
      src="/codingPanda/resources/js/owl.carousel.min.js"></script>
   <script type="text/javascript"
      src="/codingPanda/resources/js/jflickrfeed.js"></script>
   <script type="text/javascript"
      src="/codingPanda/resources/js/jquery.magnific-popup.min.js"></script>
   <script type="text/javascript"
      src="/codingPanda/resources/js/jquery.isotope.min.js"></script>
   <script type="text/javascript" src="/codingPanda/resources/js/swipe.js"></script>
   <script type="text/javascript"
      src="/codingPanda/resources/js/jquery.countTo.js"></script>
   <script src="js/main.js"></script>

   <!-- WARNING: Wow.js doesn't work in IE 9 or less -->
   <!--[if gte IE 9 | !IE ]><!-->
   <script type="text/javascript"
      src="/codingPanda/resources/js/wow.min.js"></script>
   <script>

      function selectLanguage() {
         var value = $('option:selected').val();
         $('#result').val(value + " 선택!");
      }
      $('#language').change(selectLanguage);

      
      
      
      $('#longTck').click(function() {
         var ischecked = $(this).prop('checked');
         if (ischecked) {
            $('#long').css('display','inline-block');
            $('#check>label').text('단기모임일 경우 체크');
            
         } else {
            $('#long').css('display','none');
            // 여기다가 단기모임일 경우 체크. 이벤트 넣어줘라.
            $('#check>label').text('장기모임일 경우 체크');
            $(this).prop("checked", false);
            console.log("ischecked : " + ischeckd);
         }
      });
      
      $('#shortTck').click(function(){
         var ischecked = $(this).prop('checked');
         if(ischecked){
            $('#long').css('display', 'none');
            $('#longTck').attr('checked',false);
         }
      });
      
   </script>
   <script>
    // WOW Animation
    new WOW().init();
</script>
   <![endif]—>

</body>
</html>