<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
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

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Dashboard layout-horizontal</title>
<!-- Bootstrap-->
<link href="admin-dashboardUi/lib/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!--Common Plugins CSS -->
<link href="admin-dashboardUi/css/plugins/plugins.css" rel="stylesheet">
<!-- 탭 Plugins CSS -->
<link href="admin-dashboardUi/css/plugins/plugins.css" rel="stylesheet">
<link href="admin-dashboardUi/css/style.css" rel="stylesheet">
<!--fonts-->
<link href="admin-dashboardUi/lib/line-icons/line-icons.css"
	rel="stylesheet">
<link
	href="admin-dashboardUi/lib/font-awesome/css/fontawesome-all.min.css"
	rel="stylesheet">
<link href="admin-dashboardUi/lib/chartist/chartist.min.css"
	rel="stylesheet" />
<link href="admin-dashboardUi/css/chartist-custom.css" rel="stylesheet" />
<!-- jvectormap -->
<link
	href="admin-dashboardUi/lib/vector-map/jquery-jvectormap-2.0.2.css"
	rel="stylesheet" />
<link href="admin-dashboardUi/css/style.css" rel="stylesheet">


<!-- -----------------------------------dashboard button------------------------------------------>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Dashboard-button</title>
<!-- Bootstrap-->
<link href="admin-dashboardUi/lib/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!--Common Plugins CSS -->
<link href="admin-dashboardUi/css/plugins/plugins.css" rel="stylesheet">
<!--fonts-->
<link href="admin-dashboardUi/lib/line-icons/line-icons.css"
	rel="stylesheet">
<link
	href="admin-dashboardUi/lib/font-awesome/css/fontawesome-all.min.css"
	rel="stylesheet">
<link href="admin-dashboardUi/css/style1.css" rel="stylesheet">
<style>
.shadow {
    box-shadow: 3px 3px 3px 3px #999
}
.margin_div {
	margin: 3%;
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "allStd",
			success : function(data) {
				var arr = eval("(" + data + ")");
				$.each(arr,function(idx, item) {
					var div1 = $("<div class='col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30'></div>");
					var div2 = $("<div class='iCard border1 p-2 rounded bg-white shadow margin_div'></div>");
					var a_img = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"'></a>");
					var img_std = $("<img src='img_std/custMyPage6.jpg' alt=''class='img-fluid rounded'>");
					$(a_img).append(img_std);
					var div3 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
					var h2 = $("<h2 class='fs16 text-dark font400 mb-5 text-capitalize'></h2>");
					var a_title = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"'></a>");
					var strong_name = $("<strong class='font600'style='color: #252525'></strong>").html("&nbsp&nbsp"+item.std_name);
					$(a_title).append(strong_name)
					$(h2).append(a_title);
					var span1 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-calendar mr-2'></i>기간");
					var string_se = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_start+ "-"+ item.std_end);
					var span2 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-user mr-2'></i>인원");
					var string_limit = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_limit);
					var span3 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-map-marker mr-2'></i>장소");
					var string_loc = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_loc);

					$(span1).append(string_se);
					$(span2).append(string_limit);
					$(span3).append(string_loc);
					$(div2).append(a_img, div3, h2,span1, span2, span3);
					$(div1).append(div2);
					$("#append_all").append(div1);

				});

			}
		});
		
		$.ajax({
			url : "ingStd",
			success : function(data) {
				var arr = eval("(" + data + ")");
				$.each(arr,function(idx, item) {
					var div1 = $("<div class='col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30'></div>");
					var div2 = $("<div class='iCard border1 p-2 rounded bg-white shadow margin_div'></div>");
					var a_img = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"'></a>");
					var img_std = $("<img src='img_std/custMyPage5.jpg' alt=''class='img-fluid rounded'>");
					$(a_img).append(img_std);
					var div3 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
					var h2 = $("<h2 class='fs16 text-dark font400 mb-5 text-capitalize'></h2>");
					var a_title = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"'></a>");
					var strong_name = $("<strong class='font600'style='color: #252525'></strong>").html("&nbsp&nbsp"+item.std_name);
					$(a_title).append(strong_name)
					$(h2).append(a_title);
					var span1 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-calendar mr-2'></i>기간");
					var string_se = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_start+ "-"+ item.std_end);
					var span2 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-user mr-2'></i>인원");
					var string_limit = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_limit);
					var span3 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-map-marker mr-2'></i>장소");
					var string_loc = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_loc);

					$(span1).append(string_se);
					$(span2).append(string_limit);
					$(span3).append(string_loc);
					$(div2).append(a_img, div3, h2,span1, span2, span3);
					$(div1).append(div2);
					$("#append_ing").append(div1);

				});

			}
		});
		
		$.ajax({
			url : "endStd",
			success : function(data) {
				var arr = eval("(" + data + ")");
				$.each(arr,function(idx, item) {
					var div1 = $("<div class='col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30'></div>");
					var div2 = $("<div class='iCard border1 p-2 rounded bg-white shadow margin_div'></div>");
					var a_img = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"'></a>");
					var img_std = $("<img src='img_std/custMyPage2.jpg' alt=''class='img-fluid rounded'>");
					$(a_img).append(img_std);
					var div3 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
					var h2 = $("<h2 class='fs16 text-dark font400 mb-5 text-capitalize'></h2>");
					var a_title = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"'></a>");
					var strong_name = $("<strong class='font600'style='color: #252525'></strong>").html("&nbsp&nbsp"+item.std_name);
					$(a_title).append(strong_name)
					$(h2).append(a_title);
					var span1 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-calendar mr-2'></i>기간");
					var string_se = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_start+ "-"+ item.std_end);
					var span2 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-user mr-2'></i>인원");
					var string_limit = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_limit);
					var span3 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-map-marker mr-2'></i>장소");
					var string_loc = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_loc);

					$(span1).append(string_se);
					$(span2).append(string_limit);
					$(span3).append(string_loc);
					$(div2).append(a_img, div3, h2,span1, span2, span3);
					$(div1).append(div2);
					$("#append_end").append(div1);

				});

			}
		});
		
		$.ajax({
			url : "watingStd",
			success : function(data) {
				var arr = eval("(" + data + ")");
				$.each(arr,function(idx, item) {
					var div1 = $("<div class='col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30'></div>");
					var div2 = $("<div class='iCard border1 p-2 rounded bg-white shadow margin_div'></div>");
					var a_img = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"'></a>");
					var img_std = $("<img src='img_std/custMyPage7.jpg' alt=''class='img-fluid rounded'>");
					$(a_img).append(img_std);
					var div3 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
					var h2 = $("<h2 class='fs16 text-dark font400 mb-5 text-capitalize'></h2>");
					var a_title = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"'></a>");
					var strong_name = $("<strong class='font600'style='color: #252525'></strong>").html("&nbsp&nbsp"+item.std_name);
					$(a_title).append(strong_name)
					$(h2).append(a_title);
					var span1 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-calendar mr-2'></i>기간");
					var string_se = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_start+ "-"+ item.std_end);
					var span2 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-user mr-2'></i>인원");
					var string_limit = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_limit);
					var span3 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-map-marker mr-2'></i>장소");
					var string_loc = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_loc);

					$(span1).append(string_se);
					$(span2).append(string_limit);
					$(span3).append(string_loc);
					$(div2).append(a_img, div3, h2,span1, span2, span3);
					$(div1).append(div2);
					$("#append_wtg").append(div1);

				});

			}
		});
		
		$.ajax({
			url : "myStd",
			success : function(data) {
				var arr = eval("(" + data + ")");
				$.each(arr,function(idx, item) {
					var div1 = $("<div class='col-xl-6.5 col-lg-6.5 col-md-6 col-sm-6 mb-30'></div>");
					var div2 = $("<div class='iCard border1 p-2 rounded bg-white shadow margin_div'></div>");
					var a_img = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"'></a>");
					var img_std = $("<img src='img_std/custMyPage8.jpg' alt=''class='img-fluid rounded'>");
					$(a_img).append(img_std);
					var div3 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
					var h2 = $("<h2 class='fs16 text-dark font400 mb-5 text-capitalize'></h2>");
					var a_title = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"'></a>");
					var strong_name = $("<strong class='font600'style='color: #252525'></strong>").html("&nbsp&nbsp"+item.std_name);
					$(a_title).append(strong_name)
					$(h2).append(a_title);
					var span1 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-calendar mr-2'></i>기간");
					var string_se = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_start+ "-"+ item.std_end);
					var span2 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-user mr-2'></i>인원");
					var string_limit = $("<span class='font630' style='color: #4782D3'></span>").html("&nbsp&nbsp"+ item.std_limit);
					var span3 = $("<span class='iCard-meta fs14 d-block mb-13' style='color: #6E6E6E'></span>").html("&nbsp&nbsp<i class='fa fa-map-marker mr-2'></i>장소");
					var string_loc = $("<span class='font630' style='color: #4782D3; margin-bottom:5px;'></span>").html("&nbsp&nbsp"+ item.std_loc);
					var btn_mge = $("<a href='manageStd?std_no="+Number(item.std_no)+"' class='btn btn-gradient-light btn-icon btn-icon-right btn-sm' style='margin-right:7px;margin-left:4px;'></a>").html("<i class='fa fa-arrow-right'></i>&nbsp;&nbsp;관리&nbsp;&nbsp;");
					var btn_upt = $("<a href='updateStd?std_no="+Number(item.std_no)+"' class='btn btn-gradient-light btn-icon btn-icon-right btn-sm'></a>").html("<i class='fa fa-arrow-right'></i>&nbsp;&nbsp;수정&nbsp;&nbsp;");

					$(span1).append(string_se);
					$(span2).append(string_limit);
					$(span3).append(string_loc);
					$(div2).append(a_img, div3, h2,span1, span2, span3, btn_mge, btn_upt);
					$(div1).append(div2);
					$("#append_my").append(div1);

					
							
				});
			}
		});

	});
</script>
</head>
<body>
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
		<div class="rounded bg-white" style="width:62%; margin-left: 20%;">
			<div class="portlet-body" align="right"
				style="padding-right: 8%; padding-top: 2.5%;padding-bottom: 2.5%">
				<h5>스터디 모임 리더로 시작하기</h5>
				<a href="javascript:void(0)" class="btn btn-outline-primary mr-1 mb-2">스투더 개설하기</a>
			</div>
		</div>
	<div style="margin-left: 5%">

		<div class="page-wrapper" id="page-wrapper">
			<main class="content"> <!--카페, 스투더 개인마이페이지 구분탭-->
			<div class="col-lg-8 mb-30" style="margin-left: 15%; margin-top: 3%">
			
			<div class="rounded shadow-sm p-3 bg-white">
				<div style="margin-top: 25px;">
					<!-- Nav tabs -->
					<ul class="nav nav-pills shadow" role="tablist" style="width:100%">
						<li role="presentation" class="nav-item"
							style="text-align: center; width: 50%;"><a
							class="nav-link active show" href="#tb1" aria-controls="tb1"
							role="tab" data-toggle="tab"><i class="fa fa-home mr-2"></i>스터디카페 예약보기</a></li>
						<li role="presentation" class="nav-item"
							style="text-align: center; width: 50%"><a class="nav-link"
							href="#tb2" aria-controls="tb2" role="tab" data-toggle="tab"><i class="fa fa-user-circle mr-2"></i>스투더보기</a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content pt-3">
						<!-- 스터디카페 예약보기 -->
						<div role="tabpanel" class="tab-pane show active" id="tb1">
							<p class="mb-0 text-muted">


								<!-- 카페내용은 여기에!!!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->







								카페내용








								<!-- 카페내용은 여기에!!!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
							</p>
						</div>
						<div role="tabpanel" class="tab-pane" id="tb2">
							<p class="mb-0 text-muted">
								<!--스투더 진행사항탭-->
							<div class="col-lg-15 mb-30">
								<div>
								
									<!-- Nav tabs -->
									<ul class="nav nav-pills" role="tablist"
										style="text-align: center; margin-top: 15px; margin-bottom: 7px;">
										<li role="presentation" class="nav-item" style="width: 20%;"><a
											class="nav-link active show" href="#home"
											aria-controls="home" role="tab" data-toggle="tab">전체</a></li>
										<li role="presentation" class="nav-item" style="width: 20%;"><a
											class="nav-link" href="#profile" aria-controls="profile"
											role="tab" data-toggle="tab">승인대기중</a></li>
										<li role="presentation" class="nav-item" style="width: 20%;"><a
											class="nav-link" href="#messages" aria-controls="messages"
											role="tab" data-toggle="tab">진행중</a></li>
										<li role="presentation" class="nav-item" style="width: 20%;"><a
											class="nav-link" href="#end_std" aria-controls="end_std"
											role="tab" data-toggle="tab">이용완료</a></li>
										<li role="presentation" class="nav-item" style="width: 20%;"><a
											class="nav-link" href="#mystuder" aria-controls="settings"
											role="tab" data-toggle="tab">나의스투더</a></li>
									</ul>

									<!-- Tab panes -->
									<div class="tab-content pt-3">
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
														<div class="row" id="append_all"></div>
													</div>
													</div>
												</div>
											</div>
										</div>
										<!--승인대기중인 스투더-->
										<div role="tabpanel" class="tab-pane" id="profile">
											<p class="mb-0 text-muted">
												<!--개인마이페이지 스투더 목록컨텐츠-->
											<h5>참여신청 후 승인대기중인 스투더의 목록입니다.</h5>
											<div class="flex">
												<div class="p-3 pt-0 pb-0">
													<!--한줄에 2개씩, row로 나뉘어짐-->
													<div class="row">
													<div>
														<div class="row" id="append_wtg"></div>
													</div>
													</div>
												</div>
											</div>	
											</p>
										</div>

										<!--진행중인 스투더-->
										<div role="tabpanel" class="tab-pane" id="messages">
											<p class="mb-0 text-muted">
											<h5>현재 진행중인 스투더의 전체 목록입니다.</h5>	
											<div class="flex">
												<div class="p-3 pt-0 pb-0">
													<!--한줄에 2개씩, row로 나뉘어짐-->
													<div class="row">
													<div>
														<div class="row" id="append_ing"></div>
													</div>
													</div>
												</div>
											</div>	
										</div>

										<!--진행중인 스투더-->
										<div role="tabpanel" class="tab-pane" id="end_std">
											<p class="mb-0 text-muted">
											<h5>기간이 만료된 스투의 목록입니다.</h5>
											<div class="flex">
												<div class="p-3 pt-0 pb-0">
													<!--한줄에 2개씩, row로 나뉘어짐-->
													<div class="row">
													<div>
														<div class="row" id="append_end"></div>
													</div>
													</div>
												</div>
											</div>
											
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
														<div class="row" id="append_my"></div>
													</div>
													</div>
												</div>
											</div>
										</div>

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
	</div>


	<!-- ###################################################################### -->
	<!--back to top-->
	<a href="#" class="back-to-top hidden-xs-down" id="back-to-top"><i
		class="ti-angle-up"></i></a>
	<!-- jQuery first, then Tether, then Bootstrap JS. -->
	<script src="js/plugins/plugins.js"></script>
	<script src="js/assan.custom.js"></script>



</body>
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
					<i class="fa fa-phone"></i> 1800-355-4322
				</h4>
				<h4>
					<i class="fa fa-envelope"></i> support@assan.com
				</h4>
				<p>&copy; Copyright 2018. Assan 3.0</p>
			</div>
		</div>
	</div>
</footer>
</html>