<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>이벤트목록</title>
<!-- Plugins CSS -->
<link href="css/plugins/plugins.css" rel="stylesheet">
<!-- REVOLUTION STYLE SHEETS -->
<link rel="stylesheet" type="text/css"
	href="revolution/css/settings.css">
<!-- REVOLUTION LAYERS STYLES -->
<link rel="stylesheet" type="text/css" href="revolution/css/layers.css">
<!-- REVOLUTION NAVIGATION STYLES -->
<link rel="stylesheet" type="text/css"
	href="revolution/css/navigation.css">
<!-- load css for cubeportfolio -->
<link rel="stylesheet" type="text/css"
	href="cubeportfolio/css/cubeportfolio.min.css">
<link href="css/style.css" rel="stylesheet">
<style type="text/css">
.promo-box, .btn {
	box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0
		rgba(0, 0, 0, .12) !important; /*그림자 효과*/
}

#box {
	margin: 25px !important;
	margin-left: 270px;
	margin-right: 270px;
	padding: 0px;
}

.ig {
	width: 1090px;
	height: 200px;
}

.h5hover:hover {
	color: #4782d3;
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>

	<div id="preloader">
		<div id="preloader-inner"></div>
	</div>
	<!--/preloader-->
	<!-- Site Overlay -->
	<div class="site-overlay"></div>

		<nav class="navbar navbar-expand-lg navbar-light navbar-transparent bg-faded nav-sticky">
		<div class="search-inline">
			<form>
				<input type="text" class="form-control"
					placeholder="Type and hit enter...">
				<button type="submit">
					<i class="ti-search"></i>
				</button>
				<a href="javascript:void(0)" class="search-close"><i
					class="ti-close"></i></a>
			</form>
		</div>
		<!--/search form-->
		<div class="container">

			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="index.do"> <img class='logo logo-dark' style="top:-25px;" src="images/logo.png" alt=""> <!--                    <img class='logo logo-light hidden-md-down' style="top:-20px;" src="images/logo-light.png" alt=""> 아래 검은로고로 대체함-->
			<img class='logo logo-light hidden-md-down' style="top:-20px;" src="images/logo.png" alt="">
			</a>
			<div id="navbarNavDropdown" class="navbar-collapse collapse">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown dropdown-full-width"><a
						class="nav-link" href="intro"
						aria-haspopup="true" aria-expanded="false"><font style="color: black;">스투더픽소개 </font> </a></li>
					<li class="nav-item dropdown dropdown-full-width"><a
						class="nav-link" href="cafeList1.do"
						aria-haspopup="true" aria-expanded="false"> <font style="color: black;">스터디카페</font> </a></li>
					<li class="nav-item dropdown dropdown-full-width"><a
						class="nav-link"  href="listStd.do"
						aria-haspopup="true" aria-expanded="false"> <font style="color: black;">스투더</font> </a></li>
					<li class="nav-item dropdown"><a class="nav-link"
						 aria-haspopup="true" aria-expanded="false"
						href="diningSch"><font style="color: black;">맛집찾기</font></a></li>
					<li class="nav-item dropdown">
					   <c:if test="${!empty loginVo }">
                        	<c:choose>
                        		<c:when test="${loginVo.role eq 'customer' }">
                        			<a id="SNS" class="nav-link" aria-haspopup="true" aria-expanded="false" href="snsMyPageView.do?cust_no=${loginVo.no }&provider_no=-1" ><font style="color: black;">SNS</font></a>
                        		</c:when>
                        		<c:otherwise>
                        			<a id="SNS" class="nav-link" aria-haspopup="true" aria-expanded="false" href="snsMyPageView.do?cust_no=-1&provider_no=${loginVo.no }" ><font style="color: black;">SNS</font></a>	
                        		</c:otherwise>
                        	</c:choose>
                        </c:if>
                        <c:if test="${empty loginVo }">
                        	<a class="nav-link" aria-haspopup="true" aria-expanded="false" href="login" ><font style="color: black;">SNS</font></a>
                        </c:if>
					<li class="nav-item dropdown" ><a
						class="nav-link  dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" href="#" style="color: black!important;"><font style="color: black;">고객지원</font></a>
						<ul class="dropdown-menu" style="background-color: #212121!important">
							<li><a tabindex="-1" href="listNotice.do" class="dropdown-item">공지사항</a>

							</li>
							<li><a tabindex="-1" href="listQa.do" class="dropdown-item">Q&A</a>

							</li>
							<li><a tabindex="-1" href="listEvt.do" class="dropdown-item">프로모션</a>

							</li>
						</ul></li>
				</ul>
				<ul class="nav flex-row order-lg-2 ml-auto nav-icons">
					  <c:choose>
                            <c:when test="${not empty loginVo}">
                                <li class="nav-item dropdown user-dropdown align-items-center">
                                    <a class="nav-link" href="#" id="dropdown-user" role="button"
                                       data-toggle="dropdown" style="color: black!important">
                                <span class="user-states states-online">
                                    <img src="cust_img/${loginVo.cust_img }" width="35" height="35px!important" alt="" class="rounded-circle">
                                </span>
                                        <span class="ml-2 h-lg-down dropdown-toggle">
                                                <font style="color: black;">${loginVo.nick_name}</font>
                                        </span>
                                    </a>
                                    
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-user" style="background-color: #212121!important">
                                        <a class="dropdown-item" href="profile"><i class="icon-User"></i>My Profile</a>
                                        <c:choose>
                                        	<c:when test="${loginVo.role eq 'customer' }">
                                        		 <a class="dropdown-item" href="custMyPage?cust_no=${loginVo.no }"><i class="icon-User"></i>고객 My Page</a>
                                        	</c:when>
                                        	<c:otherwise>
                                        		<a class="dropdown-item" href="provMyPageView.do?cust_no=${loginVo.no }"><i class="icon-User"></i>사업자 My Page</a>
                                        	</c:otherwise>
                                        </c:choose>
                                        <!--추가하면 되는 부분  -->
                                        <a class="dropdown-item" href="logout"><i class="icon-Power"></i>
                                            Log Out</a>

                                    </div>
                                </li>
                                <li class="h-lg-up nav-item">
                                    <a href="#" class=" nav-link collapsed" data-toggle="collapse"
                                       data-target="#navbarToggler" aria-expanded="false">
                                        <i class="icon-Magnifi-Glass2"></i>
                                    </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                               <li><a href="login"><font style="color: #F4923D">Join Us</font></a></li>
                            </c:otherwise>
                        </c:choose>
				</ul>
			</div>
			<div class="navbar-right-elements" style="margin: 30px"></div>
			<!--right nav icons-->
		</div>

	</nav>


	<!-- 상단 메뉴바? 이미지 -->
	<br>
	<br>
	<br>
	<div class="page-titles title-dark pt30 pb20 mb70">
		<div class="container">
			<div class="row">
				<div class=" col-md-6">
					<h4>
						페이지명: <span>이벤트 목록</span>
					</h4>
				</div>
				<div class=" col-md-6 mb0">
					<ol class="breadcrumb text-md-right">
						<li class="breadcrumb-item"><a href="#">고객지원/프로모션</a></li>
						<li class="breadcrumb-item active">이벤트 목록</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!--page title end-->

	<!-- ###################################################################### -->
	<div class="container mb50" id="evt_board"></div>


	<!-- 페이징처리 시작 -->
	<div class="pagination" id="pagination"
		style="align-items: center; align-content: center; margin-left: 45%; margin-right: 45%;">
	</div>
	<!--/pagination-->
	<!-- 페이징처리 끝 -->


	<!-- ###################################################################### -->


	<br>
	<footer class="footer footer-dark pt50 pb30">
		<div class="container">
			<div class="row">
				<div class="col-lg-6  ml-auto mr-auto text-center">
					<ul class="social-icons list-inline">
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-facebook"></i>Facebook
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-twitter"></i>twitter
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-instagram"></i>instagram
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-behance"></i>Behance
						</a></li>
					</ul>
					<h4>
						<i class="fa fa-phone"></i>  010-4656-0811
					</h4>
					<h4>
						<i class="fa fa-envelope"></i>  zozo.park@kakao.com
					</h4>
					<p>&copy; Copyright 2019. Team BoB</p>
				</div>
			</div>
		</div>
	</footer>

	<!--back to top-->
	<a href="#" class="back-to-top hidden-xs-down" id="back-to-top"><i
		class="ti-angle-up"></i></a>
	<!-- jQuery first, then Tether, then Bootstrap JS. -->
	<script src="js/plugins/plugins.js"></script>
	<script src="js/assan.custom.js"></script>
	<script type="text/javascript">
	$(function() {
		
		var pageSIZE = 4;		//한 페이지당 보여줄 레코드 수
		var pageGROUP = 5;		//한 화면에 보여줄 페이지수
		var totalRecord = 0;		//전체 레코드 수
		var totalPage = 1; 		//전체 페이지 수
		
		//전체 레코드 수 구하기
		$.ajax({url:"getCountEvt.do", 
				async:false,
				success:function(data) {
					totalRecord = data;				
		}});
		
		
		totalPage = parseInt(totalRecord / pageSIZE);
		if(totalRecord % pageSIZE !=0) {
			totalPage++;
		}
		
		var currentPage = 1;
		var start = (currentPage-1) * pageSIZE +1;
		var end = currentPage * pageSIZE;
		
		
		//목록을 가져오는 함수 
		function getListEvt() {
			$("#evt_board").empty();
			
			$.ajax({url : "getListEvt.do",
				data : {"start":start,"end":end },
				success : function(data) {
						var arr = eval("(" + data + ")");
						$.each(arr,function(idx, e) {
							var box = $("<div id='box'></div>").addClass("promo-box promo-border");

				         	var div1 = $("<div></div>");
				            var a_img = $("<a href='detailEvt.do?evt_no="+Number(e.evt_no)+"'></a>");
				            var img_std = $("<img src='img/evt/"+e.evt_img+"' alt=''class='img-fluid rounded ig'>");
				            //img_std 크기 : 1058*200  
				            
				            $(a_img).append(img_std);
				               
				            var div2 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
				            var h3 = $("<h3 class='fs16 font400 text-capitalize' style='text-align:left;'></h3>");
				            var a_title = $("<a href='detailEvt.do?evt_no="+Number(e.evt_no)+"'></a>");
				            var strong_name = $("<strong class='font600' style='color: #6E6E6E;'></strong>").html("&nbsp&nbsp"+e.evt_title);
				               
				            $(a_title).append(strong_name)
				            $(h3).append(a_title);
				            
				           	var span1 = $("<span style='color: #6E6E6E;'></span>").html("&nbsp&nbsp<i class='fa fa-calendar mr-2'></i>기간");
				            var p = $("<p class='font630' style='color: #6E6E6E; display: inline; text-align:left;'></p>").html("&nbsp&nbsp"+ e.evt_start+ "  ~  "+ e.evt_end);

				            
				            var div3 = $("<div class='div3' style='padding:20px;'></div>");
				            
				           	$(span1).append(p);
				           	$(div3).append(h3,span1);
				            $(div1).append(a_img, div2, div3);
				            $(box).append(div1)
				            $("#evt_board").append(box);
							
						});
					}});
			
			
		}
		
		//페이지 출력 하는 메소드
		function paging() {
			$("#pagination").empty();
			//한 화면에 보여줄 시작페이지, 끝페이지 구하기
			var startPage = parseInt(currentPage/pageGROUP) * pageGROUP + 1;
			if(currentPage % 5 == 0) {
				startPage = (parseInt(currentPage/pageGROUP)-1) * pageGROUP + 1;
			}
			var endPage = startPage + pageGROUP - 1;
			
			if(endPage > totalPage) {
				endPage = totalPage;
			}
			
			if(currentPage > pageGROUP) {
				var btn_prev = $("<a class='page-link'><i class='fa fa-caret-left'></i></a>");
				$("#pagination").append(btn_prev);
				$(btn_prev).click(function() {
					currentPage = startPage - 1;
					start = (currentPage-1) * pageSIZE +1;
					end = currentPage * pageSIZE;
					getListEvt();
					paging();
				});
			}
	

			for(var i=startPage; i<=endPage; i++) {
				var a = $("<a class='page-link pg'>"+i+"</a>");
				$("#pagination").append(a);
			}
			
			
			$(".pg").click(function() {
				currentPage = $(this).html();
				start = (currentPage-1) * pageSIZE +1;
				end = currentPage * pageSIZE;
				getListEvt();
				paging();
			});
			
			if(currentPage < totalPage && endPage+1<=totalPage) {
				var btn_next = $("<a class='page-link'><i class='fa fa-caret-right'></i></a>");
				$("#pagination").append(btn_next);
				$(btn_next).click(function() {
					currentPage = endPage + 1;
					start = (currentPage-1) * pageSIZE +1;
					end = currentPage * pageSIZE;
					getListEvt();
					paging();
				});
			}
		}
		
		getListEvt();
		paging();
	
	})
</script>
</body>

</html>
