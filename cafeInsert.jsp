//카페등록 페이지





<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>STUDER P!CK</title>


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
<!-- Bootstrap-->
<link href="lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!--Common Plugins CSS -->
<link href="css/plugins/plugins.css" rel="stylesheet">
<!--fonts-->
<link href="lib/line-icons/line-icons.css" rel="stylesheet">
<link href="lib/font-awesome/css/fontawesome-all.min.css"
	rel="stylesheet">
<link href="lib/jquery-wizard/css/wizard.min.css" rel="stylesheet">
<link href="css/wizard-custom.css" rel="stylesheet">


<link rel="stylesheet"
	href="https://rawgit.com/enyo/dropzone/master/dist/dropzone.css">
<!-- <link href="lib/dropzone/dropzone.css" rel="stylesheet"> -->

<link rel="stylesheet" href="assets/dist/css/style.css">
<script src="https://rawgit.com/enyo/dropzone/master/dist/dropzone.js"></script>
<!--  모달-->
<link href="jquery.modal-master/css/jquery.modal.css" type="text/css"
	rel="stylesheet" />
<link href="jquery.modal-master/css/jquery.modal.theme-xenon.css"
	type="text/css" rel="stylesheet" />
<link href="jquery.modal-master/css/jquery.modal.theme-atlant.css"
	type="text/css" rel="stylesheet" />
	
<style type="text/css">
* {
	box-sizing: border-box;
}

/* basic stylings ------------------------------------------ */

/* form starting stylings ------------------------------- */
.group {
	position: relative;
	margin-bottom: 45px;
}

input {
	font-size: 18px;
	padding: 10px 10px 10px 5px;
	display: block;
	width: 800px;
	border: none;
	border-bottom: 1px solid #757575;
}

input:focus {
	outline: none;
}

/* LABEL ======================================= */
label {
	color: #999;
	font-size: 15px;
	font-weight: normal;
	position: absolute;
	pointer-events: none;
	left: 5px;
	top: 10px;
	transition: 0.2s ease all;
	-moz-transition: 0.2s ease all;
	-webkit-transition: 0.2s ease all;
}

.cl {
	pointer-events: auto;
	font-size: 14px;
	margin: 0px;
}

/* active state */
input:focus ~ label, input:valid ~ label {
	top: -20px;
	font-size: 14px;
	color: #F4923D;
}

.cl>input:focus ~ label, input:valid ~ label {
	top: 9px !important;
	font-size: 14px !important;
	color: #F4923D;
	margin: 0px;
}

.two_line>input:focus ~ label, input:valid ~ label {
	top: -10px !important;
	font-size: 14px;
	color: #9a8e8e;
}

/* BOTTOM BARS ================================= */
.bar {
	position: relative;
	display: block;
	width: 300px;
}

.bar:before, .bar:after {
	content: '';
	height: 2.5px;
	width: 0;
	bottom: 0px;
	position: absolute;
	left: 0px;
	background: #F4923D;
	transition: 0.2s ease all;
	-moz-transition: 0.2s ease all;
	-webkit-transition: 0.2s ease all;
}

.bar:before {
	left: 50%;
}

.bar:after {
	right: 50%;
}

/* active state */
input:focus ~ .bar:before, input:focus ~ .bar:after {
	width: 217%;
}

#room_time_start:focus ~ .bar:before, input:focus ~ .bar:after {
	/*   width:85%; */
	width: 35%;
}

#room_time_end:focus ~ .bar:before, input:focus ~ .bar:after {
	/*   width:85%; */
	width: 35%;
}

#room_price:focus ~ .bar:before, input:focus ~ .bar:after {
	/* 	width: 85%; */
	width: 30%;
}

#pass_name:focus ~ .bar:before, input:focus ~ .bar:after {
	/* 	width: 85%; */
	width: 75%;
}

#r_name:focus ~ .bar:before, input:focus ~ .bar:after {
	/* 	width: 240%; */
	width: 225%;
}

#pass_price:focus ~ .bar:before, input:focus ~ .bar:after {
	/* 	width: 85%; */
	width: 75%;
}

/* HIGHLIGHTER ================================== */
.highlight {
	position: absolute;
	height: 60%;
	width: 100px;
	top: 25%;
	left: 0;
	pointer-events: none;
	opacity: 0.5;
}

/* active state */
input:focus ~ .highlight {
	-webkit-animation: inputHighlighter 0.3s ease;
	-moz-animation: inputHighlighter 0.3s ease;
	animation: inputHighlighter 0.3s ease;
}

/* ANIMATIONS ================ */
@
-webkit-keyframes inputHighlighter {from { background:#5264AE;
	
}

to {
	width: 0;
	background: transparent;
}

}
@
-moz-keyframes inputHighlighter {from { background:#5264AE;
	
}

to {
	width: 0;
	background: transparent;
}

}
@
keyframes inputHighlighter {from { background:#5264AE;
	
}

to {
	width: 0;
	background: transparent;
}

}
input::placeholder {
	color: #c9c0b5 !important;
}

/*   드롭존css*/
h3#dz_title {
	margin: 5px;
	padding: 2px;
	text-align: center;
}

.dropzone {
	resize: none;
	background: white;
	border-radius: 5px;
	border: 1px solid #e17804;
	border-image: none;
	max-width: 700px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

#removed {
	position: absolute;
	bottom: -20;
	left: 0;
	margin: 0px !important;
	width: 100%;
	background-color: #f4923d !important;
}

.dropzone .dz-preview .dz-image {
	border-radius: 0 !important;
	margin-top: -10px !important;
}
/*  전체 가운데 정렬*/
#_start {
	margin-left: auto !important;
	margin-right: auto !important;
	-ms-flex: 0 0 66.666667% !important;
	flex: 0 0 66.666667% !important;
	max-width: 66.66% !important;
}
/*  체크박스 버튼 css - checked color changed blue to brown.*/
.custom-checkbox .custom-control-input:checked ~.custom-control-label::before
	{
	background-color: #e17804;
}

.custom-control-input:disabled:checked ~.custom-control-label::before {
	background-color: #9a8e8e !important;
}
/*  cancle/refund policy's textarea focused border-color*/
.form-control {
	outline: none;
	margin-bottom: -25px;
}

.form-control:focus {
	outline: none;
	box-shadow: 0 1px 0 0 #ffa000 !important;
	border: 1px solid #ffa000;
	margin-top: -1px;
}

form#tb4_cafe_r_p>div {
	margin: 18px !important;
}

textarea::placeholder {
	color: #c7c3bb !important;
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js">
	
</script>

<!-- <script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>  -->
<script type="text/javascript">
	$(function(e) {
		
		var cust_no = -1;
 		var provider_no = -1;
    		var role = $("#role").val();
    		
    		if(role == 'provider') {
    			provider_no = $("#no").val();
    		}else {
    			cust_no = $("#no").val();
    		}
    		var no = $("#no").val();
    		

$("#SNS").click(function(){
    			
    			
    			location.href="snsMyPageView.do?cust_no="+cust_no+"&provider_no="+provider_no;
    		})
		
		//------------------------------------------------------------------		
		function _alert(value) {
			modal({
				type : 'warning',
				theme : 'reseted',
				buttons : [ {
					text : '확인', //Button Text				
					eKey : true, //Enter Keypress
					addClass : 'btn-orange btn-square'
				} ],

				title : '알림',
				text : value,
				callback : function(result) {
					if (result == false) {
						alert('확인 누름')
					}
				}
			});
		}

		function _warning() {
			modal({
				type : 'warning',
				theme : 'reseted',
				buttons : [ {
					text : '확인', //Button Text				
					eKey : true, //Enter Keypress
					addClass : 'btn-orange btn-square'
				} ],
				title : '알림',
				text : '입력값이 올바른지 확인해주세요.'
			/* text: what+'이 올바른지 확인해주세요.'	  ------------안되넹ㅎ*/
			});
		}

		function _confirm() {
			modal({
				type : 'confirm',
				theme : 'reseted',
				buttons : [ {
					text : '예', //Button Text
					val : 'true', //Button Value
					eKey : true, //Enter Keypress
					addClass : 'btn-white btn-square'
				} ],

				title : '확인',
				text : '작성한 정보로 신규 카페를 개설하시겠습니까?',
				callback : function(result) {
					if (result) {
						/* alert('예 누름') */
						_alert();
						//alert를 지우던가 커스텀으로 페이지가 이동됩니다 안내창 띄우던가해서
						//목록이나 사업자마이페이지로 이동

					} else {
						alert('아니오 누름')
					}
				}
			});

		}

		$('a#custom3').click(function() {
			_confirm();
		});
		$('a#custom4').click(function() {
			_warning();
		});
		$('.wizard-finish').click(function() {
			_confrim();
		});
	});
	//------------------------------------------------------------------	
	$(function() {

		function allCheckedAlert() {
			var ask = confirm('4개를 모두 선택하셨습니다. 다시 선택하시겠습니까?\n이후 수정은 [수정하기]에서 가능합니다.');
			if (ask) {
				$("input[type=checkbox]").prop("checked", false);
				chk_contents = "";
				cnt_chk_box = 0;

			} else if (ask == false) {
				//-----------------------------------------
				$.getJSON("getCheckboxes", {
					data : chk_contents
				}, function(r) {
				});
				//-----------------------------------------					
				$("input:checkbox").prop("disabled", "disabled");
			}
		}
		var cnt_chk_box = 0;
		var chk_contents = "";
		$("input:checkbox").change(function() {
			if ($(this).is(":checked")) {
				cnt_chk_box++;
				chk_contents += $(this).val() + " ";
				if (cnt_chk_box == 4) {
					allCheckedAlert();
				}
			} else {
				cnt_chk_box--;
				chk_contents = chk_contents.replace($(this).val() + " ", "");
			}
		});
		//-----------------------------------------------------------------------------------------------	
		var input;
		var input2;
		var count = 0;
		var rn_cnt = 0;
		var r_cnt = 0;

		$("#pass_plus")
				.click(
						function() {
							count++;
							var input = $('<div class="group"></div>').attr(
									"pp_cnt", count);
							var input2 = $('<div class="group"></div>').attr(
									"pn_cnt", count);
							var input_inside = $('<input type="text" name="pass_content" id="pass_name" style="width: 370px!important" required><span class="highlight"></span><span class="bar"></span> <label style="font-size: 15px;">이용권 이름</label>');
							var input2_insdie = $(' <input type="number" name="price" id="pass_price" style="width: 370px!important; display: inline;" min="0" max="99999" required> <span class="highlight"></span><span class="bar"></span><label style="font-size: 15px;">가격</label>');
							input.append(input_inside);
							input2.append(input2_insdie);

							$("#pass_n").append(input);
							$("#pass_p").append(input2);

						});
		$("#pass-minus").click(function() {
			$("div[pp_cnt=" + count + "]").children().remove();
			$("div[pn_cnt=" + count + "]").children().remove();
			count--;

		});
		$("#roomName_plus")
				.click(
						function() {
							rn_cnt++;
							var room_Ndiv = $('<div class="group"></div>')
									.attr("rn_cnt", rn_cnt);
							var room_Ninput = $('<input type="text" name="room_name" id="r_name" style="width: 820px!important; display: inline;" required><span class="highlight"></span><span class="bar"></span><label>룸 이름</label> ')

							$(room_Ndiv).append(room_Ninput);
							$("#room_n").append(room_Ndiv);
						});
		$("#roomName-minus").click(function() {
			$("div[rn_cnt=" + rn_cnt + "]").children().remove();
			rn_cnt--;
		});
		$("#room_plus")
				.click(
						function() {
							r_cnt++;
							var rt_s_div = $(
									'<div class="group rt_float"></div>').attr(
									"r_cnt", r_cnt);
							var rt_e_div = $(
									'<div class="group rt_float"></div>').attr(
									"r_cnt", r_cnt);
							var rp_div = $('<div class="group"></div>').attr(
									"r_cnt", r_cnt);
							var rt_start_input = $('<input class="two_line" type="number" id="room_time_start" name="start_time" style="width: 250px !important; display: inline;" min="0" max="24" required><span class="highlight"></span><span class="bar"></span><label class="two_line" for="room_time_start" style="font-size: 15px; margin-top: -15px !important;">예약가능한<br> 룸 시작 시간</label>');
							var rt_end_input = $('<input class="two_line" type="number" id="room_time_end" name="end_time" style="width: 250px !important; display: inline;" min="0" max="24" required><span class="highlight"></span><span class="bar"></span><label class="two_line" for="room_time_end" style="font-size: 15px; margin-top: -15px !important;">예약가능한<br> 룸 종료 시간</label>');
							var rp_input = $(' <input  class="two_line" type="number" id="room_price" name="time_price"  style="width: 230px!important; display: inline;" min="0" max="99999" required><span class="highlight"></span><span class="bar"></span><label for="room_price" style="font-size: 15px;">시간 별 룸가격</label>');

							$(rt_s_div).append(rt_start_input);
							$(rt_e_div).append(rt_end_input);
							$(rp_div).append(rp_input);

							$("#room_t_s").append(rt_s_div);
							$("#room_t_e").append(rt_e_div);
							$("#room_p").append(rp_div);

						});
		$("#room-minus").click(function() {
			$("div[r_cnt=" + r_cnt + "]").children().remove();
			$("div[r_cnt=" + r_cnt + "]").children().remove();
			r_cnt--;

		});

		function del() {
			$("#c_name").attr("placeholder", " ")
			$("#c_info").attr("placeholder", " ")
			$("#c_addr").attr("placeholder", " ")
			$("#c_phone").attr("placeholder", " ")
			$("#c_time").attr("placeholder", " ")
			$("#c_seat").attr("placeholder", " ")
		}

		$("#c_name").click(function() {
			del();
			$("#c_name").attr("placeholder", "ex) 스투더픽 카페");
			$("#c_name").attr("bottom", 0);
		});
		$("#c_info").click(function() {
			del();
			$("#c_info").attr("placeholder", "ex) 꿈을 이루는 공간 스투더 픽")
		});
		$("#c_addr").click(function() {
			del();
			$("#c_addr").attr("placeholder", "ex) 서울시 서대문구 신촌동")
		});
		$("#c_phone").click(function() {
			del();
			$("#c_phone").attr("placeholder", "ex) 02-000-1234")
		});
		$("#c_time").click(function() {
			del();
			$("#c_time").attr("placeholder", "ex) 09:00~23:00 / 00:00~24:00")
		});
		$("#c_seat").click(function() {
			del();
			$("#c_seat").attr("placeholder", "개인좌석이있는 경우만 입력해주세요. ex) 130석")
		});

		//------------------------------------		
		function GetURLParameter(sParam) {
			var sPageURL = location.search.substring(1);
			var sURLVariables = sPageURL.split('&');
			for (var i = 0; i < sURLVariables.length; i++) {
				var sParameterName = sURLVariables[i].split('=');
				if (sParameterName[0] == sParam) {
					return sParameterName[1];
				}
			}
		}

		var provider_no = GetURLParameter('provider_no');
		var license_num = GetURLParameter('license_num');
		$("#p_no").val(provider_no);
		$("#licenceNumber").val(license_num);
		
		var ln = $("#licenceNumber").val();
		
	

		//------------------------------------

	})
</script>
</head>

<body>
	<input id="role" type="hidden" value="${loginVo.role }">
           <input id="no" type="hidden" value="${loginVo.no }">
	<div id="preloader">
		<div id="preloader-inner"></div>
	</div>
	<!--/preloader-->

	<!-- Pushy Menu -->

	<!-- Site Overlay -->
	<div class="site-overlay"></div>

	   <nav class="navbar navbar-expand-lg navbar-light navbar-transparent bg-faded nav-sticky">
            <div class="search-inline">
                <form>
                    <input type="text" class="form-control" placeholder="Type and hit enter...">
                    <button type="submit"><i class="ti-search"></i></button>
                    <a href="javascript:void(0)" class="search-close"><i class="ti-close"></i></a>
                </form>
            </div><!--/search form-->
            <div class="container">

                <button class="navbar-toggler navbar-toggler-right" type="button" 
                data-toggle="collapse" data-target="#navbarNavDropdown" 
                aria-controls="navbarNavDropdown" aria-expanded="false" 
                aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="index.do">
                    <img class='logo logo-dark' style="top:-25px;" src="images/logo.png" alt="">
                    <img class='logo logo-light hidden-md-down' style="top:-20px;" src="images/logo.png" alt="">
                </a>
                <div  id="navbarNavDropdown" class="navbar-collapse collapse">
                    <ul class="navbar-nav ml-auto">
                     <!--    <li class="nav-item dropdown active"> -->
                     
                    	 <li class="nav-item dropdown dropdown-full-width">
                            <a class="nav-link" href="intro">스투더픽 소개</a>
                           
                        </li>
                        <li class="nav-item dropdown dropdown-full-width">
                            <a class="nav-link" href="cafeList1.do" aria-haspopup="true" aria-expanded="false">
                                스터디카페
                            </a>
                   
                        </li>
                        <li class="nav-item dropdown dropdown-full-width">
                            <a class="nav-link" href="listStd.do" aria-haspopup="true" aria-expanded="false">
                                스투더  
                            </a>
                       
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" aria-haspopup="true" aria-expanded="false" href="diningSch">맛집찾기</a>
                      
                        </li>
                        <li class="nav-item dropdown">
                        <c:if test="${!empty loginVo }">
                        	<c:choose>
                        		<c:when test="${loginVo.role eq 'customer' }">
                        			<a id="SNS" class="nav-link" aria-haspopup="true" aria-expanded="false" href="snsMyPageView.do?cust_no=${loginVo.no }&provider_no=-1" >SNS</a>
                        		</c:when>
                        		<c:otherwise>
                        			<a id="SNS" class="nav-link" aria-haspopup="true" aria-expanded="false" href="snsMyPageView.do?cust_no=-1&provider_no=${loginVo.no }" >SNS</a>	
                        		</c:otherwise>
                        	</c:choose>
                        </c:if>
                        <c:if test="${empty loginVo }">
                        	<a class="nav-link" aria-haspopup="true" aria-expanded="false" href="login" >SNS</a>
                        </c:if>
                            
                     
                        </li>
                        <li class="nav-item dropdown">
                         <a class="nav-link  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">고객지원</a>
                            <ul class="dropdown-menu" style="background-color: #212121!important">
                                <li>
                                    <a tabindex="-1" href="listNotice.do" class="dropdown-item">공지사항</a>
                                   
                                </li>
                                <li>
                                    <a tabindex="-1" href="listQa.do" class="dropdown-item">Q&A</a>
                                   
                                </li>
                                <li>
                                    <a tabindex="-1" href="listEvt.do	" class="dropdown-item">프로모션</a>
                                    
                                </li>
                            </ul>
                        </li>
                    </ul>
                    
                    <ul class="nav flex-row order-lg-2 ml-auto nav-icons"  style="margin-left: 50px!important;" >
                        <c:choose>
                            <c:when test="${not empty loginVo}">
                                <li class="nav-item dropdown user-dropdown align-items-center" >
                                    <a class="nav-link" href="#" id="dropdown-user" role="button"
                                       data-toggle="dropdown">
                                <span class="user-states states-online">
                                    <img src="cust_img/${loginVo.cust_img }" width="35" height="35px!important" alt="" class="rounded-circle">
                                </span>
                                        <span class="ml-2 h-lg-down dropdown-toggle">
                                                ${loginVo.nick_name}
                                        </span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-user" style="background-color: #212121!important" >
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
                <div class="navbar-right-elements" style="margin: 30px">
               
                </div><!--right nav icons-->
            </div>

    </nav>
    


	<!-- 상단 메뉴바? 이미지 -->
	<div
		class="page-titles-img title-space-lg bg-parallax parallax-overlay mb70"
		data-jarallax='{"speed": 0.2}'
		style='background-image: url("images/bg1.jpg")'>
		<div class="container">
			<div class="row">
				<div class=" col-md-8 ml-auto mr-auto">
					<h1 class='text-uppercase'>스터디카페 등록</h1>

					<!--                                    <a href='https://www.youtube.com/watch?v=cctFcl5EFYk' class='modal-video btn btn-white-outline btn-lg btn-rounded'>Watch our film</a>
                        -->
				</div>
			</div>
		</div>
	</div>
	<!--page title end-->
	<!-- ###################################################################### -->

	<div id="_start" class="col-md-8 ml-auto mr-auto mx-auto " style="position: relative; left: 100px;">
		<div class="col-md-12"
			style="position: relative; top: -50px; max-width: 1000px;">
			<h4 style="font-weight: 20px;">스터디 카페 등록</h4>
			<span class="text-muted"
				style="color: #e17804 !important; font-weight: bold;"> 순서에 따라
				진행해주세요 <a class="b-b text-primary ml-2"
				style="color: gray !important;" href="#"> <!-- target="_blank"-->
					문의하기
			</a>
			</span>

		</div>
		<br>

		<div class="page-content"
			style="position: relative; top: -50px; max-width: 1000px;">
			<div class="container-fluid"
				style="margin-left: auto; margin-right: auto;">


				<div class="row mb-30">
					<div class="col-lg-12 ml-auto mr-auto">
						<div class="wizard wizard-example clearfix">
							<ul class="wizard-steps nav nav-justified" role="tablist">
								<li class="active nav-item" role="tab"><i
									class="far fa-images"></i> 사진 첨부</li>
								<li role="tab" class="nav-item"><i class="fas fa-book"></i>
									카페 정보 및 소개</li>
								<li role="tab" class="nav-item"><i
									class="fas fa-ticket-alt"></i> 이용권 및 룸</li>
								<li role="tab" class="nav-item"><i class="fas fa-redo"></i>
									취소 환불 규정</li>
							</ul>
							<div class="wizard-content">

								<div class="wizard-pane active" role="tabpanel">


									<div id="dropzone">
										<div class="page-content">
											<div class="container-fluid">
												<div class="row">
													<div class="col-lg-12 mb-30">
														<div class="portlet-box"
															style="position: relative; left: 50px; margin-top: 50px;">

															<div class="portlet-body">


																<FORM class="dropzone needsclick" id="tb1_imgs"
																	action="upload.do" enctype="multipart/form-data">
																	<h3 id="dz_title" style="color: gray; display: inline;">카페
																		메인사진 및 내부 사진을 첨부해주세요</h3>
																	<DIV style="font-size: 12px;"
																		class="dz-message needsclick">
																		업로드할 파일을 <b>클릭</b>하여 선택하거나 여기로 <b>드래그</b> 해주세요.<BR>
																		<SPAN style="color: #e17804;" class="note needsclick"><b>첫번째
																				사진</b>이 카페목록의 <b>대표사진</b>으로 보여집니다.</SPAN>
																	</DIV>
																	<div class="fallback">
																		<input id="files" name="file" type="file" multiple />
																	</div>

																</FORM>

															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div class="wizard-pane" role="tabpanel">
									<form id="f1_cafe_info" style="margin-top: 30px;">

										<input type="hidden" id="p_no" name="provider_no">
										<input type="hidden" id="licenceNumber" name="license_num">
										<input type="hidden" id="cno" value="${loginVo.no }">

										<div class="group">
											<input name="cafe_name" type="text" id="c_name" required>
											<span class="highlight"></span> <span class="bar"></span> <label
												style="font-size: 15px;">카페 이름</label>
										</div>

										<div class="group">
											<input name="cafe_info" type="text" id="c_info" required>
											<span class="highlight"></span> <span class="bar"></span> <label>카페
												한줄 소개</label>
										</div>
										<div class="group">
											<input name="cafe_loc" type="text" id="c_addr" required>
											<span class="highlight"></span> <span class="bar"></span> <label>주소</label>
										</div>
										<div class="group">
											<input name="cafe_phone" type="text" id="c_phone" required>
											<span class="highlight"></span> <span class="bar"></span> <label>전화번호</label>
										</div>
										<div class="group">
											<input name="cafe_hrs" type="text" id="c_time" required>
											<span class="highlight"></span> <span class="bar"></span> <label>영업시간</label>
										</div>
										<div class="group">
											<input name="seats" type="number" min="0" max="999"
												id="c_seat" required> <span class="highlight"></span>
											<span class="bar"></span> <label>좌석수</label>
										</div>
										<!--                                            	<div class="group">      
										     <input name="c_notice" type="text" id="c_notice" required>
										     <span class="highlight"></span>
										     <span class="bar"></span>
										     <label>이용수칙</label>
										   </div> -->
										<div class="group">
											<div class="md-form amber-textarea active-amber-textarea-2">
												<label for="ta_3"
													style="position: relative; margin-bottom: 10px !important;"><font
													style="color: gray;">부가 시설 안내 </font></label>
												<textarea id="ta_3" name="cafe_facil"
													class="md-textarea form-control" rows="6"
													placeholder="카페에서 제공하는 부가시설 관련 내용을 적어주시면 됩니다.&#13;&#10;내용에 변경사항이 발생하는 경우, [수정하기]에서 언제든지 업데이트가 가능합니다."></textarea>
											</div>
										</div>
										<div class="group">
											<div class="md-form amber-textarea active-amber-textarea-2">
												<label for="ta_4"
													style="position: relative; margin-bottom: 10px !important;"><font
													style="color: gray;">업체 정보 상세</font></label>
												<textarea id="ta_4" name="cafe_info_detail"
													class="md-textarea form-control" rows="6"
													placeholder="해당 카페의 성격을 좀 더 상세히 표현하고 싶으시면 이 칸을 이용해주시면 됩니다.&#13;&#10;내용에 변경사항이 발생하는 경우, [수정하기]에서 언제든지 업데이트가 가능합니다."></textarea>
											</div>
										</div>
									</form>
									<div class="item_checkbox"
										style="margin-top: 50px; color: gray;">
										<p style="margin-bottom: 30px; color: #f4923d;">
											<i class="fa fas fa-check-square"></i>&nbsp;카페에서 <b>제공하는
												서비스 <u>4개</u>
											</b>를 아래에서 <b>선택</b>해주세요.
										</p>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_1" value="와이파이"> <label
												class="custom-control-label cl" for="checkbox_1">와이파이</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_2" value="화장실"> <label
												class="custom-control-label cl" for="checkbox_2">화장실</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_3" value="노트북"> <label
												class="custom-control-label cl" for="checkbox_3">노트북</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_4" value="키보드랑마우스"> <label
												class="custom-control-label cl" for="checkbox_4">키보드/마우스</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_5" value="컴퓨터"> <label
												class="custom-control-label cl" for="checkbox_5">컴퓨터</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_6" value="모니터"> <label
												class="custom-control-label cl" for="checkbox_6">모니터</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_7" value="프로젝터"> <label
												class="custom-control-label cl" for="checkbox_7">프로젝터</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_8" value="단체석"> <label
												class="custom-control-label cl" for="checkbox_8">단체석</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_9" value="개인사물함"> <label
												class="custom-control-label cl" for="checkbox_9">개인사물함</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_10" value="음료제공"> <label
												class="custom-control-label cl" for="checkbox_10">음료제공</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_11" value="출입통제"> <label
												class="custom-control-label cl" for="checkbox_11">출입통제</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_12" value="멤버쉽"> <label
												class="custom-control-label cl" for="checkbox_12">맴버쉽</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_13" value="무인결제"> <label
												class="custom-control-label cl" for="checkbox_13">무인결제</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_14" value="cctv"> <label
												class="custom-control-label cl" for="checkbox_14">CCTV</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_15" value="알림서비스"> <label
												class="custom-control-label cl" for="checkbox_15">알림서비스</label>
										</div>
										<div
											class="custom-control custom-checkbox custom-control-inline">
											<input type="checkbox"
												class="custom-control-input checkboxes" name="checkboxes"
												id="checkbox_16" value="24시간"> <label
												class="custom-control-label cl" for="checkbox_16">24시간</label>
										</div>
									</div>


								</div>
								<div class="wizard-pane" role="tabpanel">
									<form id="f2_pass">
										<div class="form-row" style="margin-top: 50px;">
											<!-- Grid column -->
											<div class="col-md-6" id="pass_n">
												<!-- Material input -->
												<div class="group">
													<input name="pass_content" type="text" id="pass_name"
														style="width: 370px !important" required> <span
														class="highlight"></span> <span class="bar"></span> <label
														style="font-size: 15px;">이용권 이름</label>
												</div>
											</div>
											<!-- Grid column -->

											<!-- Grid column -->
											<div class="col-md-6" style="display: inline;" id="pass_p">
												<!-- Material input -->
												<div class="group">

													<input name="price" type="number" id="pass_price" class="firstPass"
														style="width: 370px !important; display: inline;" min="0"
														max="99999" required> &nbsp; <i
														class="fas fa-plus" id="pass_plus">&nbsp;</i> <i
														class="fas fa-minus" id="pass-minus"></i> <span
														class="highlight"></span> <span class="bar"></span> <label
														style="font-size: 15px;">가격</label>
												</div>
											</div>
											<!-- Grid column -->
										</div>
									</form>
									<form id="f3_room">
										<div class="row">
											<!-- Grid column -->
											<div class="col-md-12" id="room_n">
												<!-- Material input -->
												<div class="group">
													<input name="room_name" type="text" id="r_name"
														style="width: 820px !important; display: inline;" required>
													&nbsp; <i class="fas fa-plus" id="roomName_plus">&nbsp;</i>
													<i class="fas fa-minus" id="roomName-minus"></i> <span
														class="highlight"></span> <span class="bar"></span> <label>룸
														이름</label>
												</div>
											</div>
											<div class="col-md-12">
												<!-- Material input -->
											</div>
										</div>
									</form>
									<!-- Grid row -->
									<form id="f4_room_time">
										<div class="form-row" id="room">
											<!-- Grid column -->
											<div class="col-md-4" id="room_t_s">
												<!-- Material input -->
												<div class="group rt_float">
													<input name="start_time" class="two_line" type="number"
														id="room_time_start"
														style="width: 250px !important; display: inline;" min="0"
														max="24" required> <span class="highlight"></span>
													<span class="bar"></span> <label class="two_line"
														for="room_time_start"
														style="font-size: 15px; margin-top: -15px !important;">예약가능한<br>
														룸 시작 시간
													</label>
												</div>
											</div>
											<div class="col-md-4" id="room_t_e">
												<div class="group rt_float">
													<input name="end_time" class="two_line" type="number"
														id="room_time_end"
														style="width: 250px !important; display: inline;" min="0"
														max="24" required> <span class="highlight"></span>
													<span class="bar"></span> <label class="two_line"
														for="room_time_end"
														style="font-size: 15px; margin-top: -15px !important;">예약가능한<br>
														룸 종료 시간
													</label>
												</div>
											</div>
											<!-- Grid column -->
											<!-- Grid column -->
											<div class="col-md-4" id="room_p">
												<!-- Material input -->
												<div class="group rt_float">
													<input name="time_price" class="two_line firstRoom" type="number"
														id="room_price"
														style="width: 230px !important; display: inline;" min="0"
														max="99999" required> &nbsp; <i
														class="fas fa-plus" id="room_plus"></i>&nbsp; <i
														class="fas fa-minus" id="room-minus"></i> <span
														class="highlight"></span> <span class="bar"></span> <label
														for="room_price" style="font-size: 15px;">시간 별 룸가격</label>
												</div>
											</div>
										</div>
									</form>

								</div>
								<div class="wizard-pane" role="tabpanel">
									<form id="f5_cafe_n_p" target="iframe"
										style="margin-top: 30px;">
										<!--Textarea with icon prefix-->
										<div class="group">
											<div class="md-form amber-textarea active-amber-textarea-2">
												<label for="ta_1"
													style="position: relative; margin-bottom: 10px !important;"><font
													style="color: gray;">이용규칙/공지사항</font></label>
												<textarea id="ta_1" name="cafe_notice"
													class="md-textarea form-control" rows="6"
													placeholder="카페 내의 이용규칙 및 공지사항을 적어주시면 됩니다.&#13;&#10;내용에 변경사항이 발생하는 경우, [수정하기]에서 언제든지 업데이트가 가능합니다."></textarea>
											</div>
										</div>

										<div class="group">
											<div class="md-form amber-textarea active-amber-textarea-2">
												<label for="ta_2"
													style="position: relative; margin-bottom: 10px !important;"><font
													style="color: gray;">취소 및 환불 규정</font></label>
												<textarea id="ta_2" name="cafe_policy"
													class="md-textarea form-control" rows="10"
													placeholder="아래의 내용을 참고하여 입력해주세요.&#13;&#10;&#13;&#10;[1]스터디카페의 모든 예약은 시작일 5일 이전까지 취소 시에는 전액 환불이 가능합니다.&#13;&#10;단, 예약일 3일전까지 취소 시 50% 환불이 가능하며, 그 이후와 예약 당일 취소 시 환불 불가 (*양도 가능)합니다. &#13;&#10;&#13;&#10;예시)&#13;&#10;예약일이 2020년 3월 6일 (금) 일 경우 3월 1일 이전까지 취소 신청시 : 전액 환불 (결제수단에 따라 취소 수수료,부가세 발생가능) 3월 3일까지 취소 신청시 : 50% 환불 (결제수단 관계없이 취소 수수료, 부가세는 스터디카페에서 부담) 3월 4일~3월 6일 강좌 당일 취소 신청 시 : 환불 불가 (양도 가능)
&#13;&#10;[2]결제 수단에 따라 취소 수수료와 부가세 발생  (스터디카페 ‘결제수단별 취소 수수료, 부가세 부과 안내’)&#13;&#10;*주의사항)&#13;&#10;예약일 5일 이전까지 취소 시 전액 환불이 가능하지만 이 경우에도 실시간 계좌이체와 가상계좌를 통해 결제하신 경우는 PG사 매입기준에 따라 전액 환불금에서 취소수수료와 10% 부가세를 제외하고 환불해 드립니다. 신용카드와 무통장 입금은 취소 시 취소수수료와 10% 부가세가 발생하지 않습니다. 예약일 3일 전까지 취소 신청하여 50% 환불 처리 하는 경우, 결제 수단에 관계없이 취소 수수료와 부가세는 스터디 카페에서 부담합니다.
&#13;&#10;[3]카페측 사정으로 인한 예약 취소 시에는 100% 환불하여 드립니다."></textarea>
											</div>

										</div>
									</form>
									<div style="display: none;">
										<iframe src="#" name="iframe"
											style="width: 1px; height: 1px; border: 0; visibility: hidden;"></iframe>
									</div>
								</div>
							</div>

						</div>
					</div>


				</div>
			</div>

		</div>
	</div>
	<!--  전체 가운데 정렬-->


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
	<script type="text/javascript"
		src="jquery.modal-master/js/jquery.modal.js"></script>
	<script type="text/javascript" src="js/appUi-custom.js"></script>
	<script type="text/javascript"
		src="lib/jquery-wizard/jquery-wizard.min.js"></script>
	<script type="text/javascript" src="js/plugins-custom/wizard-custom.js"></script>
	<script type="text/javascript">
		$(function(e) {

			//------------------------------------------------------------------		
			function _alert() {
				modal({
					type : 'warning',
					theme : 'reseted',
					buttons : [ {
						text : '확인', //Button Text				
						eKey : true, //Enter Keypress
						addClass : 'btn-orange btn-square'
					} ],

					title : '알림',
					text : '예 누름',
					callback : function(result) {
						if (result == false) {
							alert('확인 누름')
						}
					}
				});
			}

			function _warning() {
				modal({
					type : 'warning',
					theme : 'reseted',
					buttons : [ {
						text : '확인', //Button Text				
						eKey : true, //Enter Keypress
						addClass : 'btn-orange btn-square'
					} ],
					title : '알림',
					text : '입력값이 올바른지 확인해주세요.'
				/* text: what+'이 올바른지 확인해주세요.'	  ------------안되넹ㅎ*/
				});
			}

			function _confirm() {
				modal({
					type : 'confirm',
					theme : 'reseted',
					buttons : [ {
						text : '예', //Button Text
						val : 'true', //Button Value
						eKey : true, //Enter Keypress
						addClass : 'btn-white btn-square'
					} ],

					title : '확인',
					text : '작성한 정보로 신규 카페를 개설하시겠습니까?',
					callback : function(result) {
						if (result) {
							/* alert('예 누름') */
							alert();
							//alert를 지우던가 커스텀으로 페이지가 이동됩니다 안내창 띄우던가해서
							//목록이나 사업자마이페이지로 이동

						} else {
							alert('아니오 누름')
						}
					}
				});

			}

			$('.wizard-finish')
					.click(
							function() {

								function isntEmpty() {
									var check_input_cafe_name = $(
											"input[name=cafe_name]").val();
									check_input_cafe_name = $
											.trim(check_input_cafe_name);
									if (check_input_cafe_name == "") {
										alert("카페명 재입력")
										$("input[name=cafe_name]").val("");
										return false;
									}

									var check_input_cafe_info = $(
											"input[name=cafe_info]").val();
									check_input_cafe_info = $
											.trim(check_input_cafe_info);
									if (check_input_cafe_info == "") {
										alert("한줄소개 재입력")
										$("input[name=cafe_info]").val("");
										return;
									}

									var check_input_cafe_loc = $(
											"input[name=cafe_loc]").val();
									check_input_cafe_loc = $
											.trim(check_input_cafe_loc);
									if (check_input_cafe_loc == "") {
										alert("카페 주소 재입력")
										$("input[name=cafe_loc]").val("");
										return;
									}

									var check_input_cafe_phone = $(
											"input[name=cafe_phone]").val();
									check_input_cafe_phone = $
											.trim(check_input_cafe_phone);
									if (check_input_cafe_phone == "") {
										alert("카페 전화번호 재입력")
										$("input[name=cafe_phone]").val("");
										return;
									}

									var check_input_cafe_hrs = $(
											"input[name=cafe_hrs]").val();
									check_input_cafe_hrs = $
											.trim(check_input_cafe_hrs);
									if (check_input_cafe_hrs == "") {
										alert("카페 영업시간 재입력")
										$("input[name=cafe_hrs]").val("");
										return;
									}

									var check_input_seats = $(
											"input[name=seats]").val();

									check_input_seats = $
											.trim(check_input_seats);
									var isNumber = isNaN(check_input_seats);
									if (isNumber == true) {
										alert("좌석수 숫자로 재입력")
										$("input[name=seats]").val("");
										return;
									}
									var check_input_cafe_facil = $(
											"textarea[name=cafe_facil]").val();
									check_input_cafe_facil = $
											.trim(check_input_cafe_facil);
									if (check_input_cafe_policy == "") {
										alert("카페 부가시설 재입력")
										$("textarea[name=cafe_facil]").val("");
										return;
									}
									var check_input_cafe_info_detail = $(
											"textarea[name=cafe_info_detail]").val();
									check_input_cafe_info_detail = $
											.trim(check_input_cafe_info_detail);
									if (check_input_cafe_info_detail == "") {
										alert("카페 업체정보상 재입력")
										$("textarea[name=cafe_info_detail]").val("");
										return;
									}
									var check_chkbox = $(
											"input[name=checkboxes]:checked")
											.val();
									check_chkbox = $.trim(check_chkbox);
									if (check_chkbox == "") {
										alert("체크박스 클릭 필수")
										$("input[name=checkboxes]:checked")
												.val("");
										return;
									}
									var check_input_pass_content = $(
											"input[name=pass_content]").val();
									check_input_pass_content = $
											.trim(check_input_pass_content);
									if (check_input_pass_content == "") {
										alert("이용권 이름 재입력")
										$("input[name=pass_content]").val("");
										return;
									}
									var check_input_price = $(
											"input[name=price]").val();
									check_input_price = $
											.trim(check_input_price);
									var isNumber = isNaN(check_input_price);
									if (isNumber == true) {
										alert("이용권 가격 숫자로 재입력")
										$("input[name=price]").val("");
										return;
									}
									var check_input_room_name = $(
											"input[name=room_name]").val();
									check_input_room_name = $
											.trim(check_input_room_name);
									if (check_input_room_name == "") {
										alert("룸이름 재입력")
										$("input[name=room_name]").val("");
										return;
									}
									var check_input_cafe_notice = $(
											"textarea[name=cafe_notice]").val();
									check_input_cafe_notice = $
											.trim(check_input_cafe_notice);
									if (check_input_cafe_notice == "") {
										alert("카페 공지사항 재입력")
										$("textarea[name=cafe_notice]").val("");
										return;
									}
									var check_input_cafe_policy = $(
											"textarea[name=cafe_policy]").val();
									check_input_cafe_policy = $
											.trim(check_input_cafe_policy);
									if (check_input_cafe_policy == "") {
										alert("카페 취소및 환불 재입력")
										$("textarea[name=cafe_policy]").val("");
										return;
									}

									return true;
								}

								//==================================================

								if (isntEmpty() == true) {
									//		alert('모두입력')
									var c = confirm('카페를 개설하시겠습니까?'); //else하면 새로고침/마이페이지뷰로 넘어가기 혹은 그냥 알림창 닫기
									if (c) {
										var room_price = $(".firstPass").val();
										var pass_price = $(".firstPass").val();
										//cafe------------------------------------------------------
										var cafe_data = $("#f1_cafe_info, #f5_cafe_n_p").serialize()+"&room_price="+room_price+"&pass_price="+pass_price+"";
								
								
										
					/* 					cafe_data.push({name:'room_price', value:room_price});
										cafe_data.push({name:'pass_price', value:pass_price}); */
										
										$.ajax({
											url : "insertCafe",
											type : "post",
											data : cafe_data,
											async : false,
											success : function(data) {
												/* if(data != null){								
													cafe_no = Number(data);
												
												}
												return cafe_no; */
											}
										});
										//cafe_chkbox------------------------------------------------------
										$.post("insert_cafe_chkbox",
												function(r) {
													//alert('체크박스 성공!' + r);
												})
										//cafe_img------------------------------------------------------
										$.post("insert_cafe_img", function(r) {
											//alert('이미지도 성공!' + r);
										})

										//pass------------------------------------------------------
										const formData_pass = new FormData();
										$("input[name=pass_content]").each(
												function(idx) {
													var value = $(this).val();
													formData_pass.append(
															"pass_content",
															value);
												});

										$("input[name=price]").each(
												function(idx) {
													var value = $(this).val();
													formData_pass.append(
															"price", value);
												});

										$
												.ajax({
													url : "insert_pass",
													processData : false,
													contentType : false,
													data : formData_pass,
													type : "post",
													async : false,
													error : function(xhr,
															status, error) {
														alert(error);
													},
													success : function(r) {
														//alert("이용권 성공!");
													}
												});
										//room------------------------------------------------------
										const formData_room = new FormData();
										$("input[name=room_name]")
												.each(
														function(idx) {
															var value = $(this)
																	.val();
															formData_room
																	.append(
																			"room_name",
																			value);
														});

										$
												.ajax({
													url : "insert_room",
													processData : false,
													contentType : false,
													data : formData_room,
													type : "post",
													async : false,
													error : function(xhr,
															status, error) {
														alert(error);
													},
													success : function(r) {
														//alert('room_등록 성공!')
														/* if(data != null){								
															room_no = Number(r);						
														}
														return room_no; */
													}
												});
										//room_time------------------------------------------------------
										const formData_room_time = new FormData();
										$("input[name=start_time]")
												.each(
														function(idx) {
															var value = $(this)
																	.val();
															formData_room_time
																	.append(
																			"start_time",
																			value);
														});

										$("input[name=end_time]").each(
												function(idx) {
													var value = $(this).val();
													formData_room_time.append(
															"end_time", value);
												});
										$("input[name=time_price]")
												.each(
														function(idx) {
															var value = $(this)
																	.val();
															formData_room_time
																	.append(
																			"time_price",
																			value);
														});

										$
												.ajax({
													url : "insert_room_time",
													processData : false,
													contentType : false,
													data : formData_room_time,
													type : "post",
													async : false,
													error : function(xhr,
															status, error) {
														alert(error);
													},
													success : function(r) {
														//alert("room_time 성공!");
													}
												});
										var cust_no = $("#cno").val();
										$(location).attr("href", "CafeSuccess?cust_no="+cust_no+"");

									}
								} else {
									alert('입력값이 올바른지 다시한번 확인해주세요.')
								}

								//	});

								//==================================================

							});

		});
		//------------------------------------------------------------------
	</script>
	<!-- <script type="text/javascript" src="lib/dropzone/dropzone.js"></script> -->

	<!-- 	<script type="text/javascript"
		src="lib/sweet-alerts2/sweetalert2.min.js"></script>
	<script src="js/plugins-custom/sweetalert2-custom.js"></script> -->
	<!-- <script type="text/javascript" src="lib/dropzone/dropzone.js"></script> -->
	<!--  <script>
        $(function(){
        	Dropzone.autoDiscover = false;        	
        	var dropzone = new Dropzone('#demo-upload', {	
    			 /*  url: '@Url.Action("upload.do", "data")', */	
    			  uploadMultiple: true,
    			  autoProcessQueue: false,	
    			  
    			  maxFilesize: 3,
    			  filesizeBase: 1000,
    			  
    				init: function() {
    					
    /* 					  this.on("sending", function(file, xhr, formData){
    	                        formData.append("data", "loremipsum");
    	                });
    				 */
    			    // first set autoProcessQueue = false
                  /*   $('#s').on("click", function(e) {

                    	dropzone.processQueue();
                    }); */
    			    
    			    
    	  	      this.on("addedfile", function(file) {            	    
    	  	    	
    	  	         var removeButton = Dropzone.createElement("<button id='removed' class='btn-primary btn-xs'>삭&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제</button>");
    				 var _this = this;
    				 
    				    
    	  	        removeButton.addEventListener("click", function(e) {
    	  	          e.preventDefault();
    	  	          e.stopPropagation();         	          
    	  	       
    	  	          _this.removeFile(file);
    	  	          // If you want to the delete the file on the server as well,
    	  	          // you can do the AJAX request here.
    	  	        });
    	  	        file.previewElement.appendChild(removeButton);     	  	        
    	  	      	
    	  	      });
    	  	      
    	  	      this.on("error", function(file, response) {
    	              var _this = this;                
    	              var index = dropzone.files.map(function (obj, index) {
    	                    if (file == obj) {
    	                        return index;
    	                    }
    	                }).filter(isFinite)[0];
    	               if(index == 4){
    	            	   _this.removeFile(file);            	  
    	            	   response = "파일은 최대 4개까지 업로드 가능합니다.";
    	                   alert(response).one(); // one 말고 다른 문법은 없음? html console에서 오류남 혹은 아예 비활성화되거나 자동 삭제 되는 방법은 없는지? 
    	               }
    	        	});
    			  }
    		  });    			
        });
</script>	 -->

</body>
</html>
