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



	<!-- Child 부분~~-->
	<form action="gamelist" method="post">
		<br> <b><font size="5" color="gray">방 만들기</font></b> <br> <br>
		게임이름: <input type="text" name="name" size="10"><br /> 
		게임상태: <input type="text" name="statusCode" size="10"><br /> 
			최대인원: <input type="text" name="maxPersonNum" size="10"><br /> 
			게임종류: <input type="text" name="kind" size="10"><br /> 
			게임 팀 수: <input type="text" name="maxTeamNum" size="10"><br /> 
			게임날짜: <input type="text" name="gameDate" size="10"><br /> 
			게임시간: <input type="text" name="${duration}" size="10"><br /> <br> <br>
		<input type="hidden" name="${duration}" value="${duration}">
		<button type="submit">만들기!</button>
		<!-- ~~ Child 부분 -->
	</form>

	</div>

	</div>
</body>


<!-- Child -->
<!-- <script type="text/javascript">
	function setParentText() {
		opener.document.getElementById("pInput").value = document
				.getElementById("cInput").value
		opener.document.getElementById("pInput2").value = document
				.getElementById("cInput2").value
		opener.document.getElementById("pInput3").value = document
				.getElementById("cInput3").value
		opener.document.getElementById("pInput4").value = document
				.getElementById("cInput4").value

	}
</script> -->
<!-- Child -->








<style>

/* Modal (background) */
/*      .modal {
            display: none; /* Hidden by default */
position


:


fixed


; /* Stay in place */
z-index
:
1; /* Sit on top */


left


:


0;
top


:


0;
width


:


100%; /* Full width */
height


:


100%; /* Full height */
overflow


:


auto


; /* Enable scroll if needed */
background-color


:


rgb


(0
,
0,0); /* Fallback color */
background-color


:


rgba


(0
,
0,0,0
.4


); /* Black w/ opacity */
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

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
<script src="Templating.js"></script>


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