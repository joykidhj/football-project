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
			<div id="div_con5">방 생성하기 </div>
			<!-- 버튼 눌렀을때 방 생성하는 페이지 만들기 -->
			
			
			
			<div id="div_con5">참가하기</div>
			<!-- 버튼 눌렀을때 원하는 방 참가하는 기능 구현하기 -->
		</div>
<!-- <<<<<<< HEAD -->





<!-- =======
>>>>>>> dev -->

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
<!-- <<<<<<< HEAD -->
				<div id="div_con2">게임번호 #${gameInfo.id}								
					 최대인원# ${gameInfo.maxPersonNum}<br />
					  게임종류# ${gameInfo.kind}
					   게임 팀 수 # ${gameInfo.maxTeamNum}<br />
					  게임상태# ${gameInfo.statusCode}<br />
					  게임날짜# ${gameInfo.gameDate}<br />
					 게임시간 #${gameInfo.description }
					 게임이름# ${gameInfo.name }
					  
					  
					  
<!-- >>>>>>> dev -->
  

				</div>
			</c:forEach> 
		</div>
		 <br>
    <b><font size="5" color="gray">Create Room</font></b>
    <br><br>
    <input type="button" value="방 만들기" onclick="openChild()"><br>
        
        게임 이름:<%=request.getParameter("name") %></br>
        게임 상태:<%=request.getParameter("statusCode") %></br>
        최대 인원 :<%=request.getParameter("maxPersonNum") %></br>
        게임 종류:<%=request.getParameter("kind") %></br>
        게임 팀 수:<%=request.getParameter("maxTeamNum") %></br>
        날짜 : <%=request.getParameter("gameDate") %></br>
        게임 시간: <%=request.getParameter("duration") %>

       
		
		
		
		<div id="div_menu3" class="vertical-menu">
			<div id="div_menu4">
				<h1>Location</h1>
				<div id="div_con6">구장사진</div>
				<div id="div_con2">구장정보</div>
				<div id="div_con2">오시는 길</div>
				<img src="/images/ground.jpg" alt="">
			</div>
		</div>
<!-- <<<<<<< HEAD
		contents here! -->
	</div>
</body>


  


<!-- Parent -->
 <script type="text/javascript">
    
        var openWin;
    
        function openChild()
        {
            // window.name = "부모창 이름"; 
            window.name = "parentForm";
            // window.open("open할 window", "자식창 이름", "팝업창 옵션");
            openWin = window.open("createRoom",
                    "childForm", "width=570, height=350, resizable = no, scrollbars = no");    
        }
 
   </script>
   
<!-- Parent -->





<style>
#div_menu {
	width: 20%;
	height: 800px;
	float: left;
	text-align: reft;
	background-color: #white;
	margin: 5px;
}

#div_menu2 {
	width: 58%;
	height: 800px;
	float: left;
	text-align: center;
	background-color: #white;
	margin: 5px;
	border: 1px solid red;
}

#div_menu3 {
	width: 18%;
	height: 800px;
	float: left;
	text-align: reft;
	background-color: #white;
	margin: 5px;
}

#div_menu4 {
	width: 110%;
	height: 800px;
	float: center;
	text-align: center;
	background-color: #white;
	margin: 5px;
	border: 1px solid red;
}

#div_con {
	width: 100%;
	height: 100px;
	text-align: left;
	background-color: #FFFFCC;
	margin: 5px;
}

#div_con2 {
	width: 40%;
	height: 50px;
	display: inline-block;
	text-align: center;
	background-color: #CCFFCC;
	margin: 5px 5px 5px 5px;
	border: 1px solid gold;
}

#div_con3 {
	width: 20%;
	height: 10px;
	display: inline-block;
	text-align: center;
	background-color: #CCFFCC;
	margin: 5px 5px 5px 5px;
	border: 1px solid gold;
}

#div_con4 {
	width: 100%;
	height: 200px;
	text-align: left;
	background-color: #45235F;
	margin: 5px;
}

#div_con5 {
	position: relative;
	left: 1450px;
	top: 60px;
	width: 10%;
	height: 30px;
	display: inline-block;
	text-align: center;
	background-color: #711553;
	margin: 5px 5px 5px 5px;
	border: 1px solid blue;
	width: 10%;
	left: "300px";
}

#div_con6 {
	width: 90%;
	height: 200px;
	text-align: left;
	background-color: #45235F;
	margin: 5px;
}

#div_con2:hover {
	background-color: white;
}

#div_con5:hover {
	background-color: #FF24B8;
}

#divIma {
	text-align: center;
}




   /* Modal (background) */
   /*      .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }







</style>
<script src="Templating.js"></script>

	</div>
</body>
<script src="/resources/js/Templating.js"></script>
<!-- >>>>>>> dev -->
<!-- add script here! -->
<script>
	window.onload = function() {
		initPage();
	};
</script>
</html>