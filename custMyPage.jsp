<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link href="admin-dashboardUi/css/style1.css" rel="stylesheet">
<style>
        .out{
            width: auto;
            text-align: center;
            /*border: 1px solid none;*/
            padding: 20px;
            margin: 15px;
        }
        .col-lg-6.mb-30.in{
            align-items: center;
            display: inline-block;
            width: 50%;
            /*border: 1px solid red;*/
            height: 100px;
        }
        
        #page_cafe{
            align-content: center;
        }
  
/*         .cafe_content {
            margin: 10px;
        } */

       #cafe_tab_nav {
            text-align: center;
/*             padding: 5px; border: 5px; */
/*             resize: horizontal; */
        } 

        .cafe_list {
            /*resize: none;*/
            margin:5px;
            padding: 40px;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0 rgba(0, 0, 0, .12) !important;
            border-radius: 10px 10px 10px 10px;
            margin-top: 23px;
            /*그림자 효과*/
            
        }

        .list_header,
        .list_header>* {
            display: block !important;
        }

        .list_content>p {
            text-align: left;
            margin:0px;
            margin-top: 0px;
            margin-bottom: 0px;
            padding: 0px;
        }
        ul>li>a>h4 {
        	margin:0px !important;        	
        }
        /* ul>li>a>p {
        	color: 	#FF7F50;
        } */
        .rounded shadow-sm p-3 bg-white{
        	text-align: center;
        }
       .centered {
        width: 130px;
        left: 50%; 
        margin-left: 430px;
      }
/*스투더부분  */
.shadow {
    box-shadow: 3px 3px 3px 3px #999
}
.margin_div {
	margin: 3%;
}
.clsimg{
	width:500px; 
	height:280px; 
}
.clsdiv{
	width:540px; 
	margin-left:20px;
	margin-bottom:20px;
} 
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		var cust_no = $("#cust_no").val();
  		/* var cust_no = 11; */
  		


 		
		//----------------------스투더 목록수-------------------------------------
		$.getJSON("allStdCnt?cust_no="+cust_no, function(data){
   			 var cnt_all = $("<span></span>").html("( "+data+" )");
       		$( '#all_std').append(cnt_all); 
   		}); 
		
		$.getJSON("ingStdCnt?cust_no="+cust_no, function(data){
   			 var cnt_all = $("<span></span>").html("( "+data+" )");
       		$( '#ing_std').append(cnt_all); 
   		}); 
		
		$.getJSON("endStdCnt?cust_no="+cust_no, function(data){
   			 var cnt_all = $("<span></span>").html("( "+data+" )");
       		$( '#end_std').append(cnt_all); 
   		}); 
		
		$.getJSON("watingStdCnt?cust_no="+cust_no, function(data){
   			 var cnt_all = $("<span></span>").html("( "+data+" )");
       		$( '#wtg_std').append(cnt_all); 
   		}); 
		
		$.getJSON("myStdCnt?cust_no="+cust_no, function(data){
   			 var cnt_all = $("<span></span>").html("( "+data+" )");
       		$( '#my_std').append(cnt_all); 
   		}); 


        //카페 목록 수 반환------------------------------------------------------   
       	$.getJSON("cnt_all_mypage?cust_no="+cust_no, function(data){  
   			 var cnt_all = $("<span></span>").html("( "+data+" )");
       		$( '#_all').append(cnt_all); 
   		});        
       	$.getJSON("cnt_reserved_mypage?cust_no="+cust_no, function(data){
       		var cnt_reserved = $("<span></span>").html("( "+data+" )");
   			 $("#_reserved").append(cnt_reserved);
   		});
       	$.getJSON("cnt_used_mypage?cust_no="+cust_no, function(data){
       		var cnt_used = $("<span></span>").html("( "+data+" )");
   			 $("#_used").append(cnt_used); 
   		});
       	$.getJSON("cnt_pass_mypage?cust_no="+cust_no, function(data){
       		var cnt_pass = $("<span></span>").html("( "+data+" )");
   			 $("#_pass").append(cnt_pass); 
   		});
      //카페 목록 반환------------------------------------------------------
	 	
    	$.getJSON("all_mypage?cust_no="+cust_no, function(data){
    		
	       	 $.each(data, function (idx, mp) {
	       	    	var div1 = $('<div></div>').addClass('cafe_list');
	       	    	var div2 = $('<div></div>').addClass('list_header');					
	       	    	var div3 = $('<div></div>').attr({"style":"float:left;"});					
	       	    	var cname = $("<p></p>").html("<b>카페명: <font color='#e17804;'>"+mp.mp_cafe_name+"</font></b>").attr({
					"style":"font-size:13.5;"});
					$(div3).append(cname);				
					$(div2).append(div3);
					var div5 = $('<div></div>').attr({"style":"clear:both;"});
					var div6 = $('<div></div>').addClass("list_content").attr({"style":"text-align:left;"});
					mp.mp_reser_date = mp.mp_reser_date.substr(0,10);		
					var content_date = $('<p></p>').html("<b>날짜: "+mp.mp_reser_date+"</b>");
					var content_time = $('<p></p>').html("시간: "+mp.mp_reser_start+":00 ~  ("+mp.mp_reser_time+" 시간 이용)");
					var content_limit = $('<p></p>').html("인원: "+mp.mp_user_num+" 명");
					var content_addr = $('<p></p>').html("주소: "+mp.mp_cafe_loc);
					$(div6).append(content_date, content_time, content_limit, content_addr);					
					$(div1).append(div2, div5, div6);					
					$("#cafe_all").append(div1);
					
	       	    });
       		}); 
    	
    	     $.getJSON("reserved_mypage?cust_no="+cust_no, function(data){
	       	     $.each(data, function (idx, mp) {
	       	    	var div1 = $('<div></div>').addClass('cafe_list');
	       	    	var div2 = $('<div></div>').addClass('list_header');					
	       	    	var div3 = $('<div></div>').attr({"style":"float:left;"});					
	       	    	var cname = $('<p></p>').html("<b>카페명: <font color='#e17804;'>"+mp.mp_cafe_name+"</font></b>").attr({
					"style":"font-size:13.5;"});
					$(div3).append(cname);			
					$(div2).append(div3);
					var div5 = $('<div></div>').attr({"style":"clear:both;"});
					var div6 = $('<div></div>').addClass("list_content").attr({"style":"text-align:left;"});
					mp.mp_reser_date = mp.mp_reser_date.substr(0,10);		
					var content_date = $('<p></p>').html("<b>날짜: "+mp.mp_reser_date+"</b>");
					var content_time = $('<p></p>').html("시간: "+mp.mp_reser_start+":00 ~  ("+mp.mp_reser_time+" 시간 이용)");
					var content_limit = $('<p></p>').html("인원: "+mp.mp_user_num+" 명");
					var content_addr = $('<p></p>').html("주소: "+mp.mp_cafe_loc);
					$(div6).append(content_date, content_time, content_limit, content_addr);					
					$(div1).append(div2, div5, div6);					
					$("#cafe_reserved").append(div1);
					
	       	    }); 
       		}); 

    	
    	     $.getJSON("used_mypage?cust_no="+cust_no, function(data){
	       	    $.each(data, function (idx, mp) {
	       	    	
	       	    	var div1 = $('<div></div>').addClass('cafe_list');
	       	    	var div2 = $('<div></div>').addClass('list_header');					
	       	    	var div3 = $('<div></div>').attr({"style":"float:left;"});					
	       	    	var cname = $('<p></p>').html("<b>카페명: <font color='#e17804;'>"+mp.mp_cafe_name+"</font></b>").attr({
					"style":"font-size:13.5;"});
					$(div3).append(cname);	
					$(div2).append(div3);
					div5 = $('<div></div>').attr({"style":"clear:both;"});
					div6 = $('<div></div>').addClass("list_content").attr({"style":"text-align:left;"});
					mp.mp_reser_date = mp.mp_reser_date.substr(0,10);		
					var content_date = $('<p></p>').html("<b>날짜: "+mp.mp_reser_date+"</b>");
					var content_time = $('<p></p>').html("시간: "+mp.mp_reser_start+":00 ~  ("+mp.mp_reser_time+" 시간 이용)");
					var content_limit = $('<p></p>').html("인원: "+mp.mp_user_num+" 명");
					var content_addr = $('<p></p>').html("주소: "+mp.mp_cafe_loc);
					$(div6).append(content_date, content_time, content_limit, content_addr);					
					$(div1).append(div2, div5, div6);					
					$("#cafe_used").append(div1);
	       	    });
       		}); 
    	    //------------------------------------------------------------------------------1114 카페_이용권 탭_추가 
    	     $.getJSON("pass_mypage?cust_no="+cust_no, function(data){
 	       	    $.each(data, function (idx, mp) {
 	       	    	
 	       	    	//--------------------------------------------------------------
 	       	    	var div1 = $('<div></div>').addClass('cafe_list');
 	       	    	var div2 = $('<div></div>').addClass('list_header');					
 	       	    	var div3 = $('<div></div>').attr({"style":"float:left;"});					
 	       	    	var cname = $('<p></p>').html("<b>카페명: <font color='#e17804;'>"+mp.mps_cafe_name+"</font></b>").attr({
 					"style":"font-size:13.5;"});
 					$(div3).append(cname);					
 					$(div2).append(div3);
 					var div5 = $('<div></div>').attr({"style":"clear:both;"});
 					var div6 = $('<div></div>').addClass("list_content").attr({"style":"text-align:left;"});
 				
 					var content_no = $('<p></p>').html("<b>결제번호: "+mp.mps_pay_no+"</b>");
					var content_name = $('<p></p>').html("<b>이용권명: "+mp.mps_pass_content+"</b>");
					var content_price = $('<p></p>').html("결제금액: "+mp.mps_totalprice+" 원"); 					
					var content_hrs = $('<p></p>').html("영업시간: "+mp.mps_cafe_hrs);
 					var content_tel = $('<p></p>').html("전화번호: "+mp.mps_cafe_phone);
 					var content_addr = $('<p></p>').html("주소: "+mp.mps_cafe_loc);
 					var content_notice = $('<p></p>').attr({"style":"color:#ed941f;font-size:11px;font-weight:bold;"}).html("[결제번호]로 이용가능하며, 기타 문의사항이 있으시면 해당 카페로(영업시간 기준) 언제든지 연락가능합니다.");
 					
 					$(div6).append(content_no, content_name, content_price, content_hrs, content_tel, content_addr, content_notice);					
 					$(div1).append(div2, div5, div6);			
 					
 					$("#cafe_pass").append(div1);
 	       	    	
 	       	    });
        		}); 
		
		
<!--스투더부분-->
		$.ajax({
			url : "allStd?cust_no="+cust_no,
			success : function(data) {
				var arr = eval("(" + data + ")");
				$.each(arr,function(idx, item) {
					var div1 = $("<div class='clsdiv'></div>");
					var div2 = $("<div class='iCard border1 p-2 rounded bg-white shadow margin_div'></div>");
					var a_img = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"&isClosed=-1'></a>");
					var img_std = $("<img src='images/std_img/upload/"+item.std_image+"' alt=''class='img-fluid rounded clsimg'>");
					$(a_img).append(img_std);
					var div3 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
					var h2 = $("<h2 class='fs16 text-dark font400 mb-5 text-capitalize'></h2>");
					var a_title = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"&isClosed=-1'>");
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
			url : "ingStd?cust_no="+cust_no,
			success : function(data) {
				var arr = eval("(" + data + ")");
				$.each(arr,function(idx, item) {
					var div1 = $("<div class='clsdiv'></div>");
					var div2 = $("<div class='iCard border1 p-2 rounded bg-white shadow margin_div'></div>");
					var a_img = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"&isClosed=-1'>");
					var img_std = $("<img src='images/std_img/upload/"+item.std_image+"' alt=''class='img-fluid rounded clsimg'>");
					$(a_img).append(img_std);
					var div3 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
					var h2 = $("<h2 class='fs16 text-dark font400 mb-5 text-capitalize'></h2>");
					var a_title = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"&isClosed=-1'>");
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
			url : "endStd?cust_no="+cust_no,
			success : function(data) {
				var arr = eval("(" + data + ")");
				$.each(arr,function(idx, item) {
					var div1 = $("<div class='clsdiv'></div>");
					var div2 = $("<div class='iCard border1 p-2 rounded bg-white shadow margin_div'></div>");
					var a_img = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"&isClosed=1'>");
					var img_std = $("<img src='images/std_img/upload/"+item.std_image+"' alt=''class='img-fluid rounded clsimg'>");
					$(a_img).append(img_std);
					var div3 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
					var h2 = $("<h2 class='fs16 text-dark font400 mb-5 text-capitalize'></h2>");
					var a_title = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"&isClosed=1'>");
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
			url : "watingStd?cust_no="+cust_no,
			success : function(data) {
				var arr = eval("(" + data + ")");
				$.each(arr,function(idx, item) {
					var div1 = $("<div class='clsdiv'></div>");
					var div2 = $("<div class='iCard border1 p-2 rounded bg-white shadow margin_div'></div>");
					var a_img = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"&isClosed=-1'>");
					var img_std = $("<img src='images/std_img/upload/"+item.std_image+"' alt=''class='img-fluid rounded clsimg'>");
					$(a_img).append(img_std);
					var div3 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
					var h2 = $("<h2 class='fs16 text-dark font400 mb-5 text-capitalize'></h2>");
					var a_title = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"&isClosed=-1'>");
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
			url : "myStd?cust_no="+cust_no,
			success : function(data) {
				var arr = eval("(" + data + ")");
				$.each(arr,function(idx, item) {
					var div1 = $("<div class='clsdiv'></div>");
					var div2 = $("<div class='iCard border1 p-2 rounded bg-white shadow margin_div'></div>");
					var a_img = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"&isClosed=-1'>");
					var img_std = $("<img src='images/std_img/upload/"+item.std_image+"' alt=''class='img-fluid rounded clsimg'>");
					$(a_img).append(img_std);
					var div3 = $("<div class='iCard-content p-1 pt-15 pb-15'></div>");
					var h2 = $("<h2 class='fs16 text-dark font400 mb-5 text-capitalize'></h2>");
					var a_title = $("<a href='detailStd.do?std_no="+Number(item.std_no)+"&isClosed=-1'>");
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
		<div class="rounded bg-white"  style="height:190px!important; ;width:62%; margin-left: 20%; background-image: url('images/cbp.jpg');background-repeat: no-repeat!important; background-size: 100%!important;">
			<div style="width: 400px; display: inline; height: 250px !important;" >
			<br>
 			<div style="position: relative; top: 20px; left: 80px;">
				<img src="cust_img/${loginVo.cust_img }" width="120" height="120px;!important" alt="" class="rounded-circle" style="display: inline;">
				<span style="width: 200px;margin: 0px!important;" ><font style="font-size: 25px; font-weight: bold;">　${loginVo.nick_name }님 환영합니다!</font></span>
			</div>
			<div class="portlet-body" align="right"
				style="padding-right: 8%; padding-top: 2.5%;padding-bottom: 2.5%; position: relative; top: -100px;">
				
				<h5>스터디 모임 리더로 시작하기</h5>
				<a href="insertStd" class="btn btn-outline-warning mb5">스투더 개설하기</a>
			</div>
			
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


						<!-- 카페내용 탭 -->
						<input type="hidden" id="cust_no" value="${loginVo.no}">
						
				        <div class="col-lg-12 mb-30 in" style="margin-top: 10px;" id="page_cafe">
				            <div class="cafe_content">
				                <!--nav tabs-->
				                <ul id="cafe_tab_nav" class="nav nav-pills" role="tablist">
				                    <li role="none" class="nav-item" style="width: 20%;">
				                        <a class="nav-link active show" id="_all" href="#all" aria-controls="all" role="tab" data-toggle="tab">
				                            	룸 전체
				                        </a>
				                    </li>
				                
				                    <li role="none" class="nav-item" style="width: 20%;">
				                        <a class="nav-link" id="_reserved" href="#reserved" aria-controls="reserved" role="tab" data-toggle="tab">
				                            룸 예약                         
				                        </a>
				                    </li>
				                    <li role="none" class="nav-item" style="width: 20%;">
				                        <a class="nav-link" id="_used" href="#used" aria-controls="used" role="tab" data-toggle="tab">
				                           룸 이용완료                       
				                        </a>
				                    </li>
				                    <li class="nav-item" role="none" style="width: 20%;"></li>
				                    <!--공백-->
				                    <li role="none" class="nav-item" style="width: 20%;">
				                        <a class="nav-link" id="_pass" href="#pass" aria-controls="used" role="tab" data-toggle="tab">
				                          개인 이용권                       
				                        </a>
				                    </li>                  
				                </ul>
				                <!--Tab panes-->
				                <div class="tab-content pt-3">
				                    <div role="tabpanel" class="tab-pane show active" id="all">
					                    <div>
					                    <div id="cafe_all"></div>
					                    </div>				                        
				                    </div>
				                    <div role="tabpanel" class="tab-pane" id="reserved">                        
				                        <div>
				                        <div id="cafe_reserved"></div>
				                        </div>
				                    </div>
				                    <div role="tabpanel" class="tab-pane" id="used">                        
				                       <div>
				                        <div id="cafe_used"></div>
				                        </div>
				                    </div>
				                    <div role="tabpanel" class="tab-pane" id="pass">                        
				                       <div>
				                        <div id="cafe_pass"></div>
				                        </div>
				                    </div>
				                </div>
				              </div>
				        </div>



						<!-- 카페내용 탭 -->
						</div>
						<div role="tabpanel" class="tab-pane" id="tb2">
							<p class="mb-0 text-muted">
								<!--스투더 진행사항탭-->
							<div class="col-lg-15 mb-30">
								<div>
									<!-- Nav tabs -->
									<ul class="nav nav-pills" role="tablist"
										style="text-align: center; margin-top: 15px; margin-bottom: 7px;">
										<li role="presentation" class="nav-item" style="width: 20%;"><a id="all_std" 
											class="nav-link active show" href="#home"
											aria-controls="home" role="tab" data-toggle="tab">전체 </a></li>
										<li role="presentation" class="nav-item" style="width: 20%;"><a id="wtg_std" 
											class="nav-link" href="#profile" aria-controls="profile"
											role="tab" data-toggle="tab">승인대기중 </a></li>
										<li role="presentation" class="nav-item" style="width: 20%;"><a id="ing_std" 
											class="nav-link" href="#messages" aria-controls="messages"
											role="tab" data-toggle="tab">진행중 </a></li>
										<li role="presentation" class="nav-item" style="width: 20%;"><a id="end_std"
											class="nav-link" href="#endstuder" aria-controls="end_std"
											role="tab" data-toggle="tab">이용완료 </a></li>
										<li role="presentation" class="nav-item" style="width: 20%;"><a id="my_std" 
											class="nav-link" href="#mystuder" aria-controls="settings"
											role="tab" data-toggle="tab">나의스투더 </a></li>
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
										<div role="tabpanel" class="tab-pane" id="endstuder">
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
                        <h4><i class="fa fa-phone"></i> 010-4656-0811</h4>
                        <h4><i class="fa fa-envelope"></i> zozo.park@kakao.com</h4>
                        <p>&copy; Copyright 2019. Team BoB</p>
                    </div>
                </div>
            </div>
        </footer><!--/footer-->
</html>