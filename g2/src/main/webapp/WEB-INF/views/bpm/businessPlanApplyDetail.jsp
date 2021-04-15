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
                <ul class="location row">
                    <li>사용자</li>
                    <li>사업공고</li>
                </ul>
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
					<ul class="tab d-flex">
						<li data-tab="tab1" class="on"><a href="javascript:void(0)">연구목표</a></li>
						<li data-tab="tab2" class=""><a href="javascript:void(0)">연구내용</a></li>
						<li data-tab="tab3" class=""><a href="javascript:void(0)">기대효과</a></li>
						<li data-tab="tab4" ><a href="javascript:void(0)">연구개발비</a></li>
					</ul>
					<div class="p_15">
						<div class="tabcontent current" id="tab1">
							<h2>연구목표</h2>
							<textarea name="" id="" cols="30" rows="10" readonly="readonly">
								연구목표 텍스트 입니다.
								연구목표 텍스트 입니다.
								연구목표 텍스트 입니다.
								연구목표 텍스트 입니다.
								연구목표 텍스트 입니다.
								연구목표 텍스트 입니다.
								연구목표 텍스트 입니다.
								연구목표 텍스트 입니다.
								연구목표 텍스트 입니다.
								연구목표 텍스트 입니다.
							</textarea>

							<div class="filelist form-group file_hwp mb-0">
								<p>파일 목록</p>
								<ul>
									<li><span>첨부파일 : </span><a href="javascript:void(0)">1.JPG</a>(33.5kb)</li>
									<li><span>첨부파일 : </span><a href="javascript:void(0)">1.JPG</a>(33.5kb)</li>
									<li><span>첨부파일 : </span><a href="javascript:void(0)">1.JPG</a>(33.5kb)</li>
								</ul>
							</div>
							 <div class="btn_wrap text-right">
								<button type="button" class="normal" onclick="location.href='../bem/businessEvaluationList?bpm_bplan_idx=${read.bpm_bplan_idx}&bam_anc_idx=${param.bam_anc_idx}'">평가리스트</button>
								<button type="button" class="normal" onclick="location.href='../bem/businessEvaluationOpinion?bpm_bplan_idx=${read.bpm_bplan_idx}'">종합의견</button>
								<button type="button" class="normal" onclick="location.href='../bem/businessEvaluation?bpm_bplan_idx=${read.bpm_bplan_idx}&bam_anc_idx=${param.bam_anc_idx}'">평가하기</button>
							 </div>
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab2">
						2222
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab3">
						3333
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab4">
						4444
						</div><!--//#tab1-->
					</div>

                </div>
            </div>
        </div>
        <footer></footer>
    </div>

	
</body>
</html>
