<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../common/header.jsp" %>



<!-- 전체모임페이지 시작 -->


	<!--start wrapper-->
	<section class="wrapper">
		<section class="content blog">
			<div class="container">
				<div class="row">
						<div class="blog_single mx-auto">
							<div class="dividerHeading text-center">
                                <h4><span>모임 상세보기</span></h4>
                            </div>
							<article class="post">
								<figure class="post_img">
										<!-- 그룹 대표 이미지 설정부분 -->
										<img class = "mx-auto" src="/codingPanda/resources/images/blog/blog_1.png" alt="blog post">
								</figure>
								
								<!-- 화면 맨 오른쪽 날짜 표시된 초록색부분. -->
								<div class="post_date">
									<span class="day">28</span>
									<span class="month">6월</span>
								</div>
								<div class="post_content">
									<div class="post_meta">
										<h2>
											<a href="#">모임의 이름을 입력하는 부분</a>
										</h2>
											<button class="btn btn-primary btn-sm" type="button">모임가입</button>
											<button class="btn btn-info btn-sm" type="button"><a href="views/group/groupUpdate.jsp"></a>모임수정</a></button>
											<button class="btn btn-danger btn-sm" type="button">모임탈퇴</button>
										
										<div class="metaInfo">
										<!-- DB로부터 정보 받아와서 만들기.. -->
											<span><i class="fa fa-calendar"></i> <a href="#">2020년 6월 5일</a> </span>
											<span><i class="fa fa-user"></i>모임장 : <a href="#">모임장 이름</a> </span>
											<!-- <span><i class="fa fa-tag"></i> <a href="#">Emin</a>, <a href="#">News</a> </span> -->
											<span><i class="fa fa-comments"></i> <a href="#">n개의 댓글</a></span>
										</div>
									</div>
									<p>
										모임 소개글 <br />
										얄리얄리 얄라쎵 <br />
										얄라리 얄라 
										
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
									</p>
									
									<!-- 인용구 -->
									<blockquote class="default">
									  멋진말 인용구~~!
									</blockquote>
									
									
								</div>
								<ul class="shares">
									<li class="shareslabel"><h3>다른 곳에 모임 정보 공유하기!</h3></li>
									<li><a class="twitter" href="#" data-placement="bottom" data-toggle="tooltip" title="Twitter"></a></li>
									<li><a class="facebook" href="#" data-placement="bottom" data-toggle="tooltip" title="Facebook"></a></li>
									<li><a class="gplus" href="#" data-placement="bottom" data-toggle="tooltip" title="Google Plus"></a></li>
									<li><a class="pinterest" href="#" data-placement="bottom" data-toggle="tooltip" title="Pinterest"></a></li>
									<li><a class="yahoo" href="#" data-placement="bottom" data-toggle="tooltip" title="Yahoo"></a></li>
									<li><a class="linkedin" href="#" data-placement="bottom" data-toggle="tooltip" title="LinkedIn"></a></li>
								</ul>
							</article>
							<div class="about_author">
								<div class="author_desc">
									<img src="/codingPanda/resources/images/blog/author.png" alt="about author">
									<ul class="author_social">
										<li><a class="fb" href="#." data-placement="top" data-toggle="tooltip" title="Facbook"><i class="fa fa-facebook"></i></a></li>
										<li><a class="twtr" href="#." data-placement="top" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
										<li><a class="skype" href="#." data-placement="top" data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
									</ul>
								</div>
								
								<!-- 모임장 정보 -->
								<div class="author_bio">
									<h3 class="author_name"><a href="#">홍길동</a></h3>
									<!-- <h5>CEO at <a href="#">Yahoo Baba</a></h5> -->
									<p class="author_det">
										자바와 html을 가장 사랑합니다~ 열심히 공부하고싶어요~!
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
										<!-- br이 없이 소개글이 너무 짧으면 아예 잘리는 문제가 있다.. -->
									</p>
								</div>
							</div>
						</div>

						<!--News Comments-->
                        <div class="news_comments">
                            <div class="dividerHeading text-center">
                                <h4><span>FAQ모임에 관한 질문 (댓글N개)</span></h4>
                            </div>
                            <div id="comment">
                                <ul id="comment-list">
                                    <li class="comment">
                                        <div class="avatar"><img alt="" src="/codingPanda/resources/images/blog/avatar_2.png" class="avatar"></div>
                                        <div class="comment-container">
                                            <h4 class="comment-author"><a href="#">사용자1</a></span></h4>
                                            <div class="comment-meta"><a href="#" class="comment-date">February 13, 2015</a><a class="comment-reply-link" href="#respond">Reply &raquo;</a></div>
                                            <div class="comment-body">
                                                <p>댓글1의 내용입니다.</p>
                                            </div>
                                        </div>
                                        <ul class="children">
                                            <li class="comment">
                                                <div class="avatar"><img alt="" src="/codingPanda/resources/images/blog/avatar_3.png" class="avatar"></div>
                                                <div class="comment-container">
                                                    <h4 class="comment-author"><a href="#">사용자2</a></span></h4>
                                                    <div class="comment-meta"><a href="#" class="comment-date">February 14, 2015</a><a class="comment-reply-link" href="#respond">Reply &raquo;</a></div>
                                                    <div class="comment-body">
                                                        <p>댓글1의 첫번째 리댓입니다.</p>
                                                    </div>
                                                </div>
                                                <ul class="children">
                                                    <li class="comment">
                                                        <div class="avatar"><img alt="" src="/codingPanda/resources/images/blog/avatar_2.png" class="avatar"></div>
                                                        <div class="comment-container">
                                                            <h4 class="comment-author"><a href="#">사용자1</a></span></h4>
                                                            <div class="comment-meta"><a href="#" class="comment-date">February 14, 2015</a><a class="comment-reply-link" href="#respond">Reply &raquo;</a></div>
                                                            <div class="comment-body">
                                                                <p>댓글1의 두번째 리댓입니다.</p>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="comment">
                                        <div class="avatar"><img alt="" src="/codingPanda/resources/images/blog/avatar_1.png" class="avatar"></div>
                                        <div class="comment-container">
                                            <h4 class="comment-author"><a href="#">사용자3</a></span></h4>
                                            <div class="comment-meta"><a href="#" class="comment-date">February 07, 2015</a><a class="comment-reply-link" href="#respond">Reply &raquo;</a></div>
                                            <div class="comment-body">
                                                <p>댓글 2의 내용입니다.</p>
                                            </div>
                                        </div>
                                    </li>
                                    
                                </ul>
                            </div>
                            <!-- /#comments -->
                            <div class="dividerHeading text-center">
                                <h4><span>댓글달기</span></h4>
                                </div>

                            <div class="comment_form">
                               <div class="row">
                                   <div class="col-sm-4">
                                       <input class="form-control" name="name" type="text" id="name" size="30"  onfocus="if(this.value == 'Name') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Name'; }" value="Name" placeholder="Name" >
                                   </div>
                                   <div class="col-sm-4">
                                       <input class="form-control" name="email" type="text" id="email" size="30" onfocus="if(this.value == 'E-mail') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'E-mail'; }" value="E-mail" placeholder="E-mail">
                                   </div>
                                   <div class="col-sm-4">
                                       <input class="form-control" name="url" type="text" id="url" size="30" onfocus="if(this.value == 'Url') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Url'; }" value="Url" placeholder="Url">
                                   </div>
                               </div>
                            </div>
                            <div class="comment-box row">
                                <div class="col-sm-12">
                                    <p>
                                        <textarea name="comments" class="form-control" rows="6" cols="40" id="comments" onfocus="if(this.value == 'Message') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Message'; }" placeholder="모임에 대해 어떤 점이 궁금한가요?!"></textarea>
                                    </p>
                                </div>
                            </div>

                            <a class="btn btn-lg btn-default" href="#">댓글 남기기</a>
                        </div>
                        
                        
				    </div>
				    
				    

					<!--오른쪽 사이드바 위젯 부분 -->
					<!-- <div class="col-md-4">
						<div class="sidebar">
						
						
							
							검색바 부분 
							<div class="widget widget_search">
								<div class="site-search-area">
									<form method="get" id="site-searchform" action="#">
										<div>
											<input class="input-text" name="s" id="s" placeholder="Enter Search keywords..." type="text" />
											<input id="searchsubmit" value="Search" type="submit" />
										</div>
									</form>
								</div>end site search
							</div> 
							
							
							
							
							<div class="widget widget_categories">
								<div class="widget_title">
									<h4><span>Categories</span></h4>
									</div>
								<ul class="arrows_list list_style">
									<li><a href="#"> Grapic Design (10)</a></li>
									<li><a href="#"> Web Design & Development (25)</a></li>
									<li><a href="#"> Photography (29)</a></li>
									<li><a href="#"> Custom Illustrations (19)</a></li>
									<li><a href="#"> Wordpress Themes(38)</a></li>
									<li><a href="#"> Videography (33)</a></li>
								</ul>
							</div>
							
							<div class="widget widget_about">
								<div class="widget_title">
									<h4><span>Basic Text Widget</span></h4>
									</div>
								<p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>

                            <div class="tab" role="tabpanel">
                                <ul class="nav nav-tabs">
                                    <li><a href="#Popular" data-toggle="tab" class="active">Popular</a></li>
                                    <li class=""><a href="#Recent" data-toggle="tab">Recent</a></li>
                                    <li class="last-tab"><a href="#Comment" data-toggle="tab"><i class="fa fa-comments-o"></i></a></li>
                                </ul>

                                <div class="tab-content clearfix">
                                    <div class="tab-pane fade active show" id="Popular">
                                        <ul class="recent_tab_list">
                                            <li>
                                                <span><a href="#"><img src="/codingPanda/resources/images/content/recent_1.png" alt="" /></a></span>
                                                <a href="#">Publishing packag esanse web page editos</a>
                                                <i>October 09, 2015</i>
                                            </li>
                                            <li>
                                                <span><a href="#"><img src="/codingPanda/resources/images/content/recent_2.png" alt="" /></a></span>
                                                <a href="#">Sublishing packag esanse web page editos</a>
                                                <i>October 08, 2015</i>
                                            </li>
                                            <li class="last-tab">
                                                <span><a href="#"><img src="/codingPanda/resources/images/content/recent_3.png" alt="" /></a></span>
                                                <a href="#">Mublishing packag esanse web page editos</a>
                                                <i>October 07, 2015</i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="tab-pane fade" id="Recent">
                                        <ul class="recent_tab_list">
                                            <li>
                                                <span><a href="#"><img src="/codingPanda/resources/images/content/recent_4.png" alt="" /></a></span>
                                                <a href="#">Various versions has evolved over the years</a>
                                                <i>October 18, 2015</i>
                                            </li>
                                            <li>
                                                <span><a href="#"><img src="/codingPanda/resources/images/content/recent_5.png" alt="" /></a></span>
                                                <a href="#">Rarious versions has evolve over the years</a>
                                                <i>October 17, 2015</i>
                                            </li>
                                            <li class="last-tab">
                                                <span><a href="#"><img src="/codingPanda/resources/images/content/recent_6.png" alt="" /></a></span>
                                                <a href="#">Marious versions has evolven over the years</a>
                                                <i>October 16, 2015</i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="tab-pane fade">
                                        <ul class="comments">
                                            <li class="comments_list clearfix">
                                                <a class="post-thumbnail" href="#"><img width="60" height="60" src="/codingPanda/resources/images/content/recent_3.png" alt="#"></a>
                                                <p><strong><a href="#">Prambose</a> <i>says: </i> </strong> Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada.</p>
                                            </li>
                                            <li class="comments_list clearfix">
                                                <a class="post-thumbnail" href="#"><img width="60" height="60" src="/codingPanda/resources/images/content/recent_1.png" alt="#"></a>
                                                <p><strong><a href="#">Makaroni</a> <i>says: </i> </strong> Tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada.</p>
                                            </li>
                                            <li class="comments_list clearfix">
                                                <a class="post-thumbnail" href="#"><img width="60" height="60" src="/codingPanda/resources/images/content/recent_2.png" alt="#"></a>
                                                <p><strong><a href="#">Prambanan</a> <i>says: </i> </strong> Donec convallis, metus nec tempus aliquet, nunc metus adipiscing leo, a lobortis nisi dui ut odio. Nullam ultrices, eros accumsan vulputate faucibus, turpis tortor.</p>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

							<div class="widget widget_tags">
								<div class="widget_title">
									<h4><span>Tags Widget</span></h4>
								</div>
								<ul class="tags">
									<li><a href="#"><b>business</b></a></li>
									<li><a href="#">corporate</a></li>
									<li><a href="#">css3</a></li>
									<li><a href="#"><b>html5</b></a></li>
									<li><a href="#">javascript</a></li>
									<li><a href="#"><b>jquery</b></a></li>
									<li><a href="#">multipurpose</a></li>
									<li><a href="#"><b>mysql</b></a></li>
									<li><a href="#">portfolio</a></li>
									<li><a href="#">premium</a></li>
									<li><a href="#">responsive</a></li>
									<li><a href="#"><b>theme</b></a></li>
									<li><a href="#"><b>Yahoo Baba</b></a></li>
								</ul>
							</div>
							
							<div class="widget widget_archives">
								<div class="widget_title">
									<h4><span>Archives</span></h4>
								</div>
								<ul class="archives_list list_style ">
									<li><a href="#"> November 2015</a></li>
									<li><a href="#"> October 2015</a></li>
									<li><a href="#"> September 2015</a></li>
									<li><a href="#"> August 2015</a></li>
									<li><a href="#"> July 2015</a></li>
									<li><a href="#"> June 2015</a></li>
									<li><a href="#"> May 2015</a></li>
								</ul>
							</div>
						</div>
					 </div>
					 
					 
					 여기까지 오른쪽 사이드바.
					 -->
				</div><!--/.row-->
			<!-- </div> --> <!--/.container-->
		</section>
		
	</section>
	<!--end wrapper-->
	
<!-- 전체모임페이지 끝. -->
<%@ include file="../common/footer.jsp" %>