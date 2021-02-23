<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>회원가입</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				location.href = "/";
			})
			
			$("#submit").on("click", function(){
				if($("#userId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("성명을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
				var idChkVal = $("#idChk").val();
				if(idChkVal == "N"){
					alert("중복확인 버튼을 눌러주세요.");
				}else if(idChkVal == "Y"){
					$("#regForm").submit();
				}
			});
		})
		
		function fn_idChk(){
			$.ajax({
				url : "/member/idChk",
				type : "post",
				dataType : "json",
				data : {"userId" : $("#userId").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 아이디입니다.");
					}else if(data == 0){
						$("#idChk").attr("value", "Y");
						alert("사용가능한 아이디입니다.");
					}
				}
			})
		}
	</script>
	<body>

	
	
	<div class="content" style="margin-top : 200px; margin-left: 30%; margin-right: 300px; ">
		<section id="container">
			<form action="/member/register" method="post" id="regForm" >
				<div class="form-group ">
					<label class="control-label" for="userId">아이디</label><br>
					<input class="form-control" style="width : 45%; height : 6%; float:left;"  type="text" id="userId" name="userId" />
					<button class="btn btn-primary form-control" style=" margin-left: 10px; width :10%; height: 6%" type="button" id="idChk" onclick="fn_idChk();" value="중복확인">중복확인</button>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">비밀번호</label>
					<input class="form-control"  style="width : 45%; height : 6%;" type="password" id="userPass" name="userPass" />
				</div>
				
				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">비밀번호 재확인</label>
					<input class="form-control" style="width : 45%; height : 6%;" type="password" id="userPasscheck" name="userPasscheck" />
				</div>
				
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">이름</label>
					<input class="form-control" style="width : 45%; height : 6%;" type="text" id="userName" name="userName" />
				</div>
				
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">생년월일</label><br>
					<input class="form-control" style="margin-right : 5px; float:left; width : 15%; height : 6%;" type="text" id="year" name="year" placeholder="년(4자리)" />
					<select class="form-control" style="margin-right : 5px; float:left; width : 15%; height : 6%;" type="text" id="month" name="month">
						<option value="year"> 1월</option>
						<option value="year"> 2월</option>
						<option value="year"> 3월</option>
						<option value="year"> 4월</option>
						<option value="year"> 5월</option>
						<option value="year"> 6월</option>
						<option value="year"> 7월</option>
						<option value="year"> 8월</option>
						<option value="year"> 9월</option>
						<option value="year"> 10월</option>
						<option value="year"> 11월</option>
						<option value="year"> 12월</option></select>
					<input class="form-control" style=" width : 14%; height : 6%;" type="text" id="day" name="day" placeholder="일" />
				</div>

				<div class="form-group has-feedback">
					<label class="control-label" for="userName">휴대폰 번호</label>
					<input class="form-control" style="width : 45%; height : 6%;" type="text" id="userPhone" name="userPhone" placeholder="전화번호 입력" />
				</div>
				
			</form>
				<div class="form-group has-feedback">
					<button class="btn btn-success" style="width : 45%; height : 6%; type="button" id="submit">회원가입</button>
				</div>
		</section>
		</div>
	</body>
	
</html>