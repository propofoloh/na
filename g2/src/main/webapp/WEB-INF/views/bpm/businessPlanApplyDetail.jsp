<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
						<li data-tab="tab1" class="on"><a href="javascript:void(0)">${form.BPLAN_FORM_TITLE1}</a></li>
						<li data-tab="tab2" class=""><a href="javascript:void(0)">${form.BPLAN_FORM_TITLE2}</a></li>
						<li data-tab="tab3" class=""><a href="javascript:void(0)">${form.BPLAN_FORM_TITLE3}</a></li>
						<li data-tab="tab4" ><a href="javascript:void(0)">${form.BPLAN_FORM_TITLE4}</a></li>
					</ul>
					<div class="p_15">
						<div class="tabcontent current" id="tab1">
							<h2>연구목표</h2>
							<textarea name="" id="" cols="30" rows="10" readonly="readonly">
									${read.title_remark1}
							</textarea>

							
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab2">
						<textarea name="" id="" cols="30" rows="10" readonly="readonly">
									${read.title_remark2}
							</textarea>
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab3">
						<textarea name="" id="" cols="30" rows="10" readonly="readonly">
									${read.title_remark3}
							</textarea>
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab4">
						<div class="tablebox">
							<!-- <textarea name="title_remark4" id="" cols="30" rows="10"> -->
							 <table class="thead_gray">
                                    <colgroup>
                                        <col style="width:2%">
                                        <col style="width:3%">
                                        <col style="width:5%">
                                        <col style="width:5%">
                                        <col style="width:7%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th class="boldtext" scope="col">비목</th>
                                            <th class="boldtext" colspan="3"scope="col">세목</th>	
                                            <th class="boldtext" scope="col">당해</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">인건비</th>
                                    		<th class="boldtext">내부인건비</th>
                                    		<th class="boldtext">미지급</th>
                                    		<th>${cost.bplan_cost_value1} </th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현금</th>
                                    		<th >${cost.bplan_cost_value2}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현물</th>
                                    		<th >${cost.bplan_cost_value3}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">외부인건비</th>
                                    		<th class="boldtext">미지급</th>
                                    		<th >${cost.bplan_cost_value4}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현금</th>
                                    		<th >${cost.bplan_cost_value5}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현물</th>
                                    		<th >${cost.bplan_cost_value6}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" style="text-align: center"colspan="2">연구지원인력인건비</th>
                                    		<th >${cost.bplan_cost_value7}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">직</th>
                                    		<th class="boldtext" style="text-align:right"" colspan="3"_>학생인건비</th>
                                    		<th >${cost.bplan_cost_value8}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">접</th>
                                    		<th class="boldtext" style="text-align:right"" colspan="3"_>인건비 소계</th>
                                    		<th >${cost.bplan_cost_value9}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">비</th>
                                    		<th class="boldtext" colspan="2">연구시설</th>
                                    		<th class="boldtext">현금_일반</th>
                                    		<th >${cost.bplan_cost_value10}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">비</th>
                                    		<th class="boldtext" rowspan="2" colspan="2" style="vertical-align: middle;">장비비</th>
                                    		<th class="boldtext">현금통합관리</th>
                                    		<th >${cost.bplan_cost_value11}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현물</th>
                                    		<th >${cost.bplan_cost_value12}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" rowspan="2" colspan="2" style="vertical-align: middle;">연구활동비</th>
                                    		<th class="boldtext">현금</th>
                                    		<th >${cost.bplan_cost_value13}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현물</th>
                                    		<th>${cost.bplan_cost_value14}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" rowspan="2" colspan="2" style="vertical-align: middle;">연구재료비</th>
                                    		<th class="boldtext">현금</th>
                                    		<th >${cost.bplan_cost_value15}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현물</th>
                                    		<th >${cost.bplan_cost_value16}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" colspan="3">연구수당</th>
                                    		<th >${cost.bplan_cost_value17}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" colspan="3">위탁연구개발비</th>
                                    		<th >${cost.bplan_cost_value18}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" colspan="3">직접비 소계</th>
                                    		<th >${cost.bplan_cost_value19}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext" colspan="4">간접비</th>
                                    		<th >${cost.bplan_cost_value20}</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext" colspan="4">연구개발비 총액</th>
                                    		<th >${cost.bplan_cost_value21}</th>
                                    	</tr>
                                   	</tbody>
                                 </table>
                              </div>
                                    
						</div><!--//#tab4-->
						<div class="filelist form-group file_hwp mb-0">
								<p>파일 목록</p>
								<ul>
									<li><span>첨부파일 : </span><a href="javascript:void(0)">1.JPG</a>(33.5kb)</li>
									<li><span>첨부파일 : </span><a href="javascript:void(0)">1.JPG</a>(33.5kb)</li>
									<li><span>첨부파일 : </span><a href="javascript:void(0)">1.JPG</a>(33.5kb)</li>
								</ul>
							</div>
							<c:if test="${member.user_auth != 0}">
							 <div class="btn_wrap text-right">
									<button type="button" class="normal" onclick="location.href='../bem/businessEvaluationList?bpm_bplan_idx=${read.bpm_bplan_idx}&bam_anc_idx=${param.bam_anc_idx}'">평가리스트</button>
								<c:if test="${member.user_auth == 2}">
									<button type="button" class="normal" onclick="location.href='../bem/businessEvaluationOpinion?bpm_bplan_idx=${read.bpm_bplan_idx}'">종합의견</button>
								</c:if>
									<button type="button" class="normal" onclick="location.href='../bem/businessEvaluation?bpm_bplan_idx=${read.bpm_bplan_idx}&bam_anc_idx=${param.bam_anc_idx}'">평가하기</button>
							 </div>
							 </c:if>
					</div>
                </div>
            </div>
        </div>
        <footer></footer>
    </div>

	
</body>
</html>
