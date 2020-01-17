<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>CUSTMYPAGEVIEW</title>
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



<!-- -----------------------------------dashboard layout-horizontal------------------------------------------>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap-->
<link href="admin-dashboardUi/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!--Common Plugins CSS -->
<link href="admin-dashboardUi/css/plugins/plugins.css" rel="stylesheet">
<!-- 탭 Plugins CSS -->
<link href="admin-dashboardUi/css/plugins/plugins.css" rel="stylesheet">
<link href="admin-dashboardUi/css/style.css" rel="stylesheet">
<!--fonts-->
<link href="admin-dashboardUi/lib/line-icons/line-icons.css" rel="stylesheet">
<link href="admin-dashboardUi/lib/font-awesome/css/fontawesome-all.min.css" rel="stylesheet">
<link href="admin-dashboardUi/lib/chartist/chartist.min.css" rel="stylesheet" />
<link href="admin-dashboardUi/css/chartist-custom.css" rel="stylesheet" />
<!-- jvectormap -->
<link href="admin-dashboardUi/lib/vector-map/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
<link href="admin-dashboardUi/css/style.css" rel="stylesheet">


<!-- -----------------------------------dashboard button------------------------------------------>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap-->
<link href="admin-dashboardUi/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!--Common Plugins CSS -->
<link href="admin-dashboardUi/css/plugins/plugins.css" rel="stylesheet">
<!--fonts-->
<link href="admin-dashboardUi/lib/line-icons/line-icons.css" rel="stylesheet">
<link href="admin-dashboardUi/lib/font-awesome/css/fontawesome-all.min.css"
	rel="stylesheet">
<link href="admin-dashboardUi/css/style1.css" rel="stylesheet">

<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<style type="text/css">


.card-header-content{
	display: flex;
	font-weight: bold;
}
.card{
	margin: 2px;	
}
.list_header{
	display: flex;
}
.list_header>*{
	display: inline;
}
.cafe_list{
	resize: none;
	padding: 50px;
	
	box-shadow: 0 2px 5px 0 rgba(0,0,0,.16),0 2px 10px 0 rgba(0,0,0,.12)!important; /*그림자 효과*/
	
}
.btn{
	box-shadow: 0 2px 5px 0 rgba(0,0,0,.16),0 2px 10px 0 rgba(0,0,0,.12)!important; /*그림자 효과*/
}
</style>
<script type="text/javascript"
src="https://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript">


$(function(){
	
/*

페이징처리
	var page = 1;

	$(window).scroll(function() {
	    if ($(window).scrollTop() == $(document).height() - $(window).height()) {
	      console.log(++page);
	      $("#enters").append("<h1>Page " + page + "</h1><BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~");
	      
	    }
	});
	
	if ($("body").height() < $(window).height()) {
	        alert("There isn't a vertical scroll bar");
	 } */
	/* $(".cafe_list").addClass("z-depth-1"); */
	$("#btnCls-reser").click(function(){
		alert("예약취소버튼 누름");
	});
	$("#btnOpenSTD").click(function(){
		alert("스투더개설하기버튼 누름");
	});
	
});
</script>
</head>


<body>

	<div id="preloader">
		<div id="preloader-inner"></div>
	</div>
	<!--/preloader-->

	<!-- Pushy Menu -->
	<aside class="pushy pushy-right">
		<div class="cart-content">
			<div class="clearfix">
				<a href="javascript:void(0)" class="pushy-link text-white-gray">Close</a>
			</div>
			<ul class="list-unstyled">
				<li class="clearfix"><a href="#" class="float-left"> <img
						src="images/shop/p1.jpg" class="img-fluid" alt="" width="60">
				</a>
					<div class="oHidden">
						<span class="close"><i class="ti-close"></i></span>
						<h4>
							<a href="#">Men's Special Watch</a>
						</h4>
						<p class="text-white-gray">
							<strong>$299.00</strong> x 1
						</p>
					</div></li>
				<!--/cart item-->
				<li class="clearfix"><a href="#" class="float-left"> <img
						src="images/shop/p2.jpg" class="img-fluid" alt="" width="60">
				</a>
					<div class="oHidden">
						<span class="close"><i class="ti-close"></i></span>
						<h4>
							<a href="#">Men's tour beg</a>
						</h4>
						<p class="text-white-gray">
							<strong>$99.00</strong> x 1
						</p>
					</div></li>
				<!--/cart item-->
				<li class="clearfix"><a href="#" class="float-left"> <img
						src="images/shop/p3.jpg" class="img-fluid" alt="" width="60">
				</a>
					<div class="oHidden">
						<span class="close"><i class="ti-close"></i></span>
						<h4>
							<a href="#">Women's T-shirts</a>
						</h4>
						<p class="text-white-gray">
							<strong>$199.00</strong> x 1
						</p>
					</div></li>
				<!--/cart item-->
				<li class="clearfix">

					<div class="float-right">
						<a href="#" class="btn btn-primary">Checkout</a>
					</div>
					<h4 class="text-white">
						<small>Subtotal - </small> $49.99
					</h4>
				</li>
				<!--/cart item-->
			</ul>
		</div>
	</aside>
	<!-- Site Overlay -->
	<div class="site-overlay"></div>

	<nav
		class="navbar navbar-expand-lg navbar-light navbar-transparent bg-faded nav-sticky">
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
			<a class="navbar-brand" href="indextest.html"> <img
				class='logo logo-dark' src="images/logo.png" alt=""> <!--<img class='logo logo-light hidden-md-down' src="images/logo-light.png" alt=""> 아래 검은로고로 대체함-->
				<img class='logo logo-light hidden-md-down' src="images/logo.png"
				alt="">
			</a>
			<div id="navbarNavDropdown" class="navbar-collapse collapse">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown dropdown-full-width"><a
						class="nav-link" data-toggle="dropdown" href="#"
						aria-haspopup="true" aria-expanded="false"> 스투더픽소개 </a></li>
					<li class="nav-item dropdown dropdown-full-width"><a
						class="nav-link" data-toggle="dropdown" href="#"
						aria-haspopup="true" aria-expanded="false"> 스터디카페 </a></li>
					<li class="nav-item dropdown dropdown-full-width"><a
						class="nav-link" data-toggle="dropdown" href="#"
						aria-haspopup="true" aria-expanded="false"> 스투더 </a></li>
					<li class="nav-item dropdown"><a class="nav-link"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						href="#">맛집찾기</a></li>
					<li class="nav-item dropdown"><a class="nav-link"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						href="#">SNS</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link  dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" href="#">고객지원</a>
						<ul class="dropdown-menu">
							<li><a tabindex="-1" href="#" class="dropdown-item">공지사항</a>

							</li>
							<li><a tabindex="-1" href="#" class="dropdown-item">Q&A</a>

							</li>
							<li><a tabindex="-1" href="#" class="dropdown-item">프로모션</a>

							</li>
						</ul></li>
				</ul>
				<ul class="nav flex-row order-lg-2 ml-auto nav-icons">
					<li class="nav-item dropdown user-dropdown align-items-center">
						<a class="nav-link" href="#" id="dropdown-user" role="button"
						data-toggle="dropdown"> <span
							class="user-states states-online"> <img
								src="images/avatar6.jpg" width="35" alt=""
								class=" img-fluid rounded-circle">
						</span> <span class="ml-2 h-lg-down dropdown-toggle"> Hi, Bob </span>
					</a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="dropdown-user">
							<div class="text-center p-3 pt-0 b-b mb-5">
								<span class="mb-0 d-block font300 text-title fs-1x">Hi! <span
									class="font700">Zoe Park</span></span> <span
									class="fs12 mb-0 text-muted">Administrator</span>
							</div>
							<a class="dropdown-item" href="#"><i class="icon-User"></i>My
								Profile</a> <a class="dropdown-item" href="#"><i
								class="icon-Newspaper"></i> Tasks</a> <a class="dropdown-item"
								href="#"><i class="icon-Speach-Bubble4 "></i> Messages <span
								class="badge badge-text text-primary-active bg-primary-light ml-2">5
									New</span></a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#"><i class="icon-Gear"></i>
								Settings<span
								class="badge badge-text text-danger-active bg-danger-light ml-2">Update</span></a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="page-login.html"><i
								class="icon-Power"></i> logout</a>

						</div>
					</li>
					<li class="h-lg-up nav-item"><a href="#"
						class=" nav-link collapsed" data-toggle="collapse"
						data-target="#navbarToggler" aria-expanded="false"> <i
							class="icon-Magnifi-Glass2"></i>
					</a></li>
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
	<div class="page-titles title-dark pt30 pb20 mb40">
		<div class="container">
			<div class="row">
				<div class=" col-md-6">
					<h4>
						<span>마이페이지</span>
					</h4>
				</div>
				<div class=" col-md-6 mb0">
					<ol class="breadcrumb text-md-right">
						<li class="breadcrumb-item"><a href="#">회원정보</a></li>
						<li class="breadcrumb-item active">마이페이지</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!--page title end-->


	<!-- ###################################################################### -->
	<!-- 요기에 넣어!!!!!-->
	<div style="margin-left: 5%">

		<div class="portlet-body" align="right"
			style="padding-right: 26%; padding-top: 1%;">
			<h5>스터디 모임 리더로 시작</h5>
			<a href="javascript:void(0)" class="btn btn-secondary mr-1 mb-2"><h5>스투더
					개설하기</h5></a>
		</div>
		<div class="page-wrapper" id="page-wrapper">
			<main class="content"> <!--카페, 스투더 개인마이페이지 구분탭-->
			<div class="col-lg-8 mb-30" style="margin-left: 15%">
				<div style="margin-top: 25px; margin-bottom: 1450px;">
					<!-- Nav tabs -->
					<ul class="nav nav-pills" role="tablist">
						<li role="presentation" class="nav-item"
							style="text-align: center; width: 45%"><a
							class="nav-link active show" href="#tb1" aria-controls="tb1"
							role="tab" data-toggle="tab"><h4>스터디카페 예약보기</h4></a></li>
						<li role="presentation" class="nav-item"
							style="text-align: center; width: 45%"><a class="nav-link"
							href="#tb2" aria-controls="tb2" role="tab" data-toggle="tab"><h4>스투더
									보기</h4></a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content pt-3">
						<!-- 스터디카페 예약보기 -->
						<div role="tabpanel" class="tab-pane show active" id="tb1">
							<p class="mb-0 text-muted">


<!-- 카페내용은 여기에!!!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<div class="CAFE">
								<!-- Nav tabs -->
								<ul class="nav nav-pills" id="cafe_nav" role="tablist"
									style="text-align: center !important; height: 150px; margin-top: 15px; margin-bottom: 7px;">
									<!-- <li role="presentation" class="nav-item" style="width: 18%;"><h5>별명</h5><p>아이디</p></li>		 -->								
									
										
															
									<li role="presentation" class="nav-item cafe_inner_nav" style="width: 18%;"><a
										class="nav-link" href="#home" aria-controls="home"
										role="tab" data-toggle="tab"><h4>전체</h4><p>숫자</p></a></li>
										<li role="presentation" class="nav-item" style="width: 18%;"></li>		<!--  공백 -->									
										<li role="presentation" class="nav-item" style="width: 18%;"></li>		<!--  공백 -->	
									<li role="presentation" class="nav-item" style="width: 18%;"><a
										class="nav-link cafe_inner_nav" href="#profile" aria-controls="profile"
										role="tab" data-toggle="tab"><h4>예약</h4><p>숫자</p></a></li>
									<li role="presentation" class="nav-item" style="width: 18%;"><a
										class="nav-link cafe_inner_nav" href="#messages" aria-controls="messages"
										role="tab" data-toggle="tab"><h4>이용완료</h4><p>숫자</p></a></li>

								</ul>

								<!-- Tab panes -->
								<div class="tab-content pt-3" style="margin-left: 4%">
									<!--전체 스투더-->
									<div role="tabpanel" class="tab-pane show active" id="home">
										<p class="mb-0 text-muted">
										<h5>회원님이 진행하고 있는 스투더의 전체 목록입니다.</h5>
										<!--개인마이페이지 스투더 목록컨텐츠-->
										<div class="flex">
											<div class="p-3 pt-0 pb-0">
<div class="cafe_list">
<div class="list_header">
<p style="margin: 2px; font-size: 13.5;"><strong>카페명:&nbsp;&nbsp;</strong></p>
<p style="flex: 1; margin: 2px; font-size: 13.5;" align="left">카페이름</p>
<!-- <p align="right"><button id="btnCls-reser" class="btn-copy-code btn btn-outline-grey btn-sm px-2 waves-effect">예약취소</button></p> -->
<p align="right"><button id="btnCls-reser" class="btn btn-secondary mr-1 mb-2">예약취소</button></p>
</div>
<div style="border-top-color: gray 1px solid;" class="list_content">
<table>
<tr>
<td id="content-date">날짜: </td>
<td></td>
</tr>
<tr>
<td id="content-time">시간: </td>
<td></td>
</tr>
<tr>
<td id="content-limit">인원: </td>
<td></td>
</tr>
<tr>
<td id="content-addr">주소: </td>
<td></td>
</tr>
</table>
</div>
</div>

											</div>
										</div>
									</div>
									<!--승인대기중인 스투더-->
									<div role="tabpanel" class="tab-pane" id="profile">
										<p class="mb-0 text-muted">
											<!--개인마이페이지 스투더 목록컨텐츠-->
										<h5>회원님이 예약한 카페의 목록입니다.</h5>
										<div class="flex">
											<div class="p-3 pt-0 pb-0">
												<!--한줄에 2개씩, row로 나뉘어짐-->
											</div>
										</div>										
									</div>
									<!--승인대기중인 스투더-->
									<div role="tabpanel" class="tab-pane" id="messages">
										<p class="mb-0 text-muted">
											<!--개인마이페이지 스투더 목록컨텐츠-->
										<h5>회원님이 이용완료한 카페의 목록입니다.</h5>
										<div class="flex">
											<div class="p-3 pt-0 pb-0">
												<!--한줄에 2개씩, row로 나뉘어짐-->
											</div>
										</div>										
									</div>
								</div>

							</div>
<!-- 카페내용은 여기에!!!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
							</p>
						</div>
						<div role="tabpanel" class="tab-pane" id="tb2">
							<p class="mb-0 text-muted">
								<!--스투더 진행사항탭-->
							<div class="col-lg-15 mb-30" style="height: 100px">
								<div>
									<!-- Nav tabs -->
									<ul class="nav nav-pills" role="tablist"
										style="text-align: center; height: 150px; margin-top: 15px; margin-bottom: 7px;">
										<li role="presentation" class="nav-item" style="width: 18%;"><a
											class="nav-link active show" href="#home"
											aria-controls="home" role="tab" data-toggle="tab"><h4>전체</h4></a></li>
										<li role="presentation" class="nav-item" style="width: 18%;"><a
											class="nav-link" href="#profile" aria-controls="profile"
											role="tab" data-toggle="tab"><h4>승인대기중</h4></a></li>
										<li role="presentation" class="nav-item" style="width: 18%;"><a
											class="nav-link" href="#messages" aria-controls="messages"
											role="tab" data-toggle="tab"><h4>진행중</h4></a></li>
										<li role="presentation" class="nav-item" style="width: 18%;"><a
											class="nav-link" href="#end_std" aria-controls="end_std"
											role="tab" data-toggle="tab"><h4>이용완료</h4></a></li>
										<li role="presentation" class="nav-item" style="width: 18%;"><a
											class="nav-link" href="#mystuder" aria-controls="settings"
											role="tab" data-toggle="tab"><h4>나의스투더</h4></a></li>
									</ul>

									<!-- Tab panes -->
									<div class="tab-content pt-3" style="margin-left: 4%">
										<!--전체 스투더-->
										<div role="tabpanel" class="tab-pane show active" id="home">
											<p class="mb-0 text-muted">
											<h5>회원님이 진행하고 있는 스투더의 전체 목록입니다.</h5>
											<!--개인마이페이지 스투더 목록컨텐츠-->
											<div class="flex">
												<div class="p-3 pt-0 pb-0">
													<!--한줄에 2개씩, row로 나뉘어짐-->
													<div class="row">
														<div>
															<div class="row">
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																				<!--나의 스투더에서는 살리기-->
																				<!--<a href="#" data-toggle="tooltip" data-placement="top" title="" class="translate-thumb" data-original-title="Add New">
                                                                        <i class="fa fa-plus"></i></a>-->
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">진행중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> View Details
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!--project item-->
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																				<!--나의 스투더에서는 살리기-->
																				<!--<a href="#" data-toggle="tooltip" data-placement="top" title="" class="translate-thumb" data-original-title="Add New">
                                                                        <i class="fa fa-plus"></i></a>-->
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">진행중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> View Details
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<!--project item-->
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																				<!--나의 스투더에서는 살리기-->
																				<!--<a href="#" data-toggle="tooltip" data-placement="top" title="" class="translate-thumb" data-original-title="Add New">
                                                                        <i class="fa fa-plus"></i></a>-->
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">진행중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> View Details
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!--project item-->
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																				<!--나의 스투더에서는 살리기-->
																				<!--<a href="#" data-toggle="tooltip" data-placement="top" title="" class="translate-thumb" data-original-title="Add New">
                                                                        <i class="fa fa-plus"></i></a>-->
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">진행중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> View Details
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="text-right">
																<a href="#" class="btn btn-gradient-info"> <i
																	class="fa fa-spinner mr-2"></i> More Projects
																</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--승인대기중인 스투더-->
										<div role="tabpanel" class="tab-pane" id="profile">
											<p class="mb-0 text-muted">
												<!--개인마이페이지 스투더 목록컨텐츠-->
											<h5>회원님이 참여신청한 스투더의 목록입니다.</h5>
											<div class="flex">
												<div class="p-3 pt-0 pb-0">
													<!--한줄에 2개씩, row로 나뉘어짐-->
													<div class="row">
														<div>

															<div class="row">
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">승인대기중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> View Details
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!--project item-->
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">승인대기중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> View Details
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<!--project item-->
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">승인대기중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> View Details
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!--project item-->
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">승인대기중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> View Details
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="text-right">
																<a href="#" class="btn btn-gradient-info"> <i
																	class="fa fa-spinner mr-2"></i> More Projects
																</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											</p>
										</div>

										<!--진행중인 스투더-->
										<div role="tabpanel" class="tab-pane" id="messages">
											<h5>현재 진행중인 스투더의 전체 목록입니다.</h5>
											<p class="mb-0 text-muted">Established fact that a reader
												will be distracted by the readable content of a page when
												looking at its layout. The point of using Lorem Ipsum is
												that it has a more-or-less normal distribution of letters,
												as opposed to using 'Content here, content here', making it
												look like readable English. Many desktop publishing packages
												and web page editors now use Lorem Ipsum as their default
												model text, and a search for 'lorem ipsum' will uncover many
												web sites still in their infancy. Various versions have
												evolved over the years, sometimes by accident, sometimes on
												purpose (injected humour and the like).</p>
										</div>

										<!--진행중인 스투더-->
										<div role="tabpanel" class="tab-pane" id="end_std">
											<h5>기간이 만료된 스투의 목록입니다.</h5>
											<p class="mb-0 text-muted">Long established fact that a
												reader will be distracted by the readable content of a page
												when looking at its layout. The point of using Lorem Ipsum
												is that it has a more-or-less normal distribution of
												letters, as opposed to using 'Content here, content here',
												making it look like readable English. Many desktop
												publishing packages and web page editors now use Lorem Ipsum
												as their default model text, and a search for 'lorem ipsum'
												will uncover many web sites still in their infancy. Various
												versions have evolved over the years, sometimes by accident,
												sometimes on purpose (injected humour and the like).</p>
										</div>

										<!--나의 스투더-->
										<div role="tabpanel" class="tab-pane" id="mystuder">
											<h5>회원님이 개설한 스투더의 목록입니다.</h5>
											<p class="mb-0 text-muted">
												<!--개인마이페이지 스투더 목록컨텐츠-->
											<div class="flex">
												<div class="p-3 pt-0 pb-0">
													<!--한줄에 2개씩, row로 나뉘어짐-->
													<div class="row">
														<div>

															<div class="row">
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																				<!--나의 스투더에서는 살리기-->
																				<!--<a href="#" data-toggle="tooltip" data-placement="top" title="" class="translate-thumb" data-original-title="Add New">
                                                                        <i class="fa fa-plus"></i></a>-->
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">진행중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> 수정
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!--project item-->
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																				<!--나의 스투더에서는 살리기-->
																				<!--<a href="#" data-toggle="tooltip" data-placement="top" title="" class="translate-thumb" data-original-title="Add New">
                                                                        <i class="fa fa-plus"></i></a>-->
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">진행중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> 수정
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<!--project item-->
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																				<!--나의 스투더에서는 살리기-->
																				<!--<a href="#" data-toggle="tooltip" data-placement="top" title="" class="translate-thumb" data-original-title="Add New">
                                                                        <i class="fa fa-plus"></i></a>-->
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">진행중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> 수정
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!--project item-->
																<div
																	class="col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30">
																	<div class="iCard border1 p-2 rounded bg-white">
																		<a href="#"> <img src="images/img6.jpg" alt=""
																			class="img-fluid rounded">
																		</a>
																		<div class="iCard-content p-1 pt-15 pb-15">
																			<!--모임정보-->
																			<h2
																				class="fs16 text-dark font400 mb-5 text-capitalize">
																				<strong class="font600">미국 갬성의 소유자 Jenny의
																					스터디발판딛고 회화실력 up!</strong>
																			</h2>
																			<span class="iCard-meta fs14 d-block mb-13">기간
																				<strong class="font630">&nbsp&nbsp
																					2019.10.09 ~ 2020.04.09</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">인원
																				<strong class="font600">&nbsp&nbsp 6명</strong>
																			</span> <span class="iCard-meta fs14 d-block mb-13">장소
																				<strong class="font600">&nbsp&nbsp 서대문구</strong>
																			</span>
																			<div class="thumbnails-group mb-15">
																				<a href="#" class="translate-thumb"><img
																					src="images/avatar1.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar2.jpg" alt="" class="img-fluid">
																				</a> <a href="#" class="translate-thumb"><img
																					src="images/avatar3.jpg" alt="" class="img-fluid">
																				</a>
																				<!--나의 스투더에서는 살리기-->
																				<!--<a href="#" data-toggle="tooltip" data-placement="top" title="" class="translate-thumb" data-original-title="Add New">
                                                                        <i class="fa fa-plus"></i></a>-->
																			</div>
																			<div class="pt-15 b-t text-right">
																				<div class="row align-items-center">
																					<div class="col-5 text-left b-r">
																						<span class="d-block pb-1 fs15">진행중</span>
																						<div class="progress bg-faded" style="height: 6px">
																							<div class="progress-bar bg-primary"
																								style="height: 6px; width: 40%"></div>
																						</div>
																					</div>
																					<div class="col-6">
																						<a href="#"
																							class="btn btn-gradient-light btn-icon btn-icon-right btn-sm">
																							<i class="fa fa-arrow-right"></i> 수정
																						</a>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="text-right">
																<a href="#" class="btn btn-gradient-info"> <i
																	class="fa fa-spinner mr-2"></i> More Projects
																</a>
															</div>
														</div>
													</div>
													</p>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>

					</div>
			</main>
			<!-- page content end-->

		</div>
		<!-- app's main wrapper end -->





		<!-- -----------------------------------새로 추가한 파일 ------------------------------------------>

		<script type="text/javascript" src="js/plugins/plugins1.js"></script>
		<!--  <script type="text/javascript" src="js/appUi-custom.js"></script>  -->
		<script type="text/javascript" src="lib/peity/jquery.peity.min.js"></script>
		<script>
			//            $(function () {
			//                 /**peity**/
			//                 $(".donut1").peity("donut", {
			//                 });
			//             });
		</script>

	</div>


	<!-- ###################################################################### -->




	<!--back to top-->
	<a href="#" class="back-to-top hidden-xs-down" id="back-to-top"><i
		class="ti-angle-up"></i></a>
	<!-- jQuery first, then Tether, then Bootstrap JS. -->
	<script src="js/plugins/plugins.js"></script>
	<script src="js/assan.custom.js"></script>




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
					<i class="fas fa-phone"></i> 1800-355-4322
				</h4>
				<h4>
					<i class="fas fa-envelope"></i> support@assan.com
				</h4>
				<p>&copy; Copyright 2018. Assan 3.0</p>
			</div>
		</div>
	</div>
</footer>



</body>
</html>