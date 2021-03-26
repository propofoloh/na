<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>CSS</title>
    <script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	display : flex;
  	margin-right: 5px;
  }
  p{
  	font-size: 1.5rem;
  	text-align: center;
  }
  tr th input {
  	border : 0px;
  	width : 75%;
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
	background-color: #B4B4B4;
	color : #ffffff;
	width : 100px;
	height: 50px;
	margin-right: 10px;
	font-size: 15px;
		
	}
	
  .succesbtn{
  	border : 0px;
	background-color: #dd4132;
	color : #ffffff;
	width : 100px;
	height: 50px;
  	font-size: 15px;
  }
  
</style>
  <script type="text/javascript">
 	 $(document).ready(function(){
 		
 		
 		 $('.score').on('keyup',function(){
 			 var Sum = 0;
            $('.score').each(function(idx,value){ 
                if(!isNaN(this.value)&&this.value.length!=0){
	                	Sum+=Number($(value).val());
	                	if(Sum <= 100)
	                    	$('#scoreSum').text(Sum);
	                	else if(Sum > 100){
            				$('#scoreSum').text(Sum-Number($(value).val()));
            				this.value=null;
            				this.focus();
            				return ;
	                	}
            			
            		}	
            });
            if(Sum > 100) alert("배점이 100점을 넘을수 없습니다.")
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
  </head>
  <body>
  	<% Calendar cal = Calendar.getInstance(); %>
  <form action="#">
    <table>
    	<p>충북청주 강소연구개발특구 특화기업 성장지원 사업 평가지표</p>
    	<input type="hidden" value="${param.bam_anc_idx}"/>
    	<colgroup>
    		<col style="width:15%">
 			<col style="width:75%">
    	</colgroup>
      <thead>
        <tr>
          <th scope="col">구분</th>
          <th scope="col">${ancInfo.anc_title}</th>
        </tr>
      </thead>
      <tbody>
        <tr style ="text-align : center; height: 50px;">
          <td>사업명</td><td>${ancInfo.anc_title}</td>
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
	        <tr class="evaluationTableHeader">
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
	          <th rowspan="2" scope="col"><textarea>추진계획타당성</textarea></th>
	          <th scope="col"><textarea>사전준비도 및 사업목표의 명확성</textarea></th>
	          <th rowspan="2" scope="col"><input class="maxScore" type="number" value="20"></th>	
	          <th rowspan="2" scope="col"><input class="score" type="number"></th>
	        </tr>
	        <tr>
	          <th scope="col"><textarea>사업 추진방안의 타당성</textarea></th>
	        </tr>
	        <tr>
	          <th rowspan="2" scope="col"><textarea>지원 필요성 및 추진역량</textarea></th>
	          <th scope="col"><textarea>지원의 필요성 및 신청지원 분야의 적합성</textarea></th>
	          <th rowspan="2" scope="col"><input class="maxScore" type="number" value="20"></th>
	          <th rowspan="2" scope="col"><input class="score" type="number"></th>
	        </tr>
	         <tr>
	          <th scope="col"><textarea>사업추진역량 및 의지</textarea></th>
	        </tr>
	         <tr>
	          
	          <th rowspan="2" scope="col"><textarea>지원 효과성 및 사업비 적정성</textarea></th>
	          <th scope="col"><textarea>사업지원의 기대효과</textarea></th>
	          <th  scope="col"><input class="maxScore" type="number" value="15"></th>
	          <th  scope="col"><input class="score" type="number"></th>
	        </tr>
	         <tr>

	          <th scope="col"><textarea>사업비 구성의 적정성 및 합리성</textarea></th>
	          <th scope="col"><input class="maxScore" type="number" value="15"></th>
	          <th scope="col"><input class="score"type="number"></th>
	        </tr>
	         <tr>
	          <th rowspan="2" scope="col">수행기관</th>
	          <th rowspan="2" scope="col"><textarea>관련 분야 전문성 및 역량</textarea></th>
	          <th scope="col"><textarea>지원분야의 수행기관 매칭 적합성 및 관련 실적</textarea></th>
	          <th scope="col"><input class="maxScore" type="number" value="15"></th>
	          <th id="score7" scope="col"><input class="score" type="number"></th>
	        </tr>
	         <tr>
	          <th scope="col"><textarea>참여인력의 업무수행 능력 및 역량</textarea></th>
	          <th scope="col"><input class="maxScore" type="number" value="15"></th>
	          <th id="score8" scope="col"><input class="score" type="number"></th>
	        </tr>
	        <tr class="evaluationTableSum">
	 			<!-- 합계 -->
	        	<th  colspan="3">합계</th>
		        <th id="MaxScoreSum">100</th>
		        <th id="scoreSum">0</th>
		    </tr>
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
				
				<th><%= cal.get(Calendar.YEAR) %>.
					<%= cal.get(Calendar.MONTH)+1 %>.
					<%= cal.get(Calendar.DATE) %>.</th>
				<th>평가위원 성명</th>
				<th style="text-align: right"><input type="text" value ="  　     　(서명)"></th>
		    </tr>
	 	 </tbody>
	  </table>
		 
		 <div class="submitForm">
			    <input class ="canclebtn" type="button" value="취소"> 
			    <input class ="succesbtn" type="button" onclick="location.href='/evaluation/evaluationList'" value="평가완료">
		</div>
    </form>
    </table>
  </body>
</html>