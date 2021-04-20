<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
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
    <link rel="stylesheet" href="../../resource/css/board.css">

	<script type="text/javascript" src="../../resource/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../../resource/js/jquery-ui.js"></script>
    <script type="text/javascript" src="../../resource/js/sub.js"></script>
</head>

  <script type="text/javascript">
  
 	 $(document).ready(function(){
 		 var checkData = "";
 		 var formObj = $("form[name='writeForm']");
 		$(".write_btn").on("click", function(){
 			 $('.score').each(function(idx,value){ 
 				if(!this.value){
 					if(checkData != '')
 						checkData = checkData+','+Number(idx+1);
 					else
 						checkData = idx+1;
 				}
 				
 			 });
 			 if(checkData != ""){
 			 	alert(checkData+'번째 입력값이 입력되지 않았습니다.')
 			 	checkData = "";
 			 }else{
 				formObj.attr("action", "/bem/businessEvaluation");
	 			formObj.attr("method", "post");
	 			formObj.submit(); 
 				}
 		});
 		
 		
 		 $('.score').on('keyup',function(){
 			 var Sum = 0;
            $('.score').each(function(idx,value){ 
                if(!isNaN(this.value)&&this.value.length!=0){
	                	Sum+=Number($(value).val());
	                	if(Sum <= 100)
	                    	$('#eval_totalscore').text(Sum);
	                	else if(Sum > 100){
            				$('#eval_totalscore').text(Sum-Number($(value).val()));
            				this.value=null;
            				this.focus();
            				return ;
	                	}
            			
            		}	
            });
            if(Sum > 100) 
            	alert("배점이 100점을 넘을수 없습니다.")
         });
 		 
 		$('.maxScore').on('keyup',function(){
			 var Sum = 0;
           $('.maxScore').each(function(idx,value){ 
               if(!isNaN(this.value)&&this.value.length!=0){
            	   
	                	Sum+=Number($(value).val());
	                	if(Sum <= 100)
	                    	$('#MaxScoreSum').text(Sum);
	                	else if(Sum > 100){
	           				$('#MaxScoreSum').text(Sum-Number($(value).val()));
	           				this.value=null;
	           				
	                	}
           			
           		}	
           });
           if(Sum > 100) alert("총점이 100점을 넘을수 없습니다.")
        });
 		
 		
  	})
  	</script>
  	
<body>
	<% Calendar cal = Calendar.getInstance(); %>
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
                            <h2>사업 평가</h2>
                            <h3>충북청주 강소연구개발특구 특화기업 성장지원 사업 평가지표</h3>
                            <div class="table_wrap">
                                <table>
                                    <colgroup>
                                        <col style="width:10%">
                                        <col style="width:auto">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">구분</th>
                                            <th scope="col">테스트2</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="ta_c">사업명</td>
                                            <td class="ta_c">테스트2</td>
                                        </tr>
                                    </tbody>
                                </table>
							<form action="/bpm/businessEvaluation" method="post">
                                <table class="thead_gray">
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
                                            <th rowspan="6" class="f_bold">신청기업</th>
                                            <td rowspan="2" class="type">추진계획타당성</td>
                                            <td>사전준비도 및 사업목표의 명확성</td>
                                            <td rowspan="2" class="score" >20</td>	
                                            <td rowspan="2"><input name="eval_score1" class="score" type="number"></td>
                                        </tr>
                                        <tr>
                                            <td>사업 추진방안의 타당성</td>
                                        </tr>
                                        <tr>
                                            <td rowspan="2" class="type">지원 필요성 및 추진역량</td>
                                            <td>지원의 필요성 및 신청지원 분야의 적합성</td>
                                            <td rowspan="2" class="score">20</td>
                                            <td rowspan="2"><input name="eval_score2" class="score" type="number"></td>
                                        </tr>
                                        <tr>
                                            <td>사업추진역량 및 의지</td>
                                        </tr>
                                        <tr>
                                            <td rowspan="2" class="type">지원 효과성 및 사업비 적정성</td>
                                            <td>사업지원의 기대효과</td>
                                            <td rowspan="" class="score">15</td>
                                            <td rowspan=""><input name="eval_score3" class="score" type="number"></td>
                                        </tr>
                                        <tr>
                                            <td>사업비 구성의 적정성 및 합리성</td>
                                            <td class="score">15</td>
                                            <td><input name="eval_score4" class="score" type="number"></td>
                                        </tr>
                                        <tr>
                                            <th rowspan="2" class="f_bold">수행기관</th>
                                            <td rowspan="2" class="type">관련 분야 전문성 및 역향</td>
                                            <td>지원분야의 수행기관 매칭 적합성 및 관련 실적</td>
                                            <td rowspan="" class="score">15</td>
                                            <td rowspan=""><input name="eval_score5" class="score" type="number"></td>
                                        </tr>
                                        <tr>
                                            <td>참여인력의 업무수행 능력 및 역량</td>
                                            <td class="score" >15</td>
                                            <td><input name="eval_score6" class="score" type="number"></td>
                                        </tr>
                                        <tr class="total">
                                            <td colspan="3">합계</td>
                                            <td class="score">100</td>
                                            <td name="eval_totalscore" id="eval_totalscore" readonly="readonly"></td>
                                        	</tr>
                                         
                                    </tbody>
                                </table>
                                <table>
                                    <colgroup>
                                        <col style="width:12%">
                                        <col style="width:auto">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>평가의견</th>
                                            <td colspan="3">
                                                <div class="opi">
                                                    <textarea name="eval_opinion" id="" cols="30" rows="10"></textarea>
                                                    
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>일자</th>
                                            <td class="ta_c f_bold" name="reg_date"><%= cal.get(Calendar.YEAR) %>.<%= cal.get(Calendar.MONTH)+1 %>.<%= cal.get(Calendar.DATE) %>.</th>
											<td class="ta_c f_bold">평가위원 성명</th>
											<td class="ta_c f_bold" style="text-align: right;"><input type="text" name="eval_writer" value ="${member.user_name}">(서명)</th>
                                        </tr>
                                        
                                    </tbody>

                                </table>
                            </div>

                            <div class="btn_wrap text-right same mt_20">
                                <button type="button" class="cancel">취소</button>
                                <button type="submit" class="normal">평가완료</button>
                            </div>
                          </form>


                        </div>
                    </div>
                </section>
            </div>
        </div>
        <footer></footer>
    </div>

	
</body>
</html>
