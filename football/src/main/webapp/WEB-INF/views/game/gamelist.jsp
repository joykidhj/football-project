<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/gamelist.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
<!-- add css here! -->
</head>
<body>
	<div class="container_body">
		<div id="div_con" class="vertical-menu">
			<!-- 헤더부분 -->
			<select name="Location">
				<option value="">Location</option>
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="인천">인천</option>
			</select> <select name="Team">
				<option value="">Team</option>
				<option value="asnal">asnal</option>
				<option value="tot">tot</option>
				<option value="MU">MU</option>
			</select>
			<button type="button" class="btn">Calender</button>
			<!--Calender버튼 눌렀을 때 승주형의 달력페이지로 가는 기능 구현하기 -->
		</div>
		<div id="div_con4" class="vertical-menu">
			<H1>Head-to-Head</H1>
			<div id="div_con5">방 만들기</div>
			<!-- 버튼 눌렀을때 방 생성하는 페이지 만들기 -->
			<div id="div_con5">참가하기</div>
			<!-- 버튼 눌렀을때 원하는 방 참가하는 기능 구현하기 -->
		</div>
		<div id="div_menu" class="vertical-menu">
			<h1>TeamInfo</h1>
			<div id="div_con2">
				팀이름</br>${gamelist.teamInfo.name }</div>
			<div id="div_con2">
				로고</br>${gamelist.teamInfo.logoPath }</div>
			<div id="div_con2">
				정원</br>${gamelist.teamInfo.maxNum }</div>
			<div id="div_con2">
				현원</br>${gamelist.teamInfo.presentNum  }</div>
			<div id="div_con2">
				유니폼 색깔</br>${gamelist.teamInfo.uniformColorCode}</div>
			<div id="div_con2">
				전력</br>${gamelist.teamInfo.strengthCode }</div>
			<div id="div_con2">
				활동지역</br>${gamelist.teamInfo.location }</div>
			<div id="div_con2">
				포메이션</br>${gamelist.teamInfo.formation }</div>
		</div>
		<div id="div_menu2">
			<h1>Recent Meetings</h1>
			<c:forEach items="${gamelist.gameInfos }" var="gameInfo">
				<div id="div_con2">
					게임번호 #${gameInfo.id}<br /> ${gameInfo.description}
				</div>
			</c:forEach> 
		</div>
		<div id="div_menu3" class="vertical-menu">
			<div id="div_menu4">
				<h1>Location</h1>
				<div id="div_con6">구장사진</div>
				<div id="div_con2">구장정보</div>
				<div id="div_con2">오시는 길</div>
				<div id="div_con2">test3</div>
				<div id="div_con2">test4</div>
				<img src="/images/ground.jpg" alt="">
			</div>
		</div>
	</div>
</body>
<script src="/resources/js/Templating.js"></script>
<!-- add script here! -->
<script>
	window.onload = function() {
		initPage();
	};
</script>
</html>