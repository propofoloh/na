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
    <link rel="stylesheet" href="../../resource/css/board.css">

	<script type="text/javascript" src="../../resource/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../../resource/js/jquery-ui.js"></script>
    <script type="text/javascript" src="../../resource/js/sub.js"></script>
</head>
<script>
$(document).ready(function(){
	
	fn_addFile();
	
	


})	
function fn_addFile(){
	var fileIndex = 1;
	//$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"<button type='button' style='float:right;' id='fileAddBtn'>"+"추가"+"</button></div>");
	$("#fileAdd_btn").on("click", function(){
		$("#fileIndex").append("<div id='fileAddDiv'><input type='file' name='file_"+(fileIndex++)+"'>"+"</button>"+"<button type='button' style='float:right;' id='fileDelBtn'>"+"삭제"+"</button></div>");
	});
	$(document).on("click","#fileDelBtn", function(){
		$(this).parent().remove();
		
	});
	
	
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
					<form action="/bpm/businessPlanApply" method="post">
					<div class="p_15">
						<div class="tabcontent current" id="tab1">
							<h2 id="title1">${form.BPLAN_FORM_TITLE1}</h2>
							<textarea name="title_remark1" id="" cols="30" rows="10"></textarea>
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab2">
							<h2 id="title2" >${form.BPLAN_FORM_TITLE2}</h2>
							<textarea name="title_remark2" id="" cols="30" rows="10"></textarea>
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab3">
							<h2 id="title3">${form.BPLAN_FORM_TITLE3}</h2>
							<textarea name="title_remark3" id="" cols="30" rows="10"></textarea>					 
						</div><!--//#tab1-->
						<div class="tabcontent" id="tab4">
							<h2 id="title4" >${form.BPLAN_FORM_TITLE4}</h2>
							
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
                                    		<th ><input type="number"></th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현금</th>
                                    		<th ><input type="number"></th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현물</th>
                                    		<th >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">외부인건비</th>
                                    		<th class="boldtext">미지급</th>
                                    		<th >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현금</th>
                                    		<th >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현물</th>
                                    		<th >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" style="text-align: center"colspan="2">연구지원인력인건비</th>
                                    		<th >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">직</th>
                                    		<th class="boldtext" style="text-align:right"" colspan="3"_>학생인건비</th>
                                    		<th >15000</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">접</th>
                                    		<th class="boldtext" style="text-align:right"" colspan="3"_>인건비 소계</th>
                                    		<th >23000</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">비</th>
                                    		<th class="boldtext" colspan="2">연구시설</th>
                                    		<th class="boldtext">현금_일반</th>
                                    		<th >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">비</th>
                                    		<th class="boldtext" rowspan="2" colspan="2" style="vertical-align: middle;">장비비</th>
                                    		<th class="boldtext">현금통합관리</th>
                                    		<th  >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현물</th>
                                    		<th >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" rowspan="2" colspan="2" style="vertical-align: middle;">연구활동비</th>
                                    		<th class="boldtext">현금</th>
                                    		<th >12530</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현물</th>
                                    		<th >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" rowspan="2" colspan="2" style="vertical-align: middle;">연구재료비</th>
                                    		<th class="boldtext">현금</th>
                                    		<th >9000</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext">현물</th>
                                    		<th >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" colspan="3">연구수당</th>
                                    		<th >2000</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" colspan="3">위탁연구개발비</th>
                                    		<th >0</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext">　</th>
                                    		<th class="boldtext" colspan="3">직접비 소계</th>
                                    		<th >46530</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext" colspan="4">간접비</th>
                                    		<th >13470</th>
                                    	</tr>
                                    	<tr>
                                    		<th class="boldtext" colspan="4">연구개발비 총액</th>
                                    		<th >60000</th>
                                    	</tr>

                                    	
                                    	
                                    
                                    </tbody>
                                  
                                </table>
								</div> <!-- table box -->
							
						</div><!--//#tab1-->
						
						<div id="fileIndex">	
								<input type="file" id="input-file" style="display: none" />	
								<button id ="fileAdd_btn" class="normal" type="button">파일추가</button>
						</div>
						
						 <div class="btn_wrap text-right">
								<button type="submit" class="normal">작성</button>
							 </div>
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
