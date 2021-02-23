<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
        $(document).ready(function(){
            
 			$("#registerAgreeBtn").click(function (){
 				
  				if(checkForm()){
 					alert("동의 성공")
  					location.href="register";
	            	
 				}else{
	            	return false;
 				}
             });
            
//             $("#group").click(function (){
            	
//             	if(checkForm()){
// 	            	$("#GRP_SE_CD").val("02");
// 	            	$("#postform").submit();
//             	}else{
// 	            	return false;
//             	}
//             });
            
//             $("#family").click(function (){
            	
//             	if(checkForm()){
// 	            	$("#GRP_SE_CD").val("03");
// 	            	$("#postform").submit();
//             	}else{
//             		return false;
//            		}
//         	});
            
        });
        
		function form_submit(grpSeCd){
			
			var f = document.postform;
			
			if(checkForm()){
				$("#GRP_SE_CD").val(grpSeCd);
				f.submit();
			}else{
        		return false;
       		}
		} 		
		
		function checkForm() {
			
			var f = document.postform;
			var error_msg = [];
			
			if ($('input[name="u_agree"]').is(':checked') == false) {
				alert("개인정보 취급방침에 동의해주십시오.");
				$('#u_agree').focus();
				return false;
			}
			
			return true;
		}

</script>
<html>
<body>
	<div id="content" style="margin-top: 200px; margin-left: 30%; margin-right: 20%">

		<h4 class="h4Tit mb-3">개인정보 수집동의</h4>
			<div class="form-control col-sm-5" style="width: 70%; height: 40%">
				<p>
					<strong>개인정보의 수집, 이용 목적</strong>
				</p>
				<p>평가관리 시스템은 별도의 개인정보 입력 없이도 대부분의 콘텐츠에 자유롭게 접근할 수 있으나, 승선신고 서비스를
					이용하고자 할 경우 별도의 정보입력절차를 거쳐야 합니다.</p>
				<p class="mt15">
					<strong>수집하려는 개인정보의 항목</strong>
				</p>
				<p>
					평가관리 시스템 서비스 제공을 위해 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.<br />(성명,
					생년월일, 성별, 휴대전화번호)
				</p>
				<p class="mt15">
					<strong>개인정보의 보유 및 이용 기간</strong>
				</p>
				<p class="bold_text">수집된 개인정보는 3개월(90일)까지 보유하며 그 이후에는 바로 삭제
					처리됩니다.</p>
				<p class="mt15">
					<strong>개인정보 동의 거부에 따른 불이익</strong>
				</p>
				<p>평가관리시스템 이용자는 개인정보 수집 및 이용에 대한 동의를 거부할 권리가 있으나, 동의 거부 시 승선신고
					서비스를 이용할 수 없습니다.</p>
			</div>
		<div class="form-group mb20">
			<div class="col-xs-12">
				<label for="u_agree" class="checkbox-inline" style="margin-bottom : 20px; margin-top : 20px; width: 100%;">
					<input type="checkbox" id="u_agree" name="u_agree" value="Y"
					style="zoom: 1.5; vertical-align: middle; position: relative;" />&nbsp;<strong
					class="mt15" style="font-size: 1.2375rem; vertical-align: middle;">개인정보
						취급방침에 동의합니다.</strong>
				</label>
			</div>
		</div>
		
		
		<div style="margin-top : 100px;">
			<input id="registerCancelBtn" style="  float:letf;  width: 35%; height: 5%;" type="button" class="btn" value="취소">
			<input id="registerAgreeBtn" style=" width: 35%; height: 5%;" type="button" class="btn btn-primary form-control" value="확인">
		</div>
	</div>
</body>
</html>
