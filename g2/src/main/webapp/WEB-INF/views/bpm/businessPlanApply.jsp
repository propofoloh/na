 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width,user-scalable=no,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" name="Viewport" />
    <title>충북대 평가관리프로그램</title>
    <link rel="stylesheet" href="../../resource/css/reset.css">
    <link rel="stylesheet" href="../../resource/css/common.css">
    <link rel="stylesheet" href="../../resource/css/sub.css">
    <link rel="stylesheet" href="../../resource/css/hj.css">
    <link rel="stylesheet" href="../../resource/css/board.css">

	<script type="text/javascript" src="../../resource/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../../resource/js/jquery-ui.js"></script>
    <script type="text/javascript" src="../../resource/js/sub.js"></script>
</head>
<script>




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
                    <li>사용자</li>
                    <li>사업공고</li>
                </ul>
                </section>
                <section class="sect2">
                <div  class="insideArea row">
                <div class="lnb">
                    <p class="tit">사업안내</p>
                    <ul>
                        <li>
                            <a href="#">사업분류</a>
                        </li>
                        <li class="on">
                            <a href="#">사업공고</a>
                            <ul class="second_menu">
                                <li>· 사업공고일정</li>
                                <li class="on">· 사업공지</li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">사업질의응답</a>
                        </li>
                        <li>
                            <a href="#">사업자료실</a>
                        </li>
                        <li>
                            <a href="#">정보서비스</a>
                        </li>
                    </ul>
                </div>
                <div class="cont">
                    <h2>사업평가리스트</h2>
                    <input type="hidden" value="${member.user_name}">
					<ul class="tab d-flex">
						<li data-tab="tab1" class="on"><a href="javascript:void(0)">${form.BPLAN_FORM_TITLE1}</a></li>
						<li data-tab="tab2" class=""><a href="javascript:void(0)">${form.BPLAN_FORM_TITLE2}</a></li>
						<li data-tab="tab3" class=""><a href="javascript:void(0)">${form.BPLAN_FORM_TITLE3}</a></li>
						<li data-tab="tab4" ><a href="javascript:void(0)">${form.BPLAN_FORM_TITLE4}</a></li>
					</ul>
					<div class="p_15">
						<div class="tabcontent current" id="tab1">
							<h2 id="title1">연구목표</h2>
							<textarea name="title_remark1" id="" cols="30" rows="10"></textarea>
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab2">
							<h2 id="title2" >연구내용</h2>
							<textarea name="title_remark2" id="" cols="30" rows="10"></textarea>
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab3">
							<h2 id="title3">기대효과</h2>
							<textarea name="title_remark3" id="" cols="30" rows="10"></textarea>					 
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab4">
							<h2 id="title4" >연구개발비</h2>
							<textarea name="title_remark4" id="" cols="30" rows="10"></textarea>
							
							
							 <div class="btn_wrap text-right">
								<button type="button" class="normal">작성</button>
							 </div>
						</div><!--//#tab1-->
					
					</div>
					<div class="filebox form-group file_hwp mb-0">
								<div class="btn_wrap normal">
									<button type="button" class="addFile">파일추가<span><img src="../../../resource/image/icon_plusGroup.png" alt=""></span></button>
								</div>
								<form>
								  <input type="file" multiple/>
								  <div class="btn_wrap normal"><button type="button" class="delFile">삭제</button></div>
								</form>
							</div>
                </div>
            </div>
        </div>
        </section>
        </div>
        <footer></footer>
    </div>

	
</body>
</html>
