<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>CSS</title>
<style>

  body{
  		font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
		margin :0 30%;
  }
  
  table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  
  th, td {
    border: 1px solid #444444;
  }
  textarea{
  	
  	width: 97%;
  	height: 90%;
  	border: 0px;
  	resize: none;
  	outline: none;
  	vertical-align : top;
  	margin-right: 5px;
  }
  p{
  	font-size: 1.5rem;
  	text-align: center;
  }
  tr th input {
  	border : 0px;
  	width : 80%;
  	min-height: 30px;
  	text-align: center;
  	margin-left: 13px;
  }
  
  .evaluationTableHeader{
  	background-color: #EAEAEA;
  }
  
  .evaluationTableSum{
  	background-color: #EAEAEA;
  }
  
  .rating{
 	clear: both;
 	color: #FA5858;
  }
  
  .subjecttable{
  	margin-bottom: 10px;
  }
  
  
  .remark{
  	height: 300px;
  }
  
  .sign{
  	width: 70%;
  }
  
  .submitForm{
  	display : flex;
  	margin-top : 30px;
  	float: right;
  }
  
  .canclebtn{
    border : 0px;
	background-color: #dd4132;
	color : #ffffff;
	width : 100px;
	height: 50px;
  	font-size: 15px;
 }
	
  .succesbtn{
  	border : 0px;
	background-color: #dd4132;
	color : #ffffff;
	width : 100px;
	height: 50px;
	margin-right: 10px;
	font-size: 15px;
  }
  
</style>
  </head>
  <body>
  	
  <form action="#">
  	<input type="text"value="${param.bam_anc_idx}"/>
    <table class="subjecttable">
    	<p>충북청주 강소연구개발특구 특화기업 성장지원 사업 평가지표</p>
    	<colgroup>
    		<col style="width:15%">
 			<col style="width:75%">
    	</colgroup>
      <thead>
        <tr>
          <th scope="col">구분</th>
          <th scope="col">미래기술융합혁신제품지원</th>
        </tr>
      </thead>
      <tbody>
        <tr style ="text-align : center; height: 50px;">
          <td>사업명</td><td>낙상감지기술 기반의 노약자용 변좌 자동 리프트 시스템</td>
        </tr>
      </tbody>
    </table>
    <table class="evaluationtable">
    	  <colgroup>
    		<col style="width:10%">
 			<col style="width:15%">
 			<col style="width:55%;">
 			<col style="width:10%">
 			<col style="width:10%">
    	  </colgroup>
      <thead>
	        <tr class ="evaluationTableHeader">
	          <th rowspan="6" scope="col">분류</th>
	          <th scope="col">구분</th>
	          <td scope="col">평가항목</th>
	          <th scope="col">배점</th>
	          <th scope="col">평점</th>
	        </tr>
	  </thead>
	  <tbody>
	        <tr>
	        <th rowspan="6" scope="col">신청기업</th>
	          <th rowspan="2" scope="col">추진계획 타당성</th>
	          <td scope="col">사전준비도 및 사업목표의 명확성</th>
	          <th rowspan="2" scope="col">20</th>	
	          <th rowspan="2" scope="col">15</th>
	        </tr>
	        <tr>
	          <td scope="col">사업 추진방안의 타당성</th>
	        </tr>
	        <tr>
	          <th rowspan="2" scope="col">지원 필요성 및 추진역량</th>
	          <td scope="col">지원의 필요성 및 신청지원 분야의 적합성</th>
	          <th rowspan="2" scope="col">20</th>
	          <th rowspan="2" scope="col">15</th>
	        </tr>
	         <tr>
	          <td scope="col">사업추진역량 및 의지</th>
	        </tr>
	         <tr>
	          
	          <th rowspan="2" scope="col">지원 효과성 및 사업비 적정성</th>
	          <td scope="col">사업지원의 기대효과</th>
	          <th scope="col">15</th>
	          <th scope="col">15</th>
	        </tr>
	         <tr>

	          <td scope="col">사업비 구성의 적정성 및 합리성</th>
	          <th scope="col">15</th>
	          <th scope="col">15</th>
	        </tr>
	         <tr>
	          <th rowspan="2" scope="col">수행기관</th>
	          <th rowspan="2" scope="col">관련 분야 전문성 및 역량</th>
	          <td scope="col">지원분야의 수행기관 매칭 적합성 및 관련 실적</th>
	          <th scope="col">15</th>
	          <th scope="col">10</th>
	        </tr>
	         <tr>
	          <td scope="col">참여인력의 업무수행 능력 및 역량</th>
	          <th scope="col">15</th>
	          <th scope="col">10</th>
	        </tr>
	        <tr class ="evaluationTableSum">
	 			<!-- 합계 -->
	        	<th colspan="3">합계</th>
		        <th>100</th>
		        <th class="rating">80</th>
		    </tr>
	  </tbody>  
	 </table>
	 
	  <table>
	  	<tbody>
	   		<tr style="height: 300px;">
				<th style="width: 20%;">평가의견</th>
				<th colspan="3">종합적인 의견을 보았을대 적합한 사업수행에 적합한 기업으로 평가됩니다.</th>
		    </tr>
		    <tr style="height: 50px;">
				<th style="width: 20%;">일자</div></th>
				<th>2021.03.02</th>
				<th>평가위원 성명</th>
				<th style="text-align: right">평가위원　　(서명)</th>
		    </tr>
	 	 </tbody>
	  </table>
		 
		 <div class="submitForm">
			    <input class ="succesbtn" type="button" value="선정" onclick="location.href='/evaluation/evaluationList'">
			    <input class ="canclebtn" type="button" value="탈락" onclick="location.href='/evaluation/evaluationList'"> 
		</div>
    </form>
    </table>
  </body>
</html>