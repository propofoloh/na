<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<link rel="stylesheet" href="../../resource/css/hj.css">

	<script type="text/javascript" src="../../resource/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../../resource/js/jquery-ui.js"></script>
    <script type="text/javascript" src="../../resource/js/sub.js"></script>
    <title>충북대 평가관리프로그램</title>
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
                <section class="location sect1">
                    <ul class="insideArea row">
                    <li>사용자</li>
                    <li>사업공고</li>
                </ul>
                </section>
                <section class="sect2">
                   <div  class="insideArea row">
                	<div class="lnb">
                   	 <p class="tit">사용자</p>
                    <ul>
                        <li class="on">
                            <a href="/bam/businessAnnouncementList">사업공고</a>
                            <ul class="second_menu">
                                <li class="on"><a href="/bam/businessAnnouncementList">· 사업공고</a></li>
                            </ul>
                            
                        <li class=" ">
                            <a href="/bpm/businessPlanApplyMyList">사업 계획서</a>
                            <ul class="second_menu">
                                <li class=""><a href="/bpm/businessPlanApplyMyList">· 접수내역 조회</a></li>
                            </ul>
                    </ul>
                </div>
                <div class="cont">
                    <div class="inner">
                        <div class="board-wrap respon notscroll manage mt_0 view">			
                            <div class="m-board" id="printDiv">
                                <div class="view">
                                    <div class="view-head">
                                        <div class="title">
                                            <div class="txt">2021년도 한-캐나다 산학연 공동연구사업 신규과제 공모</div>
                                        </div>
                                        <div class="infos">
                                            <div class="info"><span class="title">담당자</span> <span class="content">${read.writer}</span></div>
                                            <div class="info"><span class="title">등록일</span> <span class="content">${read.reg_date}</span></div>
                                            <div class="info">
                                                <span class="title">조회수</span> <span class="content">0</span>
                                            </div>
                                        </div>
                                        <div class="attach">
                                            <div class="title">첨부파일</div>
                                            <div class="contents">
                                                <form name="download" method="post" action="/file/boardDownload">
                                                    <input type="hidden" name="fileType" value="">
                                                    <input type="hidden" name="no" value="">
                                                    <input type="hidden" name="sno" value="">
                                                </form>
                                               <c:forEach var="file" items="${file}">
													<a class="file" href="#" onclick="fn_fileDown('${file.file_idx}'); return false;">${file.file_sname}</a>(${file.FILE_SIZE})<br>
												</c:forEach>
                                                </div>
                                        </div>
                                        <button type="button" class="print" id="printBtn">게시물 프린트</button>
                                    </div>
                    
                                    <div class="view-body"><p>${read.anc_remark} </p>
                    <p>&nbsp;</p></div>
                                </div>
                    
                                <div class="btn_wrap same mt_20 ta_c">
									<button type="button" class="normal" onclick="window.location.href='/bam/businessAnnouncementList'">목록</button>
								</div>




		                        	</div>
		                    	</div>    
		                	</div>
		            	</div>
		        	</div>
        		</section>
        	</div>
        </div>  
        <footer></footer>
    </div>
</body>
</html>