<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	border: 1px solid grey;
	margin: 75px;
	text-align: center;
}

#line {
	border-bottom: 0px;
	text-align: center;
	margin: 0px;
}

span {
	display: block;
	background-color: #d3d3d3;
	background-repeat: repeat;
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>

	<h2>이벤트 목록</h2>
	<hr>

	<div>
		<a href="getEvt.jsp" ><img id="img" src="evt.PNG"
			width="500" height="170"></a>
		<hr id="line">
		<span><strong>이벤트 제목1</strong></span>
	</div>
	<div>
		<a href="getEvt.jsp"><img id="img" src="evt.PNG"
			width="500" height="170"></a>
		<hr id="line">
		<span><strong>이벤트 제목2</strong></span>
	</div>
	<div>
		<a href="getEvt.jsp" ><img id="img" src="evt.PNG"
			width="500" height="170"></a>
		<hr id="line">
		<span><strong>이벤트 제목3</strong></span>
	</div>
	<div>
		<a href="getEvt.jsp" ><img id="img" src="evt.PNG"
			width="500" height="170"></a>
		<hr id="line">
		<span><strong>이벤트 제목4</strong></span>
	</div>
	<div>
		<a href="getEvt.jsp"><img id="img" src="evt.PNG"
			width="500" height="170"></a>
		<hr id="line">
		<span><strong>이벤트 제목5</strong></span>
	</div>

<!-- *페이징처리, div 반복문처리
 *a태그 말고 다른 방법으로 링크연결
 -->

</body>
</html>