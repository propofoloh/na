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
    <link rel="stylesheet" href="../../resource/css/reset.css">
    <link rel="stylesheet" href="../../resource/css/common.css">
    <link rel="stylesheet" href="../../resource/css/sub.css">
    <link rel="stylesheet" href="../../resource/css/hj.css">
    <link rel="stylesheet" href="../../resource/css/board.css">

	<script type="text/javascript" src="../../resource/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../../resource/js/jquery-ui.js"></script>
    <script type="text/javascript" src="../../resource/js/sub.js"></script>

    <title>충북대 평가관리프로그램</title>
</head>
<style>
/* Modal*/    
	 .modal {display: none; /* Hidden by default */position: fixed; /* Stay in place */z-index: 1; /* Sit on top */left: 0;top: 0;width: 100%; /* Full width */height: 100%; /* Full height */overflow: auto; /* Enable scroll if needed */background-color: rgb(0, 0, 0); /* Fallback color */background-color: rgba(0, 0, 0, 0); /* Black w/ opacity */}

/* Modal Content/Box */
.modal-content {background-color: #fefefe;margin: 15% auto; /* 15% from the top and centered */padding: 20px;border: 1px solid #888;width: 30%; /* Could be more or less, depending on screen size */}
</style>
		<script>
	 $(document).ready(function(){
		 var checkData = "";
		 var Sum =0;
		 var Max =0;
		 var Min =0;
		 var average = 0;
		 var convertedaverage = 0;
        $('.totalscore').each(function(idx,value){
        			if(idx == 0){
        				Max = $(value).text()
        				Min = $(value).text()
        			} 
         			if($(value).text() > Max){
         				
         				Max = Number($(value).text())
         			}else if($(value).text() < Min){
         				
         				Min = Number($(value).text())
         			}
                	Sum = Sum + Number($(value).text());
                	average = (Sum/(idx+1)).toFixed(2);
                	convertedaverage = (Sum-(Number(Max+Min))) / (idx-1)
                	 $('#average').text(average)
                     $('#convertedaverage').text(convertedaverage);
                   
        });
        
   
     });
    
    function open_pop(context){
    	$('#opinionText').text(context);
		$('#opinionmodal').show();
	};
	function close_pop(flag) {
        $('#opinionmodal').hide();
   };
	function printFn(print){
 		
		 var sw=screen.width;
	     var sh=screen.height;
	     var w=800;//팝업창 가로길이
	     var h=600;//세로길이
	     var xpos=(sw-w)/2; 
	     var ypos=(sh-h)/2; 
	     var pHeader="<html><head><link rel='stylesheet' type='text/css' href='../../resource/css/board.css'><link rel='stylesheet' type='text/css' href='../../resource/css/reset.css'><title>" + print + "</title></head><body>";
	     var pgetContent=document.getElementById("printArea").innerHTML + "<br>";
	     //innerHTML을 이용하여 Div로 묶어준 부분을 가져옵니다.
	     var pFooter="</body></html>";
	     pContent=pHeader + pgetContent + pFooter; 
	     alert(pHeader)
	     pWin=window.open("","print","width=" + w +",height="+ h +",top=" + ypos + ",left="+ xpos +",status=yes,scrollbars=yes"); //동적인 새창을 띄웁니다.
	     pWin.document.open(); //팝업창 오픈
	     pWin.document.write(pContent); //새롭게 만든 html소스를 씁니다.
	     pWin.document.close(); //클로즈
	     pWin.print(); //윈도우 인쇄 창 띄우고
	     pWin.close(); //인쇄가  되던가 취소가 되면 팝업창을 닫습니다.
  
	}
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
                            <p class="tit">사용자</p>
                            <ul>
                                <li>
                                    <a href="#">사업분류</a>
                                </li>
                                <li>
                                    <a href="#">사업공고</a>
                                    <ul class="second_menu">
                                        <li>· 사업공고일정</li>
                                        <li>· 사업공지</li>
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
                            <h2>종합의견</h2>

                            <div class="inner">
                            	<div id="printArea">
                                <div class="opinion_tit">충북청주 강소연구개발특구 특화기업 성장지원 사업 평가지표</div>
                                <div class="board-wrap respon notscroll manage">			
                                
                                    <table summary="종합의견" class="board-basic horizon notice list opinion">
                                            <colgroup>
                                                <col style="width:12%">
                                                <col style="width:11%">
                                                <col style="width:11%">
                                                <col style="width:11%">
                                                <col style="width:11%">
                                                <col style="width:11%">
                                                <col style="width:11%">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th class="br_th" scope="col" rowspan="2">평가위원</th>
                                                    <th class="br_th" scope="col" colspan="6">평가 항목별 점수</th>
                                                    <th scope="col" colspan="2">종합</th>
                                                </tr>
                                                <tr>
                                                    <th class="br_th" scope="col">추진 계획 타당성</th>
                                                    <th class="br_th" scope="col">지원 필요성 및 추진 역량</th>
                                                    <th class="br_th" scope="col">사업 지원의 기대 효과</th>
                                                    <th class="br_th" scope="col">사업비 구성의 적정성 및 합리성</th>
                                                    <th class="br_th" scope="col">지원 분야의 수행기관 매칭 적합성 및 관련 실적</th>
                                                    <th class="br_th" scope="col">참여 인력의 업무수행 능력 및 역량</th>
                                                    <th class="br_th" scope="col">평균</th>
                                                    <th scope="col">평가의견</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                    <c:forEach items="${businessEvaluationList}" var="businessEvaluationList">
												<tr class=" ">
													<td style="text-align: center">${businessEvaluationList.eval_writer}</td>
													<td style="text-align: center">${businessEvaluationList.eval_score1}</td>
													<td style="text-align: center">${businessEvaluationList.eval_score2}</td>
													<td style="text-align: center">${businessEvaluationList.eval_score3}</td>
													<td style="text-align: center">${businessEvaluationList.eval_score4}</td>
													<td style="text-align: center">${businessEvaluationList.eval_score5}</td>
													<td style="text-align: center">${businessEvaluationList.eval_score6}</td>
													<td class="totalscore" style="text-align: center">${businessEvaluationList.eval_totalscore}</td>
													<td><button class="btn" type="button" onclick="open_pop('${businessEvaluationList.eval_opinion}')">평가의견</button></td>
												</tr>
									</c:forEach>
                                          
                                                <tr>
                                                    <th class="br_th" scope="col" colspan="7">합계</th>
                                                    <th id="average" class="br_th" scope="col" colspan="2"></th>
                                                </tr>
                                                <tr>
                                                    <th class="br_th" scope="col" colspan="7">환산점수</th>
                                                    <th id="convertedaverage" class="br_th" scope="col" colspan="2"></th>
                                                </tr>
                                            	<tr>
                                            		<th class="br_th" scope="col" colspan="7">평가위원장 </th>
                                           		<th  class="br_th" scope="col" colspan="2"><span style="float: right;">(서명)</span></th>
                                            	</tr>
                                            		
                                            </tbody>
                                    
                                    </table>
                                    <p class="sum">*환산점수 : 총점 - (최고점 + 최저점)</p>
                                    <!-- The Modal -->
			<div id="opinionmodal" class="modal">

				<!-- Modal content -->
				<div class="modal-content">
					<p style="text-align: center;">
						<span style="font-size: 14pt;"><b><span
								style="font-size: 24pt;">평가의견</span></b></span>
					</p>
					<p id="opinionText"></p>
						<br />
					<div
						style="color: #ffffff; pointer; background-color: #862640; text-align: center; padding-bottom: 10px; padding-top: 10px;"
						onClick="close_pop();">
						<span class="pop_bt" style="font-size: 13pt;"> 닫기 </span>
					</div>
				</div>
			<!--End Modal-->
		</div>
								</div>                                    
                                    <div class="btn_wrap text-right same mt_20 d-flex justify-between">
                                        <button type="button" class="cancel">목록</button>
                                        <button type="button" class="normal" onclick="printFn()">인쇄</button>
                                    </div>
                                </div>
                            
                            </div>    
                        </div>
                    </div>

				</div>
            </div>
        </div>
        <footer></footer>

</body>
</html>