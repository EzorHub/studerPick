<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h2 {
	text-align: left;
}

table, td {
	text-align: left;
	border: 1px solid white;
	border-collapse: collapse;
	
	margin-left: 30%;
	margin-right: 30%;
	font-size: 10pt;
	font-weight: bold;
	position: relative; 
}

* {
	text-align: center;
	margin: 2px;
}

.title_box {
	margin-left: 270px;
	margin-right: 270px;
	border: 1px solid white;
	font-weight: bold;
	color: grey;
	font-size: 11.5pt;
	padding: 3px;
}

.notice_box, .cafe_info_box, .policy_box {
	margin: 10px;
}

#img {
	width: 250px;
	height: 250px;
	border: 1px solid black;
}

input {
	margin: 1px;
	text-align: left;
	border: 1px solid white;
}


input.img_btn {
	background: url("add.png") no-repeat;
	border: none;
	width: 23px;
	height: 23px;
	cursor: pointer; 
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript">
	$(function () {
		
		var tr;		
		var td,td1,td2;	
		var inputs,inputs1,inputs2;
	
		var cnt =0;											/*추가로 구현해야 할 점: 추가되는 이용권, 룸, 룸시간 갯수(혹은 비활성화, alert 등) 제한 기능
																													삭제  기능*/
		$("#addPass").click(function () {
			
			//--------------------------- 추가 구현 고민중/혹은 toggle을 해서 remove기능 추가?
			cnt++;
			if(cnt==3){
				$(this).stop();				
				alert("이제 그만혀");
			}
			//---------------------------
			tr = $("<tr></tr>");
			td1 = $("<td></td>");
			td2 = $("<td></td>");
			
			var pass_td_inner_1 = "이용권명&nbsp;&nbsp;";			
			var pass_attr_1 = "ex) @시간이용권";			
			inputs1 = document.createElement("input");	
			$(inputs1).attr({
				type:"text",
				placeholder:pass_attr_1
			});
			
			td1.html(pass_td_inner_1);
			td1.append(inputs1);
			
			var pass_td_inner_2 = "이용권 가격&nbsp;&nbsp;";			
			var pass_attr_2 = "1700";			
			inputs2 = document.createElement("input");	
			$(inputs2).attr({
				type:"text",
				placeholder:pass_attr_2
			});
			
			td2.html(pass_td_inner_2);
			td2.append(inputs2);
			//-----------------------------------
			//서서히 보이는 효과 추가!
			$(tr).fadeIn("slow").append(td1, td2);		
				
			$(".tb2-1").fadeIn("slow").append(tr);
			//-----------------------------------
			
		});
	
		$("#addRoom").click(function () {
			tr = $("<tr></tr>");
			td = $("<td></td>");
			//td에 들어가는 내용--------------------
			var room_td_inner = "룸&nbsp;명 &nbsp;&nbsp;&nbsp;";			
			var room_attr = "ex) Room 4";			
	
			inputs = document.createElement("input");	
			$(inputs).attr({
				type:"text",
				placeholder:room_attr
			});
			//-------------------------------
			td.html(room_td_inner);
			td.append(inputs);
			//-----------------------------------
			//서서히 보이는 효과 추가!
			$(tr).fadeIn("slow").append(td);		
			$(".tb2-2").fadeIn("slow").append(tr);
			//-----------------------------------
			
			
		});


		$("#addRoomTime").click(function () {
			tr = $("<tr></tr>");
			td1 = $("<td></td>");
			td2 = $("<td></td>");
			
			var roomTime_td_inner_1 = "룸시간 설정&nbsp;&nbsp;";			
			var roomTime_attr_1 = "09:00 ~ 10:00";			
			inputs1 = document.createElement("input");	
			$(inputs1).attr({
				type:"text",
				placeholder:roomTime_attr_1
			});
			
			td1.html(roomTime_td_inner_1);
			td1.append(inputs1);
			
			var roomTime_td_inner_2 = "시간당 금액&nbsp;&nbsp;";			
			var roomTime_attr_2 = "1700";			
			inputs2 = document.createElement("input");	
			$(inputs2).attr({
				type:"text",
				placeholder:roomTime_attr_2
			});
			
			td2.html(roomTime_td_inner_2);
			td2.append(inputs2);
			//-----------------------------------
			//서서히 보이는 효과 추가!
			$(tr).fadeIn("slow").append(td1, td2);		
				
			$(".tb2-3").fadeIn("slow").append(tr);
			//-----------------------------------
		});
		
		//<등록> 버튼 이벤트 
		$("#btnInsert").click(function(){
			var check = confirm("신규 카페가 추가되었습니다.");
			if(check == true){
				$(location).attr("href", "listCafe.jsp"); //카페목록으로 이동/혹은 사마페로 이동--------------------통합시 처리요망
			}
			
			
		}); 
		//<취소> 버튼 이벤트
		$("#btnCls").click(function(){
		
			var check = confirm("카페 등록을 취소하시겠습니까?");
			if(check == true){
				$(location).attr("href", "listCafe.jsp"); //카페목록으로 이동/혹은 사마페로 이동--------------------통합시 처리요망
			}
					
		}); 
		
		
	});
</script>
</head>
<body>



	<h2>신규 카페 등록</h2>
	<hr>


	<br>
	<table width="50%" >
		<tr>
			<td width="-30%" rowspan="7"><div id="img">
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br> <input type="image" value="대표이미지">
					<!-- 버튼나오는거 보기싫어서 file 임시대체함 -->
				</div></td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" placeholder="카페명"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" placeholder="카페 한줄 소개">
			</td>
		</tr>
		<tr>
			<td width="20%">위치</td>
			<td width="*"><input type="text" placeholder="ex) 서울시 마포구 백범로"></td>
		</tr>
		<tr>
			<td width="20%">전화번호</td>
			<td width="*"><input type="text" placeholder="ex) 02-2644-2655"></td>
		</tr>
		<tr>
			<td width="20%">운영시간</td>
			<td width="*"><input type="text" placeholder="ex) 09:00 ~ 24:00"></td>
		</tr>
		<tr>
			<td width="20%">좌석수</td>
			<td width="*"><input type="text" placeholder="ex) 124석"></td>
		</tr>
	</table>
	<br>
	<table class="tb2-1" width="50%">
		<tr>
			<td>이용권명&nbsp;&nbsp;<input type="text" placeholder="ex) @시간이용권">
			</td>
			<td>이용권 가격&nbsp;&nbsp;<input type="text" placeholder="1700"></td>
			<td width="1%"><input type="button" class="img_btn" id="addPass"></td>			
		</tr>
		<!-- 버튼 눌리면 동적 처리 -->

	</table>
	<br>
	<table class="tb2-2" width="50%">
		<tr id="firstTr">
			<td width="80%">룸&nbsp;명 &nbsp;&nbsp;&nbsp;<input type="text" placeholder="ex) Room 4">
			</td>
			
			<td width="1%"><input type="button" class="img_btn" id="addRoom"></td>			
		</tr>
		<!-- 버튼 눌리면 동적 처리 -->
		
	</table>
	<br>
	<table class="tb2-3" width="50%">
		<tr>
			<td>룸시간 설정&nbsp;&nbsp;<input type="text" placeholder="09:00 ~ 10:00">
			</td>
			<td>시간당 금액&nbsp;&nbsp;<input type="text" placeholder="1700"></td>
			<td width="1%"><input type="button" class="img_btn" id="addRoomTime"></td>			
		</tr>
		<!-- 버튼 눌리면 동적 처리 -->
		
	</table>
	<br>
	<div class="title_box">카페설명</div>
	<div class="cafe_info_box">
		<textarea id="txt" rows="3" cols="150" placeholder="이용관련공지"></textarea>
	</div>

	<div class="cafe_info_box">
		<textarea id="txt" rows="5" cols="150" placeholder="카페시설이미지"></textarea>
	</div>

	<div class="cafe_info_box">
		<textarea id="txt" rows="4" cols="150" placeholder="업체정보"></textarea>
	</div>



	<div class="title_box">취소/환불규정</div>

	<div class="notice_box">
		<textarea id="txt" rows="5" cols="150" placeholder="상품정보 제공고시"></textarea>
	</div>

	<div class="policy_box">
		<textarea id="txt" rows="5" cols="150" >	1. SD인사이트 모든 강좌는 강좌 시작일 5일 이전까지 취소 시에는 전액 환불이 가능합니다.
            단, 강좌 시작일 3일전까지 취소 시 50% 환불이 가능하며,그 이후와 강좌 당일 취소 시 환불 불가 (단, 지인에게 양도 가능)합니다.

            예시) 강좌 시작일이 2015년 3월 6일 (금) 일 경우,
            3월 1일 이전까지 취소 신청시 : 전액 환불 (결제수단에 따라 취소 수수료,부가세 발생가능)
            3월 3일까지 취소 신청시 : 50% 환불 (결제수단 관계없이 취소 수수료, 부가세 SD인사이트가 부담)
            3월 4일~3월 6일 강좌  당일 취소 신청 시 : 환불 불가 (지인에게 양도 가능)
            
            2. 결제 수단에 따라 취소 수수료와 부가세 발생 
            (SD인사이트 ‘결제수단별 취소 수수료, 부가세 부과 안내’ 참고)
            강좌 시작일 5일 이전까지 취소 시 전액 환불이 가능하지만 이 경우에도
            실시간 계좌이체와 가상계좌를 통해 결제하신 경우는 PG사 매입기준에 따라
            전액 환불금에서 취소수수료와 10% 부가세를 제외하고 환불해 드립니다.  
            신용카드와 무통장 입금은 취소 시 취소수수료와 10% 부가세가 발생하지 않습니다. 
            강좌 시작일 3일 전까지 취소 신청하여 50% 환불 처리 하는 경우,
            결제 수단에 관계없이 취소 수수료와 부가세는 SD인사이트가부담합니다. 
            3. 주최측 사정으로 인한 강좌 폐강 혹은 강좌 취소 시에는 100% 환불하여 드립니다. 		
		</textarea>
	</div>
	<br>


	<button id="btnCls" >취소</button>
	<button id="btnInsert">등록</button>

</body>
</html>