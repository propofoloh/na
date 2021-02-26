<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
<title>Home</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<br />
 <script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		$("#registerBtn").on("click", function(){
			location.href="member/Agreement";
		})
		$("#memberDeleteBtn").on("click", function(){
			location.href="member/memberDeleteView";
		})
		
		
		$("#memberUpdateBtn").on("click", function(){
			location.href="member/memberUpdateView";
		})
		
	})
</script>
<!--
<body>

	<nav class="navbar navbar-default">

		<div class="navbar-header">

			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">

				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>

			</button>

		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">

			<ul class="nav navbar-nav">

				<li><a href="/board/list">게시판</a></li>
				<li><a href="/board/list2">게시판2</a></li>

			</ul>

			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>

					<ul class="dropdown-menu">

						<li class="active"><a href="login.jsp">로그인</a></li>

					</ul></li>
			</ul>

		</div>

	</nav>

	<div class="container">

		<div class="col-lg-4"></div>

		<div class="col-lg-4">

			<div class="jumbotron" styles="padding-top:20px;">

				<form method="post" action="/member/login">

					<h3 style="text-align: center;">로그인화면</h3>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="아이디"
							name="userID" maxlength="20">

					</div>

					<div class="form-group">

						<input type="password" class="form-control" placeholder="비밀번호"
							name="userPassword" maxlength="20">

					</div>
					<input style="width: 100%" type="submit" class="btn btn-primary form-control"value="로그인">	

				</form>
				<div style=" width: 230px; float: left">
					<input id="registerBtn" style="width: 49%" type="submit" class="btn btn-primary form-control" value="회원가입"> 
					<input style="width: 49%" type="button" class="btn btn-primary form-control" value="ID/PW 찾기">
				</div>
			</div>

		</div>

	</div>

	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>

	<script src=js/bootstrap.js></script>

</body>

</html>
 -->
<!-- ab -->
<body>
	<div class="container">

		<div class="col-lg-4"></div>

		<div class="col-lg-4">

			<div class="jumbotron" styles="padding-top:20px;">
			
	<form name='homeForm' method="post" action="/member/login">
		<c:if test="${member == null}">
			
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							id="userId" name="userId" maxlength="20">
					</div>
					
			<div>
				<label for="userPass"></label>
				<input type="password" class="form-control" placeholder="비밀번호" id="userPass" name="userPass" maxlength="20">
			</div>
			
			<div>
				<input style="width: 100%; margin: 10px;" type="submit" class="btn btn-primary form-control"value="로그인">
			</div>
		</c:if>
		<c:if test="${member != null }">
			<div>
				<p>${member.userId}님 환영 합니다.</p>
				<button id="memberUpdateBtn" type="button">회원정보수정</button>
				<button id="logoutBtn" type="button">로그아웃</button>
				<button id="memberDeleteBtn" type="button">회원탈퇴</button>
			</div>
		</c:if>
		
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
	
	<div style=" width: 230px; float: left">
			<input id="registerBtn" style="width: 49%" type="submit" class="btn btn-primary form-control" value="회원가입"> 
			<input style="width: 49%" type="button" class="btn btn-primary form-control" value="ID/PW 찾기">
	</div>
		</div>
	</div>
</div>

</body> 
</html>