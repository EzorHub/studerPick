<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>이벤트목록</title>
    <!-- Plugins CSS -->
    <link href="assets/css/plugins/plugins.css" rel="stylesheet">
    <!-- REVOLUTION STYLE SHEETS -->
    <link rel="stylesheet" type="text/css" href="assets/revolution/css/settings.css">
    <!-- REVOLUTION LAYERS STYLES -->
    <link rel="stylesheet" type="text/css" href="assets/revolution/css/layers.css">
    <!-- REVOLUTION NAVIGATION STYLES -->
    <link rel="stylesheet" type="text/css" href="assets/revolution/css/navigation.css">
    <!-- load css for cubeportfolio -->
    <link rel="stylesheet" type="text/css" href="assets/cubeportfolio/css/cubeportfolio.min.css">
    <link href="assets/css/style.css" rel="stylesheet">
    <style type="text/css">
    .promo-box, .btn{
    	box-shadow: 0 2px 5px 0 rgba(0,0,0,.16),0 2px 10px 0 rgba(0,0,0,.12)!important; /*그림자 효과*/
    }
    #box{
    	margin: 10px !important;
    	margin-left:270px; margin-right:270px;
    	padding: 15px;	
    	
    }
    </style>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">   
    $(function(){
    	var evt_no;
    	$.getJSON("listEvt", function(data){
    		 $("#btnDetail").click(function(data){ 
    			//상세보기 기능구현	
    			
    			
    			$(location).attr("href", "getEvt.do");
        	});
        	
    		$.each(data, function(idx, item){
    			
    			//alert(item.evt_title);
    		 //---------------------------------------------------------------	동적노드 생성
    		 	evt_no = item.evt_no;
    		 	
    		 	
    		 	
    	        var evt_title = $("<h3></h3>").html(item.evt_title);
    	        /* var strong = $("<strong></strong>").addClass(".text-primary").html(item.evt_start+"~"+item.evt_end); */
    	        
    	        var evt_date = $("<p></p>").html("<strong class='text-primary'>"+item.evt_start+" ~ "+item.evt_end+"</strong>");
    	        
    	        var title = $("<div></div>").addClass("col-md-8");    	        
    	        $(title).append(evt_title, evt_date);
    	        
    	        var btns = $("<div><div>").addClass("col-md-4");
    	        var a = $("<a></a>").attr({"href":"getEvt.do?evt_no="+item.evt_no,
    	        						"class":"btn btn-outline-primary mb5"}).html("<i class='fa fas fa-key'></i> 상세보기");
    	        $(btns).append(a);
    	        var row = $("<div></div>").addClass("row");
    	        $(row).append(title, btns);
    	        var box = $("<div id='box'></div>").addClass("promo-box promo-border text-center");
    	        $(box).append(row);
    	        
    	        $("#container").append(box);
    	        
    	        
    	    //---------------------------------------------------------------    
    	       		
    		});
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
                <li class="clearfix">
                    <a href="#" class="float-left">
                        <img src="images/shop/p1.jpg" class="img-fluid" alt="" width="60">
                    </a>
                    <div class="oHidden">
                        <span class="close"><i class="ti-close"></i></span>
                        <h4><a href="#">Men's Special Watch</a></h4>
                        <p class="text-white-gray"><strong>$299.00</strong> x 1</p>
                    </div>
                </li>
                <!--/cart item-->
                <li class="clearfix">
                    <a href="#" class="float-left">
                        <img src="images/shop/p2.jpg" class="img-fluid" alt="" width="60">
                    </a>
                    <div class="oHidden">
                        <span class="close"><i class="ti-close"></i></span>
                        <h4><a href="#">Men's tour beg</a></h4>
                        <p class="text-white-gray"><strong>$99.00</strong> x 1</p>
                    </div>
                </li>
                <!--/cart item-->
                <li class="clearfix">
                    <a href="#" class="float-left">
                        <img src="images/shop/p3.jpg" class="img-fluid" alt="" width="60">
                    </a>
                    <div class="oHidden">
                        <span class="close"><i class="ti-close"></i></span>
                        <h4><a href="#">Women's T-shirts</a></h4>
                        <p class="text-white-gray"><strong>$199.00</strong> x 1</p>
                    </div>
                </li>
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

    <nav class="navbar navbar-expand-lg navbar-light navbar-transparent bg-faded nav-sticky">
        <div class="search-inline">
            <form>
                <input type="text" class="form-control" placeholder="Type and hit enter...">
                <button type="submit"><i class="ti-search"></i></button>
                <a href="javascript:void(0)" class="search-close"><i class="ti-close"></i></a>
            </form>
        </div>
        <!--/search form-->
        <div class="container">

            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="indextest.do">
                <img class='logo logo-dark' src="images/logo.png" alt="">
                <!--                    <img class='logo logo-light hidden-md-down' src="images/logo-light.png" alt=""> 아래 검은로고로 대체함-->
                <img class='logo logo-light hidden-md-down' src="images/logo.png" alt="">
            </a>
            <div id="navbarNavDropdown" class="navbar-collapse collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown dropdown-full-width">
                        <a class="nav-link" data-toggle="dropdown" href="#" aria-haspopup="true" aria-expanded="false">
                            스투더픽소개
                        </a>

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
                                <a tabindex="-1" href="listEvt.do" class="dropdown-item">프로모션</a>

                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav flex-row order-lg-2 ml-auto nav-icons">
                    <li class="nav-item dropdown user-dropdown align-items-center">
                        <a class="nav-link" href="#" id="dropdown-user" role="button" data-toggle="dropdown">
                            <span class="user-states states-online">
                                <img src="images/avatar6.jpg" width="35" alt="" class=" img-fluid rounded-circle">
                            </span>
                            <span class="ml-2 h-lg-down dropdown-toggle">
                                Hi, Bob
                            </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-user">
                            <div class="text-center p-3 pt-0 b-b mb-5">
                                <span class="mb-0 d-block font300 text-title fs-1x">Hi! <span class="font700">Zoe Park</span></span>
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

            </div>
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
                    <h4>페이지명: <span>이벤트목록</span></h4>
                </div>
                <div class=" col-md-6 mb0">
                    <ol class="breadcrumb text-md-right">
                        <li class="breadcrumb-item"><a href="#">고객지원/프로모션</a></li>
                        <li class="breadcrumb-item active">이벤트목록</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!--page title end-->

    <!-- ###################################################################### -->
    <div class="container mb50" id="container">    
        
    </div>
<!-- 
        <br>
        <div class="promo-box promo-border text-center">
            <div class="row">
                <div class="col-md-8">
                    <h3>10월 한달간 <strong class="text-primary">30%</strong> 할인 이벤트</h3>
                                       <p>Assan is the most popular <strong>modern</strong> template ever</p>
                </div>
                <div class="col-md-4">
                    <a href="getEvt.do" class="btn btn-outline-primary mb5"><i class="fa fas fa-key"></i> 상세보기</a>
                </div>
            </div>
        </div>
    </div> -->

    <!-- 추후 jquery로 동적생성 /promo box-->
    
<!-- 페이징처리 시작 -->
  <nav aria-label="Page navigation example" class="mb20">
                        <ul class="pagination justify-content-center">
                            <li class="page-item "><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav><!--/pagination-->
<!-- 페이징처리 끝 -->

    
    <!-- ###################################################################### -->


    <br>
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
                    <h4><i class="fa fa-phone"></i> 1800-355-4322</h4>
                    <h4><i class="fa fa-envelope"></i> support@assan.com</h4>
                    <p>&copy; Copyright 2018. Assan 3.0</p>
                </div>
            </div>
        </div>
    </footer>

    <!--back to top-->
    <a href="#" class="back-to-top hidden-xs-down" id="back-to-top"><i class="ti-angle-up"></i></a>
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="assets/js/plugins/plugins.js"></script>
    <script src="assets/js/assan.custom.js"></script>
</body>

</html>
