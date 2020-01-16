<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>카페등록</title>
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
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
    <style type="text/css">
        #content{
            margin-left: 270px;
            margin-right: 270px;
        }
        #btn {
            text-align: center;
        }
        input:focus{
           outline: none;
         box-shadow: 0 1px 0 0 #ffa000 !important;                  
         border: 1px solid #e17804 !important;   
        }
   </style>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.6.1.min.js"></script>
    <script type="text/javascript">
    
        $(function(){
           $("#info").hide();
           $("#info2").hide();
           $("#provNum").hide();
           $("#info").fadeIn(2000);
           $("#info").fadeOut(1000,function(){
              $("#info2").fadeIn(2000);
               $("#info2").fadeOut(1000,function(){
                  $("#provNum").fadeIn(1000);
               });
           });
           
                    
            $("#btnCls").click(function(){                
                alert('취소버튼 클릭')  
                /*이전으로 돌아가기*/
            });
            $("#btnNext").click(function(){                
              checkedNumber();
            }); 
           
           /* var p_no = location.search.substring(location.search
                .indexOf("=") + 1); */
           var p_no = $("#loginID").val();  //--------------------위에꺼 주석 풀게되면 지우시오!         
           
/*

사업자등록번호 | 657-06-00946 ----------------> 하이픈 포함 12자, 하이픈 제외 10자

*/           
           function checkedNumber(){              
              var licenseNumber = $("input[name=licenseNumber]").val(); 
               if(licenseNumber.length == 12){   
                  var params = {provider_no:p_no, license_num:licenseNumber};
                    var goToNext = $.param(params);
                    $(location).attr("href", "cafeInsert.do?"+goToNext);
                    
               }else{
                  alert('올바른 입력값이 아닙니다. 다시 입력해주세요!');
                    $("input").val("");   
               }
           }
        });
       
    </script>
</head>

<body>

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
    <div class="page-titles-img title-space-lg bg-parallax parallax-overlay mb70" data-jarallax='{"speed": 0.2}' style='background-image: url("images/bg1.jpg")'>
        <div class="container">
            <div class="row">
                <div class=" col-md-8 ml-auto mr-auto">
                    <h1 class='text-uppercase'>사업자 등록번호 확인</h1>

                    <!--                                    <a href='https://www.youtube.com/watch?v=cctFcl5EFYk' class='modal-video btn btn-white-outline btn-lg btn-rounded'>Watch our film</a>
                        -->
                </div>
            </div>
        </div>
    </div>
    <!--page title end-->

	<input type="hidden" value="${loginVo.no }" id="loginID">
    <!-- ###################################################################### -->
    
    <div id="info">
       <br><br><br><br><br><br>
       <h2 style="text-align: center; color: #F4923D;">스투더픽에 오신 것을 환영합니다</h2>
       <br><br><br><br><br><br><br><br><br>
    </div>
    <div id="info2">
       <br><br><br><br><br><br>
       <h2 style="text-align: center; color: #F4923D;">순서에 맞춰 간편하게 카페를 등록하실 수 있습니다</h2>
       <br><br><br><br><br><br><br><br><br>
    </div>
   <div id="provNum">
    <div id="content">
    <div class="form-row">
    <br><br>

                                         <div class="form-group col-md-6"  style="position: relative; left: 300px;">
                                             <h2>사업자 등록번호 </h2><br>
                                         <p><font color="#e17804" style="font-weight: bold;">아래에 번호를 입력하신 후, [다음]버튼을 눌러주세요.</font></p>
                                               <div class="form-group"> <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
                <!-- <label for="formGroupExampleInput" class="bmd-label-floating" style="color: gray;">사업자 등록번호 </label>
 -->                <input type="text" class="form-control" name="licenseNumber" id="licenseNumber" placeholder="000-00-00000">
                <br><br><br><br>
              </div>
                                         </div>
                                        
                                     </div>
                                     </div>
    <div id="btn">
        <button id="btnCls" class="btn btn-outline-secondary mb5 btn-rounded">취소</button>
        <button id="btnNext" class="btn btn-outline-warning mb5 btn-rounded">다음</button>
          <br>
        <br>
        <br>
        <br>
        <br>
    </div>
  
</div>

    <!-- ###################################################################### -->


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
                    <h4><i class="fa fa-phone"></i>  010-0000-0000</h4>
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
</body>
</html>