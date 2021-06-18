<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width,user-scalable=no,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" name="Viewport" />
    <link rel="stylesheet" href="../../resource/css/reset.css">
    <link rel="stylesheet" href="../../resource/css/common.css">
    <link rel="stylesheet" href="../../resource/css/sub.css">
    <link rel="stylesheet" href="../../resource/css/board.css">
    <link rel="stylesheet" href="../../resource/css/jquery-ui.css">

    <script type="text/javascript" src="../../resource/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../../resource/js/jquery-ui.js"></script>
    <script type="text/javascript" src="../../resource/js/sub.js"></script>

    <title>충북대 평가관리프로그램</title>
</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/bam/businessAnnouncementList";
						    
			})
		
			$("#submit").on("click", function(){
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
			});
		})
	</script>
	<body>
    <div class="wrap">
        <dl id="skip_nav">
            <dt>메뉴 건너띄기</dt>
            <dd>
                <a href="#contents">본문 바로가기</a>
                <a href="#gnb">대메뉴 바로가기</a>
            </dd>
        </dl>
        <header>
              <%@include file="../cmm/topmenu.jsp"%>
        </header>
        <div class="content">
            <span id="contents"></span>
            <div class="row content_outer">
                <section class="location sect1">
                    <ul class="insideArea row">
                    <c:choose>
                    	<c:when test="${member.user_auth == 1}">
                    		<li>평가위원</li>
                    	</c:when>
                    	<c:when test="${member.user_auth == 2}">
                    		<li>관리자</li>
                    	</c:when>
                    	<c:when test="${member.user_auth == 0}">
                    		<li>사용자</li>
                    	</c:when>
                    	<c:when test="${member.user_auth == null}">
                    		<li>비로그인</li>
                    	</c:when>
                    </c:choose>         
                        <li>사업평가리스트</li>
                    </ul>
                </section>
                <section class="sect2">
                    <div  class="insideArea row">
        <div class="lnb">
        	<c:choose>
                   	<c:when test="${member.user_auth == 1}">
                   		<p class="tit">평가위원</p>
                   	</c:when>
                   	<c:when test="${member.user_auth == 2}">
                   		<p class="tit">평가위원장</p>
                   	</c:when>
                   	<c:when test="${member.user_auth == 0}">
                   		<p class="tit">사용자</p>
                   	</c:when>
                   	<c:when test="${member.user_auth == null}">
                   		<p class="tit">비로그인</p>
                   	</c:when>
            </c:choose>
                    <ul>
                        <li class="on">
                            <a href="/bam/businessAnnouncementList">회원관리</a>
                            <ul class="second_menu">
                                <li class="on"><a href="/bam/businessAnnouncementList">· 회원정보 조회</a></li>
                               <c:if test="${member.user_auth == 2}">
                                <li class=""><a href="/bam/businessFormEditList">· 회원정보 수정</a></li>
                               </c:if>
                            </ul>
                      
                    </ul>
                </div>
                <div class="cont">
                    <h2>회원정보 수정</h2>
                    	<div class="inner box mt15">
                                	회원정보 수정 페이지 입니다.
                        </div>
                        <div class="inner">
                        <div class="board-wrap">
                        <form id="writeForm" name="writeForm" method="post" action="/bam/businessAnnouncementInputWrite" enctype="multipart/form-data">
                            <table class="board-basic type-row">
                                <caption>사업안내 | 사업공고 | 사업공지에  사업명, 작성자, 내용, 공고기간, 첨부파일을 나타낸  테이블</caption>
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:auto">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row"><span>* </span>아이디</th>
                                        <td>
                                            <input type="text" name="anc_title" id="anc_title" value="${member.user_id}" placeholder="제목을 입력하세요.">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span>* </span>패스워드</th>
                                        <td>
                                            <input type="text" name="writer" id="writer" class="" value="" placeholder="비밀번호를 입력해 주세요">
                                        </td>
                                    </tr>
                                     <tr>
                                        <th scope="row"><span>* </span>성명</th>
                                        <td>
                              				<input type="text" name="writer" id="writer" class="" value="${member.user_name}" placeholder="성명을 입력해주세요">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span>* </span>이메일</th>
                                        <td>
											<input type="text" name="writer" id="writer" class="" value="${member.user_email}" placeholder="이메일을 입력해주세요">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">휴대폰번호</th>
                                        <td>
                                        	<input type="text" name="writer" id="writer" class="" value="${member.hp_num}" placeholder="${member.user_name}">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">사업자 등록번호</th>
                                        <td>
                                       		<input type="text" name="writer" id="writer" class="" value="${member.user_crcode}" placeholder="${member.user_crcode}">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div> 
                        
							<form action="/cmm/memberUpdate" method="post" id = "updateForm">
								
								<div class="form-group has-feedback">
									<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
									<button class="cencle btn btn-danger" type="button">취소</button>
								</div>
								<div>
								<a href="/cmm/memberDeleteView">회원탈퇴</a>
				
								</div>
						</form>
	
	<%-- <body>
		<section id="container">
			<form action="/cmm/memberUpdate" method="post" id = "updateForm">
				<div class="form-group has-feedback">
					<label class="control-label" for="user_id">아이디</label>
					<input class="form-control" type="text" id="user_id" name="user_id" value="${member.user_id}" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">패스워드</label>
					<input class="form-control" type="password" id="userPass" name="userPass" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">성명</label>
					<input class="form-control" type="text" id="userName" name="userName" value="${member.user_name}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_email">이메일</label>
					<input class="form-control" type="text" id="user_email" name="user_email" value="${member.user_email}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="hp_num">휴대폰 번호</label>
					<input class="form-control" type="text" id="hp_num" name="hp_num" value="${member.hp_num}"/>
				</div>				
				<div class="form-group has-feedback">
					<label class="control-label" for="user_crcode">사업자 등록증</label>
					<input class="form-control" type="text" id="user_crcode" name="user_crcode" value="${member.user_crcode}"/>
				</div>

				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
				<div>
				<a href="/cmm/memberDeleteView">회원탈퇴</a>

				</div>
			</form>
		</section>
		
	</body> --%>
	
</html>