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
                    <img src="../../resource/image/logo.jpg" alt="충북대학교">
                    <span>평가관리프로그램</span>
                </h1>
				<div class="gnb clearfix">
					<ul>
						<li class="">
							<a href="/bam/businessAnnouncementList">사업공고</a>
							<div class="sub_menu">
								<a href="/bam/businessAnnouncementList">사업공고</a>
								<a href="javascript:void(0)">2번 메뉴</a>
							</div>
						</li>
						<li class="">
							<a href="javascript:void(0)">사업계획서</a>
							<div class="sub_menu">
								<a href="javascript:void(0)">사업공고일정</a>
								<a href="javascript:void(0)">사업공지</a>
							</div>
						</li>
						<li class="">
							<a href="javascript:void(0)">사업평가</a>
							<div class="sub_menu">
								<a href="javascript:void(0)">1번 메뉴</a>
								<a href="javascript:void(0)">2번 메뉴</a>
							</div>
						</li>
						<li class="">
							<a href="javascript:void(0)">사업자료실</a>
							<div class="sub_menu">
								<a href="javascript:void(0)">1번 메뉴</a>
								<a href="javascript:void(0)">2번 메뉴</a>
							</div>
						</li>
						<li class="">
							<a href="javascript:void(0)">정보서비스</a>
							<div class="sub_menu">
								<a href="javascript:void(0)">1번 메뉴</a>
								<a href="javascript:void(0)">2번 메뉴</a>
							</div>
						</li>
						
					</ul>
				</div>
			<div class="log row">
				<c:if test="${member != null}">
			 		<p>[<span>${member.user_id}</span>]님, 안녕하세요!</p>
               		<p><img src="" alt=""></p>
                	<a href="/cmm/logout">로그아웃</a>
				</c:if>
				
				<c:if test="${member == null}">
			 		<a href="/">로그인</a>
				</c:if>
			</div>
           </div>
</body>
</html>