<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width,user-scalable=no,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" name="Viewport" />
    <title>충북대 평가관리프로그램</title>
    <link rel="stylesheet" href="../../resource/css/reset.css">
    <link rel="stylesheet" href="../../resource/css/common.css">
    <link rel="stylesheet" href="../../resource/css/sub.css">
    <link rel="stylesheet" href="../../resource/css/board.css">
    
	<script type="text/javascript" src="../../resource/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../../resource/js/jquery-ui.js"></script>
    <script type="text/javascript" src="../../resource/js/sub.js"></script>	
</head>
 <script type="text/javascript">
 
 	function printFn(print){
 		
 		 var sw=screen.width;
 	     var sh=screen.height;
 	     var w=800;//팝업창 가로길이
 	     var h=600;//세로길이
 	     var xpos=(sw-w)/2; 
 	     var ypos=(sh-h)/2; 
 	     var pHeader="<html><head><link rel='stylesheet' type='text/css' href='../../resource/css/sub.css'><link rel='stylesheet' type='text/css' href='../../resource/css/reset.css'><title>" + print + "</title></head><body>"; 	     
 	     var pgetContent=document.getElementById("printArea").innerHTML + "<br>";
 	     //innerHTML을 이용하여 Div로 묶어준 부분을 가져옵니다.
 	     var pFooter="</body></html>";
 	     pContent=pHeader + pgetContent + pFooter; 
 	     pWin=window.open("","print","width=" + w +",height="+ h +",top=" + ypos + ",left="+ xpos +",status=yes,scrollbars=yes"); //동적인 새창을 띄웁니다.
 	     pWin.document.open(); //팝업창 오픈
 	     pWin.document.write(pContent); //새롭게 만든 html소스를 씁니다.
 	     pWin.document.close(); //클로즈
 	     pWin.print(); //윈도우 인쇄 창 띄우고
 	     pWin.close(); //인쇄가  되던가 취소가 되면 팝업창을 닫습니다.
   	
 	}
 	
 	$(document).ready(function(){
 		  	
 		$(".eval_score1").val(${read.eval_score1})
 		$(".eval_score2").val(${read.eval_score2})
 		$(".eval_score3").val(${read.eval_score3})
 		$(".eval_score4").val(${read.eval_score4})
 		$(".eval_score5").val(${read.eval_score5})
 		$(".eval_score6").val(${read.eval_score6})
 		$(".eval_score7").val(${read.eval_score7})
 		$(".eval_score8").val(${read.eval_score8})

 		 var Sum=0;
           $('.point').each(function(idx,value){ 
	                	Sum += Number($(value).text());
	                	$('#MaxScore').text(Sum);
           })
           
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
                    		<li>평가위원장</li>
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
                        <li class="">
                            <a href="/bam/businessAnnouncementList">사업공고</a>
                            <ul class="second_menu">
                                <li class=""><a href="/bam/businessAnnouncementList">· 사업공고</a></li>
                               <c:if test="${member.user_auth == 2}">
                                <li class=""><a href="/bam/businessFormEditList">· 공고별 양식등록</a></li>
                               </c:if>
                            </ul>
                       <c:if test="${member.user_auth == 0}">
	                        <li class="">
	                            <a href="/bpm/businessPlanApplyMyList">사업 계획서</a>
	                            <ul class="second_menu">
	                                <li class=""><a href="/bpm/businessPlanApplyMyList">· 접수내역 조회</a></li>
	                            </ul>
	                        </li>
                        </c:if>
                       <c:if test="${member.user_auth != 0}">
                        <li class="on">
                            <a href="/bpm/businessEvaluationMyList">사업 평가</a>
                            <ul class="second_menu">
                                <li class="on"><a href="/bem/businessEvaluationMyList">· 평가내역 조회</a></li>
                            </ul>
                            </li>
                      </c:if>
                    </ul>
                </div>
                        <div class="cont">
                            <h3 style="text-align: center;">충북청주 강소연구개발특구 특화기업 성장지원 사업 평가지표</h3>
                            <div id="printArea" style="height: 90%">
                            <div class="table_wrap" id="table_wrap">
                            
                                <table>
                                    <colgroup>
                                        <col style="width:10%">
                                        <col style="width:auto">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">구분</th>
                                            <th scope="col">제목</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="ta_c">사업명</td>
                                            <td class="ta_c">${bamnotice.anc_title}</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <table class="thead_gray mt_10">
                                    <colgroup>
                                        <col style="width:7%">
                                        <col style="width:11%">
                                        <col style="width:auto">
                                        <col style="width:7%">
                                        <col style="width:7%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">분류</th>
                                            <th scope="col">구분</th>
                                            <th scope="col">평가항목</th>
                                            <th scope="col">배점</th>
                                            <th scope="col">평점</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                   		 <tr>
                                    	 <th rowspan="8" class="f_bold">신청기업</th>
                                    <c:forEach items="${ancInfo}" var="ancInfo" varStatus="status" >
	                                            <td class="type">${ancInfo.EVAL_FORM_TITLE}</td>
	                                            <td >${ancInfo.EVAL_FORM_ITEM}</td>
	                                            <td class="point" style="text-align: center;" >${ancInfo.EVAL_FORM_SCORE}</td>
	                                            <td><input id="eval_score"class="eval_score${status.index+1}" disabled="disabled"></td>   
	                                   </tr>
                                        </c:forEach>
                                    	</tbody>
                                    	<tr class="total">
                                            <td colspan="3">합계</td>
                                            <td class="MaxScore" id="MaxScore"></td>
                                            <td class=""><input class="totalscore" disabled="disabled" value = "${read.eval_totalscore}"></td>
                                        </tr> 

                                </table>
                                <table>
                                    <colgroup>
                                        <col style="width:12%">
                                        <col style="width:auto">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>평가의견</th>
                                            <td colspan="3" class="opi ta_c f_bold">
                                               ${read.eval_opinion}
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>일자</th>
                                            <td class="ta_c f_bold">2021.4.12</td>
                                            <td class="ta_c f_bold">평가위원 성명</td>
                                            <td class="ta_r f_bold sign"><input disabled="disabled" value="${read.eval_writer}">(서명)</td>
                                        </tr>
                                    </tbody>
                                </table>
                        		</div>
                            </div>
                                <div class="btn_wrap text-right same mt_20 justify-between">
                                <button type="button" class="cancel" style="float: left;">목록</button>
                                <button type="button" class="normal"  onclick="location.href='/bem/businessEvaluationUpdate?bem_beval_idx=${read.bem_beval_idx}&bpm_bplan_idx=${param.bpm_bplan_idx}&bam_anc_idx=${param.bam_anc_idx}'"> 수정</button>
                                <button type="button" class="normal"  onclick="printFn()">인쇄</button>
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