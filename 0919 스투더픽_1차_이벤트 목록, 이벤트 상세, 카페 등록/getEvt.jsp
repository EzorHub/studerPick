<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, tr, td{	
	text-align: center;
	border: 1px solid black;
	border-collapse: collapse;	
}
button, div {
	text-align: center;
}

#title, #duration, #contents{
background-color: #d3d3d3;
}

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function () {
	$("#btnCoupon").click(function(){
		var check = confirm("다운로드가 완료되었습니다.");
		if(check == true){
			$(location).attr("href", "listEvt.jsp");
		}
		
		/*
		else{
		 	alert("이전 페이지로 돌아갑니다.");
			history.back(); 새창띄워서 하는거 아니면 필요없음, listEvt, target
		}
		*/
		
	}); 
});

</script>
</head>
<body>
	<h2>이벤트 상세</h2>
	<hr>

	<table width="70%"
		style="margin-left: auto; margin-right: auto;">
		<tr>
			<td width="20%" id="title"><strong>제목</strong></td>
			<td colspan="7" width="80%">Promotion</td>
		</tr>
		<tr>
			<td width="20%" id="duration"><strong>이벤트 기간</strong></td>
			<td colspan="7" width="80%">2019.05.20~2019.11.20</td>
		</tr>
		<tr>
			<td rowspan="7" width="20%" height="90%" id="contents">
			<strong>내용</strong></td>
			<td rowspan="7" colspan="7"
			width="90%" height="90%"><br> <br> <br>Content<br> <br> <br>
				<br><br><br>
				<button id="btnCoupon" style="margin-left: auto; margin-right: auto;">
					Coupon Download</button> <br> <br> 
			</td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div><button type="button" onclick="location.href='listEvt.jsp'">목록</button></div>

</body>
</html>