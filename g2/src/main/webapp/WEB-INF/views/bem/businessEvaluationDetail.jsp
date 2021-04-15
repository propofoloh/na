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
    <link rel="stylesheet" href="../../resource/css/hj.css">
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
 	     var pHeader="<html><head><link rel='stylesheet' type='text/css' href='../../resource/css/sub.css'><title>" + print + "</title></head><body>";
 	     var pgetContent=document.getElementById("table_wrap").innerHTML + "<br>";
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
                            <div class="table_wrap" id="table_wrap">
                                <table>
                                    <colgroup>
                                        <col style="width:10%">
                                        <col style="width:auto">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">구분</th>
                                            <th scope="col">미래기술융합혁신제품지원</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="ta_c">사업명</td>
                                            <td class="ta_c">낙상감지기술 기반의 노약자용 변좌 자동 리프트 시스템</td>
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
                                            <th rowspan="6" class="f_bold">신청기업</th>
                                            <td rowspan="2" class="type ">추진계획타당성</td>
                                            <td>사전준비도 및 사업목표의 명확성</td>
                                            <td rowspan="2" class="score f_bold">20</td>
                                            <td rowspan="2" class="f_bold va_m ta_c">${read.eval_score1}</td>
                                        </tr>
                                        <tr>
                                            <td>사업 추진방안의 타당성</td>
                                        </tr>
                                        <tr>
                                            <td rowspan="2" class="type">지원 필요성 및 추진역량</td>
                                            <td>지원의 필요성 및 신청지원 분야의 적합성</td>
                                            <td rowspan="2" class="score f_bold">20</td>
                                            <td rowspan="2" class="f_bold va_m ta_c">${read.eval_score2}</td>
                                        </tr>
                                        <tr>
                                            <td>사업추진역량 및 의지</td>
                                        </tr>
                                        <tr>
                                            <td rowspan="2" class="type">지원 효과성 및 사업비 적정성</td>
                                            <td>사업지원의 기대효과</td>
                                            <td rowspan="" class="score f_bold ta_c" >15</td>
                                            <td rowspan="" class="f_bold va_m ta_c">${read.eval_score3}</td>
                                        </tr>
                                        <tr>
                                            <td>사업비 구성의 적정성 및 합리성</td>
                                            <td class="score f_bold ">15</td>
                                            <td class="score f_bold ta_c">${read.eval_score4}</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="2" class="f_bold">수행기관</th>
                                            <td rowspan="2" class="type">관련 분야 전문성 및 역량</td>
                                            <td>지원분야의 수행기관 매칭 적합성 및 관련 실적</td>
                                            <td rowspan="" class="score f_bold">15</td>
                                            <td rowspan="" class="f_bold ta_c va_m">${read.eval_score5}</td>
                                        </tr>
                                        <tr>
                                            <td>참여인력의 업무수행 능력 및 역량</td>
                                            <td class="score f_bold">10</td>
                                            <td class="ta_c f_bold">${read.eval_score6}</td>
                                        </tr>
                                        <tr class="total">
                                            <td colspan="3">합계</td>
                                            <td>100</td>
                                            <td class=""><span class="color_red f_bold">${read.eval_totalscore}</span></td>
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
                                            <td colspan="3" class="opi ta_c f_bold">
                                               ${read.eval_opinion}
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>일자</th>
                                            <td class="ta_c f_bold">2021.4.12</td>
                                            <td class="ta_c f_bold">평가위원 성명</td>
                                            <td class="ta_r f_bold sign"><span class="f_bold">${read.eval_writer}</span>(서명)</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="btn_wrap text-right same mt_20 d-flex justify-between">
                                <button type="button" class="cancel">목록</button>
                                <button type="button" class="normal" onclick="printFn()">인쇄</button>
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