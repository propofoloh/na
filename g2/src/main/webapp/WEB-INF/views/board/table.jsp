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
		margin :0 20%;
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
  tr th input {
  	border : 0px;
  	width : 90%;
  	min-height: 30px;
  	text-align: center;
  	
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
	background-color: #EAEAEA;
	color : #000000;
	width : 100px;
	height: 50px;
	margin-right: 10px;
		
	}
  .succesbtn{
  	border : 0px;
	background-color: #dd4132;
	color : #ffffff;
	width : 100px;
	height: 50px;
  
  }
  
</style>
  </head>
  <body>
  	
  <form action="#">
    <table>
    	<p style="font-size: 1.5rem; font-weight: bolder; font-family: '돋움'; float: center; text-align: center;">충북청주 강소연구개발특구 특화기업 성장지원 사업 평가지표</p>
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
    <table class="evaluationboard">
    	  <colgroup>
    		<col style="width:10%">
 			<col style="width:15%">
 			<col style="width:55%">
 			<col style="width:10%">
 			<col style="width:10%">
    	  </colgroup>
      <thead>
	        <tr>
	          <th rowspan="6" scope="col">분류</th>
	          <th scope="col">구분</th>
	          <th scope="col">평가항목</th>
	          <th scope="col">배점</th>
	          <th scope="col">평점</th>
	        </tr>
	  </thead>
	  <tbody>
	        <tr>
	        <th rowspan="6" scope="col">신청기업</th>
	          <th rowspan="2" scope="col"><textarea></textarea></th>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>	
	          <th scope="col"><input type="number"></th>
	        </tr>
	        <tr>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th scope="col"><input type="number"></th>
	        </tr>
	        <tr>
	          
	          <th rowspan="2" scope="col"><textarea></textarea></th>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th scope="col"><input type="number"></th>
	        </tr>
	         <tr>
	         
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th scope="col"><input type="number"></th>
	        </tr>
	         <tr>
	          
	          <th rowspan="2" scope="col"><textarea></textarea></th>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th scope="col"><input type="number"></th>
	        </tr>
	         <tr>

	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th scope="col"><input type="number"></th>
	        </tr>
	         <tr>
	          <th rowspan="2" scope="col">수행기관</th>
	          <th rowspan="2" scope="col"><textarea></textarea></th>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th scope="col"><input type="number"></th>
	        </tr>
	         <tr>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th scope="col"><input type="number"></th>
	        </tr>
	 			<!-- 합계 -->
	        	<th colspan="3">합계</th>
		        <th>100</th>
		        <th>0</th>
	  </tbody>  
	 </table>
	 
	  <table>
	  	<tbody>
	   		<tr style="height: 300px;">
				<th style="width: 20%;">평가의견</th>
				<th colspan="3"><textarea class="remark"></textarea></th>
		    </tr>
		    <tr style="height: 50px;">
				<th style="width: 20%;">일자</div></th>
				<th>2021.03.02</th>
				<th>평가위원 성명</th>
				<th style="text-align: right"><input class="sign "type="text">　　　(서명)</th>
		    </tr>
	 	 </tbody>
	  </table>
		 
		 <div class="submitForm">
			    <input class ="canclebtn" type="button" value="취소"> 
			    <input class ="succesbtn" type="button" value="평가완료">
		</div>
    </form>
    </table>
  </body>
</html>