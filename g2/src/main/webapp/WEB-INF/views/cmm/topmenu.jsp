<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <link rel="stylesheet" href="../../resource/css/reset.css">
    <link rel="stylesheet" href="../../resource/css/common.css">
    <link rel="stylesheet" href="../../resource/css/sub.css">
    <link rel="stylesheet" href="../../resource/css/board.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="insideArea">
                <h1 class="logo">
                	<c:choose>
                		<c:when test ="${member.user_auth == null}">
                   			<a href="/"><img src="../../resource/image/logo.jpg" alt="충북대학교"></a>
                    	</c:when>
                    	<c:when test ="${member.user_auth != null}">
                    		<a href="/bam/businessAnnouncementList"><img src="../../resource/image/logo.jpg" alt="충북대학교"></a>
                    	</c:when>
                    	</c:choose>
                    <span>평가관리프로그램</span>
                </h1>
                <c:if test="${member != null}">
				<div class="gnb clearfix">
					<ul>
						<li class="">
							<a href="/bam/businessAnnouncementList">사업공고</a>
							<div class="sub_menu">
								<a href="/bam/businessAnnouncementList">사업공고조회</a>
								<a href="javascript:void(0)">2번 메뉴</a>
							</div>
						</li>
						<c:if test="${member.user_auth == 0}">
				 		<li class="">
							<a href="/bpm/businessPlanApplyMyList">사업계획서</a>
							<div class="sub_menu">
								<a href="javascript:void(0)">사업공고일정</a>
								<a href="javascript:void(0)">사업공지</a>
							</div>
						</li>
						</c:if>
						<c:if test="${member.user_auth != 0}">
						<li class="">
							<a href="/bem/businessEvaluationMyList">사업평가</a>
							<div class="sub_menu">
								<a href="javascript:void(0)">사업공고일정</a>
								<a href="javascript:void(0)">사업공지</a>
							</div>
						</li>
						</c:if>
					</ul> 
					</c:if>
				</div>
			<div class="log row">
				<c:if test="${member != null}">
			 		<p>[<span>${member.user_id}</span>]님, 안녕하세요!</p>
               		<p><img src="" alt=""></p>
               		<a href="/cmm/memberUpdateView">마이페이지</a>
                	<a href="/cmm/logout">로그아웃</a>
				</c:if>
				
				<c:if test="${member.user_auth == 2}">
							<div class="memberMngList">
								<a href="/cmm/admin">회원관리</a>
							</div>
				</c:if>
				<c:if test="${member == null}">
			 		<a href="/">로그인</a>
				</c:if>
			</div>
</body>
</html>