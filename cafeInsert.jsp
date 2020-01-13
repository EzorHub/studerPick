<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>STUDER-PICK</title>    
        <!-- Plugins CSS -->
        <link href="css/plugins/plugins.css" rel="stylesheet">
        <!-- REVOLUTION STYLE SHEETS -->
        <link rel="stylesheet" type="text/css" href="revolution/css/settings.css">
        <!-- REVOLUTION LAYERS STYLES -->
        <link rel="stylesheet" type="text/css" href="revolution/css/layers.css">
        <!-- REVOLUTION NAVIGATION STYLES -->
        <link rel="stylesheet" type="text/css" href="revolution/css/navigation.css">
        <!-- load css for cubeportfolio -->
        <link rel="stylesheet" type="text/css" href="cubeportfolio/css/cubeportfolio.min.css">     
        <link href="css/style.css" rel="stylesheet">
                <!-- Bootstrap-->
        <link href="lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!--Common Plugins CSS -->
        <link href="css/plugins/plugins.css" rel="stylesheet">
        <!--fonts-->
        <link href="lib/line-icons/line-icons.css" rel="stylesheet">
        <link href="lib/font-awesome/css/fontawesome-all.min.css" rel="stylesheet">
        <link href="lib/jquery-wizard/css/wizard.min.css" rel="stylesheet">
        <link href="css/wizard-custom.css" rel="stylesheet">
          <link href="lib/sweet-alerts2/sweetalert2.min.css" rel="stylesheet">
          <link href="css/sweet-alert-custom.css" rel="stylesheet">
          <link href="lib/dropzone/dropzone.css" rel="stylesheet">
          
          
          
        <style type="text/css">
        	input::placeholder {
			  color: #E6E6E6!important;
			 /*  font-style: italic; */
			}
			
			.active-pink-textarea.md-form label.active {
  color: #f48fb1;
}
.pink-textarea textarea.md-textarea:focus:not([readonly]) {
  border-bottom: 1px solid #f48fb1;
  box-shadow: 0 1px 0 0 #f48fb1;
}
.pink-textarea.md-form .prefix.active {
  color: #f48fb1;
}
.active-pink-textarea.md-form textarea.md-textarea:focus:not([readonly])+label {
  color: #f48fb1;
}

.active-amber-textarea.md-form label.active {
  color: #ffa000;
}
.amber-textarea textarea.md-textarea:focus:not([readonly]) {
  border-bottom: 1px solid #ffa000;
  box-shadow: 0 1px 0 0 #ffa000;
}
.amber-textarea.md-form .prefix.active {
  color: #ffa000;
}
.active-amber-textarea.md-form textarea.md-textarea:focus:not([readonly])+label {
  color: #ffa000;
}

.active-pink-textarea-2 textarea.md-textarea {
  border-bottom: 1px solid #f48fb1;
  box-shadow: 0 1px 0 0 #f48fb1;
}
.active-pink-textarea-2.md-form label.active {
  color: #f48fb1;
}
.active-pink-textarea-2.md-form label {
  color: #f48fb1;
}
.active-pink-textarea-2.md-form .prefix {
  color: #f48fb1;
}
.active-pink-textarea-2.md-form textarea.md-textarea:focus:not([readonly])+label {
  color: #f48fb1;
}

.active-amber-textarea-2 textarea.md-textarea {
  border-bottom: 1px solid #ffa000;
  box-shadow: 0 1px 0 0 #ffa000;
}
.active-amber-textarea-2.md-form label.active {
  color: #ffa000;
}
.active-amber-textarea-2.md-form label {
  color: #ffa000;
}
.active-amber-textarea-2.md-form .prefix {
  color: #ffa000;
}
.active-amber-textarea-2.md-form textarea.md-textarea:focus:not([readonly])+label {
  color: #ffa000;
}
	
        </style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js">
</script>
<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>   
<script type="text/javascript">

$(function(){
	var input;
	var input2;
	var count = 0;
	var rn_cnt = 0;
	var r_cnt = 0;
	/*checkBox기능*/
	$("input:checkbox").change(function(){			
        if($("input:checkbox").is(":checked")){
        	cnt_chk_box++;
        	if(cnt_chk_box == 4){
/*데이터에 저장하기 배열같이 어디 담아둘까? -1018-*/		
        		$("input:checkbox").attr("disabled", true); //비활성화
        		allCheckedAlert();
        	}
        	
        	}else{	            
            	cnt_chk_box--;
        };
    });
	$("#pass_plus").click(function(){
		input = $('<input type="text" class="form-control" id="passName" style="width: 400px;" placeholder="ex)2시간 이용권">');
		input2 = $('<input type="number" style="display: inline; width: 400px;" class="form-control" id="passPrice" placeholder="ex)2000 숫자만 입력">')
		$("#pass_name").append(input);
		$("#pass_price").append(input2);
		var passName = $("#passName").val();
		var passPrice = $("#passPrice").val();
		count++;

		 input.attr("pp_cnt",count);
		 input2.attr("pn_cnt",count);
	

		
		
	});
	$("#pass_minus").click(function(){
		$("input[pp_cnt="+count+"]").remove();
		$("input[pn_cnt="+count+"]").remove();
		count--;
	});
	$("#roomName_plus").click(function(){
		var room_n = $(' <input type="text" style="width: 865px; display: inline;" class="form-control" id="roomName" placeholder="ex)room13 / A7 / ect..">');
		$("#room_n").append(room_n);
		rn_cnt++;
		room_n.attr("rn_cnt",rn_cnt);
	});
	$("#roomName-minus").click(function(){
		$("input[rn_cnt="+rn_cnt+"]").remove();
		rn_cnt--;
	});
	$("#room_plus").click(function(){
		var room_t = $(' <input type="text" class="form-control" style="width: 400px;" id="roomTime" placeholder="ex)17:00~23:00">');
		var room_p = $(' <input type="number" class="form-control" style="width: 400px; display: inline;" id="roomPrice" placeholder="ex)1700 숫자만 입력">');
		$("#room_t").append(room_t);
		$("#room_p").append(room_p);
		
		r_cnt++;
		
		room_t.attr("r_cnt",r_cnt);
		room_p.attr("r_cnt",r_cnt);
	});
	$("#room_minus").click(function(){
		$("input[r_cnt="+r_cnt+"]").remove();
		$("input[r_cnt="+r_cnt+"]").remove();
		r_cnt--;
		
	});
	
	
	$("#fin").click(function(){
		$("#sa-params").trigger("click");
		
	});
});
</script>
 </head>

<body>

        <div id="preloader">	
            <div id="preloader-inner"></div>	
        </div><!--/preloader-->

        <!-- Pushy Menu -->
        <aside class="pushy pushy-right">
            <div class="cart-content">
                <div class="clearfix">
                    <a href="javascript:void(0)" class="pushy-link text-white-gray">Close</a>
                </div>
                <ul class="list-unstyled">
                    <li class="clearfix">
                        <a href="#" class="float-left">
                            <img src="images/shop/p1.jpg" class="img-fluid" alt="" width="60">
                        </a>
                        <div class="oHidden">
                            <span class="close"><i class="ti-close"></i></span>
                            <h4><a href="#">Men's Special Watch</a></h4>
                            <p class="text-white-gray"><strong>$299.00</strong> x 1</p>
                        </div>
                    </li><!--/cart item-->
                    <li class="clearfix">
                        <a href="#" class="float-left">
                            <img src="images/shop/p2.jpg" class="img-fluid" alt="" width="60">
                        </a>
                        <div class="oHidden">
                            <span class="close"><i class="ti-close"></i></span>
                            <h4><a href="#">Men's tour beg</a></h4>
                            <p class="text-white-gray"><strong>$99.00</strong> x 1</p>
                        </div>
                    </li><!--/cart item-->
                    <li class="clearfix">
                        <a href="#" class="float-left">
                            <img src="images/shop/p3.jpg" class="img-fluid" alt="" width="60">
                        </a>
                        <div class="oHidden">
                            <span class="close"><i class="ti-close"></i></span>
                            <h4><a href="#">Women's T-shirts</a></h4>
                            <p class="text-white-gray"><strong>$199.00</strong> x 1</p>
                        </div>
                    </li><!--/cart item-->
                    <li class="clearfix">

                        <div class="float-right">
                            <a href="#" class="btn btn-primary">Checkout</a>
                        </div>
                        <h4  class="text-white">
                            <small>Subtotal - </small> $49.99
                        </h4>
                    </li><!--/cart item-->
                </ul>
            </div>
        </aside>
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

                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="index.html">
                    <img class='logo logo-dark' style="top:-25px;" src="images/logo.png" alt="">
                    <img class='logo logo-light hidden-md-down' style="top:-20px;" src="images/logo-light.png" alt="">
                </a>
                <div  id="navbarNavDropdown" class="navbar-collapse collapse">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown active">
                            <a class="nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">스투더픽 소개</a>
                           
                        </li>
                        <li class="nav-item dropdown dropdown-full-width">
                            <a class="nav-link" data-toggle="dropdown" href="#" aria-haspopup="true" aria-expanded="false">
                                스터디카페
                            </a>
                   
                        </li>
                        <li class="nav-item dropdown dropdown-full-width">
                            <a class="nav-link" data-toggle="dropdown" href="#" aria-haspopup="true" aria-expanded="false">
                                스투더  
                            </a>
                       
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">맛집찾기</a>
                      
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">SNS</a>
                     
                        </li>
                        <li class="nav-item dropdown">
                         <a class="nav-link  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">고객지원</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a tabindex="-1" href="#" class="dropdown-item">공지사항</a>
                                   
                                </li>
                                <li>
                                    <a tabindex="-1" href="#" class="dropdown-item">Q&A</a>
                                   
                                </li>
                                <li>
                                    <a tabindex="-1" href="#" class="dropdown-item">프로모션</a>
                                    
                                </li>
                            </ul>
                        </li>
                    </ul>   
                    <ul class="nav flex-row order-lg-2 ml-auto nav-icons"  style="margin-left: 50px!important;" >
                        <li class="nav-item dropdown user-dropdown align-items-center">
                            <a class="nav-link" href="#" id="dropdown-user" role="button" data-toggle="dropdown">
                                <span class="user-states states-online">
                                    <img src="images/avatar6.jpg" width="35" alt="" class=" img-fluid rounded-circle">
                                </span>
                                <span class="ml-2 h-lg-down dropdown-toggle">
                                    Hi, Sarah
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-user">
                                <div class="text-center p-3 pt-0 b-b mb-5">
                                    <span class="mb-0 d-block font300 text-title fs-1x">Hi! <span class="font700">Sarah Taylor</span></span>
                                    <span class="fs12 mb-0 text-muted">Administrator</span>
                                </div>
                                <a class="dropdown-item" href="#"><i class="icon-User"></i>My Profile</a>
                                <a class="dropdown-item" href="#"><i class="icon-Newspaper"></i> Tasks</a>
                                <a class="dropdown-item" href="#"><i class="icon-Speach-Bubble4 "></i> Messages <span class="badge badge-text text-primary-active bg-primary-light ml-2">5 New</span></a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="icon-Gear"></i> Settings<span class="badge badge-text text-danger-active bg-danger-light ml-2">Update</span></a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="page-login.html"><i class="icon-Power"></i> logout</a>

                            </div>
                        </li>
                        <li class="h-lg-up nav-item">
                            <a href="#" class=" nav-link collapsed" data-toggle="collapse" data-target="#navbarToggler" aria-expanded="false">
                                <i class="icon-Magnifi-Glass2"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="navbar-right-elements" style="margin: 30px">
               
                </div><!--right nav icons-->
            </div>

        </nav>
  
  
		<!-- 상단 메뉴바? 이미지 -->
        <div class="page-titles-img title-space-lg bg-parallax parallax-overlay mb70" data-jarallax='{"speed": 0.2}' style='background-image: url("images/bg1.jpg")'>
            <div class="container">
                <div class="row">
                    <div class=" col-md-8 ml-auto mr-auto">
                        <h1 class='text-uppercase'>스터디카페 등록 </h1>

                        <!--                                    <a href='https://www.youtube.com/watch?v=cctFcl5EFYk' class='modal-video btn btn-white-outline btn-lg btn-rounded'>Watch our film</a>
                        -->
                    </div>
                </div>
            </div>
        </div><!--page title end-->
        
        
        
        
        
        
        
        
        <!-- ###################################################################### -->
        <div class="page-content" style="position: relative; top: -50px; width: 1000px; left: 470px;">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-md-12 mr-auto ml-auto pt-4 pb-4">
                               <h4 style="font-weight: 20px;">스터디 카페 등록</h4>
                               <span class="text-muted">
                                   	순서에 따라 진행해주세요
                                   <a class="b-b text-primary ml-2" href="https://github.com/thecreation/jquery-wizard" target="_blank">문의하기</a>
                               </span>
                            </div>
                        </div>
                        <div class="row mb-30">
                            <div class="col-lg-12 ml-auto mr-auto">
                                <div class="wizard wizard-example clearfix">
                                <ul class="wizard-steps nav nav-justified" role="tablist">
                                    <li class="active nav-item" role="tab">
                                        <i class="far fa-images"></i> 사진 첨부
                                    </li>
                                    <li role="tab" class="nav-item">
                                      <i class="fas fa-book"></i> 카페 정보 및 소개
                                    </li>
                                    <li role="tab" class="nav-item">
                                       <i class="fas fa-ticket-alt"></i> 이용권 및 룸
                                    </li>
                                     <li role="tab" class="nav-item">
                                     <i class="fas fa-redo"></i> 취소 환불 규정
                                    </li>
                                </ul>
                                <div class="wizard-content">
                                    <div class="wizard-pane active" role="tabpanel">
                                   
                                            <div class="form-row">
                                                <div class="page-content">
								                    <div class="container-fluid">
								                        <div class="row">
								                            <div class="col-lg-12 mb-30">
								                                <div class="portlet-box" style="position: relative; left: 50px; margin-top: 50px; ">
								                                    <div class="portlet-header flex-row b-b flex d-flex align-items-center">
								                                        <div class="flex d-flex flex-column">
								                                            <h3 style="color: gray;">카페 메인사진 및 내부 사진을 첨부해주세요</h3> 
								                                        </div>
								                                    </div>
								                                    <div class="portlet-body">
								                                        <form action="#" class="dropzone" id="dropzoneForm" style="width: 820px;">
								                                            <div class="fallback">
								                                                <input name="file" type="file" multiple />
								                                            </div>
								                                        </form> 
								                                    </div>
								                                </div>
								                            </div>
								                        </div>
								                    </div>
								                </div>
                                            </div>
                                       
                                    </div>
                                    <div class="wizard-pane" role="tabpanel">
                                    <form>
                                           	<div class="form-group" style="margin-top: 50px;"> <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
											    <label for="formGroupExampleInput" class="bmd-label-floating" style="color: gray;">스터디 카페 이름을 입력해주세요</label>
											    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="ex)스투더픽 카페">
										  	</div>
                                           	<div class="form-group" style="margin-top: 50px;"> <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
											    <label for="formGroupExampleInput" class="bmd-label-floating" style="color: gray;">간단한 카페 한줄 소개를 입력해주세요</label>
											    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="ex)꿈을 이루는 공간 스투더픽!">
										  	</div>
                                           	<div class="form-group" style="margin-top: 50px;"> <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
											    <label for="formGroupExampleInput" class="bmd-label-floating" style="color: gray;">카페 주소를 입력해주세요</label>
											    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="ex)서울시 강서구 염창동">
										  	</div>
                                           	<div class="form-group" style="margin-top: 50px;"> <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
											    <label for="formGroupExampleInput" class="bmd-label-floating" style="color: gray;">카페 전화번호를 입력해주세요</label>
											    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="ex)010-0000-0000">
										  	</div>
                                           	<div class="form-group" style="margin-top: 50px;"> <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
											    <label for="formGroupExampleInput" class="bmd-label-floating" style="color: gray;">카페의 영업시간을 입력해주세요</label>
											    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="ex)09:00~23:00 /00:00~24:00">
										  	</div>
                                           	<div class="form-group" style="margin-top: 50px;"> <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
											    <label for="formGroupExampleInput" class="bmd-label-floating" style="color: gray;">개인 좌석이 있는 경우 좌석수를 입력해주세요</label>
											    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="ex)130석">
										  	</div>
										  	<div class="item_checkbox" style="margin-top: 50px; color: gray;">
										  	<p><font>카페의 대표특성 4가지를 선택해주세요!(카페 상세 페이지 최상단에  아이콘으로 노출됩니다!)</font></p>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_1" name="wifi"> <label class="custom-control-label"
													for="checkbox_1">와이파이</label>
											</div>		
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_2" name="toilet"> <label class="custom-control-label"
													for="checkbox_2">화장실</label>
											</div>		
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_3" name="laptop"> <label class="custom-control-label"
													for="checkbox_3">노트북</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_4" name="keyboard&mouse"> <label class="custom-control-label"
													for="checkbox_4">키보드/마우스</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_5" name="desktop"> <label class="custom-control-label"
													for="checkbox_5">컴퓨터</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_6" name="PCmonitor"> <label class="custom-control-label"
													for="checkbox_6">모니터</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_7" name="projector"> <label class="custom-control-label"
													for="checkbox_7">프로젝터</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_8" name="forGroup"> <label class="custom-control-label"
													for="checkbox_8">단체석</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_9" name="cabinet"> <label class="custom-control-label"
													for="checkbox_9">개인사물함</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_10" name="drinks"> <label class="custom-control-label"
													for="checkbox_10">음료제공</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_11" name="restrictedAccess"> <label class="custom-control-label"
													for="checkbox_11">출입통제</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_12" name="membership"> <label class="custom-control-label"
													for="checkbox_12">맴버쉽</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_13" name="kiosk"> <label class="custom-control-label"
													for="checkbox_13">무인결제</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_14" name="cctv"> <label class="custom-control-label"
													for="checkbox_14">CCTV</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_15" name="notification"> <label class="custom-control-label"
													for="checkbox_15">알림서비스</label>
											</div>
											<div class="custom-control custom-checkbox custom-control-inline">
												<input type="checkbox" class="custom-control-input"
													id="checkbox_16" name="24hours"> <label class="custom-control-label"
													for="checkbox_16">24시간</label>
											</div>
											</div>

                                        </form>
                                    </div>
                                    <div class="wizard-pane" role="tabpanel">
                                  
                                        <form>
										<!-- Grid row -->
											  <div class="form-row" style="margin-top: 50px;">
											    <!-- Grid column -->
											    <div class="col-md-6">
											      <!-- Material input -->
											      <div class="md-form form-group" id="pass_name">
											      <label for="passName" style="color: gray;">이용권 이름</label>
											        <input type="text" class="form-control" id="passName" style="width: 400px;" placeholder="ex)2시간 이용권">
											      </div>
											    </div>
											    <!-- Grid column -->
											
											    <!-- Grid column -->
											    <div class="col-md-6" style="display: inline;">
											      <!-- Material input -->
											      <div class="md-form form-group" id="pass_price">
											      <label for="passPrice" style="color: gray;">이용권 가격</label>
											        <input type="number" style="display: inline; width: 400px;" class="form-control" id="passPrice" placeholder="ex)2000 숫자만 입력">
											 			 &nbsp  <i class="fas fa-plus" id="pass_plus">&nbsp</i>
											          <i class="fas fa-minus" id="pass_minus"></i>
											      </div>
											    </div>
											    <!-- Grid column -->
											  </div>
											  <!-- Grid row -->
											
											  <!-- Grid row -->
											  <div class="row">
											    <!-- Grid column -->
											    <div class="col-md-12">
											      <!-- Material input -->
											      <div class="md-form form-group" id="room_n">
											      <label for="roomName" style="color: gray;" id="room_name">룸 이름</label><br>
											        <input type="text" style="width: 865px; display: inline;" class="form-control" id="roomName" placeholder="ex)room13 / A7 / ect..">
											      	&nbsp  <i class="fas fa-plus" id="roomName_plus">&nbsp</i>
											          <i class="fas fa-minus" id="roomName-minus"></i>
											      </div>
											    </div>
											    <!-- Grid column -->
											
											    <!-- Grid column -->
											    <div class="col-md-12">
											      <!-- Material input -->
											     
											    </div>
											    <!-- Grid column -->
											  </div>
											  <!-- Grid row -->
											
											  <!-- Grid row -->
											  <div class="form-row" id="room">
											    <!-- Grid column -->
											    <div class="col-md-6">
											      <!-- Material input -->
											      <div class="md-form form-group" id="room_t">
											      <label for="roomTime" style="color: gray;" id="room_time">룸 가격 시간대</label>
											        <input type="text" class="form-control" style="width: 400px;" id="roomTime" placeholder="ex)17:00~23:00">
											      </div>
											    </div>
											    <!-- Grid column -->
											
											    <!-- Grid column -->
											    <div class="col-md-6">
											      <!-- Material input -->
											      <div class="md-form form-group" id="room_p">
											      <label for="roomPrice" style="color: gray;" id="room_price">시간 별 가격</label>
											        <input type="number" class="form-control" style="width: 400px; display: inline;" id="roomPrice" placeholder="ex)1700 숫자만 입력">
											      	 &nbsp  <i class="fas fa-plus" id="room_plus">&nbsp</i>
											          <i class="fas fa-minus" id="room_minus"></i>
											      </div>
											    </div>
											    <!-- Grid column -->
											  </div>
											  <!-- Grid row -->
										</form>
                                     
                                    </div>
                                          <div class="wizard-pane" role="tabpanel">
                                    <form style="margin-top: 30px;">
                                           <!--Textarea with icon prefix-->
											<div class="md-form amber-textarea active-amber-textarea-2">
											  <label for="form24"><font style="color: gray;">상품정보 제공 고시</font></label>
											  <textarea id="form24" class="md-textarea form-control" rows="6" placeholder="ex)채움 스터디 카페
1.스터디카페 이용에 관련한 스터디룸 및 이용권 장소제공
2.기타 간단한 식음료 제공"></textarea>
											
											</div>
											<!--Textarea with icon prefix-->
											<div class="md-form amber-textarea active-amber-textarea-2">
											    <label for="form24"><font style="color: gray;">취소 및 환불 규정</font></label>
											  <textarea id="form24" class="md-textarea form-control" rows="10" placeholder="ex)1. 채움스터디카페의 모든 예약은 시작일 5일 이전까지 취소 시에는 전액 환불이 가능합니다. 단, 예약일 3일전까지 취소 시 50% 환불이 가능하며, 그 이후와 예약 당일 취소 시 환불 불가 (단, 지인에게 양도 가능)합니다. 예시) 예약일이 2020년 3월 6일 (금) 일 경우 3월 1일 이전까지 취소 신청시 : 전액 환불 (결제수단에 따라 취소 수수료,부가세 발생가능) 3월 3일까지 취소 신청시 : 50% 환불 (결제수단 관계없이 취소 수수료, 부가세 채움스터디카페가 부담) 3월 4일~3월 6일 강좌 당일 취소 신청 시 : 환불 불가 (지인에게 양도 가능)
2. 결제 수단에 따라 취소 수수료와 부가세 발생 (채움스터디카페 ‘결제수단별 취소 수수료, 부가세 부과 안내’ 참고) 예약일 5일 이전까지 취소 시 전액 환불이 가능하지만 이 경우에도 실시간 계좌이체와 가상계좌를 통해 결제하신 경우는 PG사 매입기준에 따라 전액 환불금에서 취소수수료와 10% 부가세를 제외하고 환불해 드립니다. 신용카드와 무통장 입금은 취소 시 취소수수료와 10% 부가세가 발생하지 않습니다. 예약일 3일 전까지 취소 신청하여 50% 환불 처리 하는 경우, 결제 수단에 관계없이 취소 수수료와 부가세는 채움스터디 카페가 부담합니다.
3. 카페측 사정으로 인한 예약 취소 시에는 100% 환불하여 드립니다."></textarea>
											
											</div> 
											
											
										   <a id="fin" style="color:#FFFFFF; position: absolute; left: 900.5px; top: 555px;">개설</a>
                                    </form>
                                    
                                    </div>
                                </div>
                            		 
                            
                            </div>
                            </div>
                        </div>
                        </div>
                		<button style="position: absolute; left: 3000px;" type="button" class="btn btn-light btn-sm" id="sa-params">Run</button>
                </div>
            
        <!-- 요기에 넣어!!!!!-->
        
        
      
      
      
      
            
        <footer class="footer footer-dark pt50 pb30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6  ml-auto mr-auto text-center">
                        <ul class="social-icons list-inline">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-facebook"></i>Facebook
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-twitter"></i>twitter
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-instagram"></i>instagram
                                </a>
                                
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-behance"></i>Behance
                                </a>
                            </li>
                        </ul>
                        <h4><i class="fa fa-phone"></i>  010-4656-0811</h4>
                        <h4><i class="fa fa-envelope"></i>  zozo.park@kakao.com</h4>
                        <p>&copy; Copyright 2019. Team BoB</p>
                    </div>
                </div>
                
            </div>
        </footer>

        <!--back to top-->
        <a href="#" class="back-to-top hidden-xs-down" id="back-to-top"><i class="ti-angle-up"></i></a>
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="js/plugins/plugins.js"></script> 
        <script src="js/assan.custom.js"></script> 
           <script type="text/javascript" src="js/plugins/plugins.js"></script> 	
        <script type="text/javascript" src="js/appUi-custom.js"></script> 
        <script type="text/javascript" src="lib/jquery-wizard/jquery-wizard.min.js"></script>
       	<script type="text/javascript" src="js/plugins-custom/wizard-custom.js"></script>
        <script type="text/javascript" src="lib/sweet-alerts2/sweetalert2.min.js"></script>
        <script src="js/plugins-custom/sweetalert2-custom.js"></script>
        <script type="text/javascript" src="lib/dropzone/dropzone.js"></script>
        <script>
            Dropzone.options.dropzoneForm = {
                paramName: "file", // The name that will be used to transfer the file
                maxFilesize: 2, // MB
                dictDefaultMessage: "<strong>Drop files here or click to upload. </strong></br> (This is just a demo dropzone. Selected files are not actually uploaded.)"
            };
        </script>
    </body>
</html>
