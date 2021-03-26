<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  	vertical-align : top;
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
 			
 			var inputData = $(this).val();
            var Sum = 0;
           
            $('.score').each(function(idx,value){ 
                if(!isNaN(this.value)&&this.value.length!=0){
                	if(Sum <= 100 ){
	                	Sum+=Number($(value).val());
	                    $('#scoreSum').text(Sum);
                	}else{
                		$(this).val()
                		Sum = Sum - Number($(value).val());
                		alert("배점이 100점을 넘을수 없습니다.")
                		return false;
                		}	
           
                }	
           
            });
 			
         });
 		
 		
  	})
  
  </script>
  </head>
  <body>
  	
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
	          <th rowspan="2" scope="col"><textarea></textarea></th>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>	
	          <th scope="col"><input class="score" type="number"></th>
	        </tr>
	        <tr>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th  scope="col"><input class="score" type="number"></th>
	        </tr>
	        <tr>
	          
	          <th rowspan="2" scope="col"><textarea></textarea></th>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th scope="col"><input class="score" type="number"></th>
	        </tr>
	         <tr>
	         
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th id="score4" scope="col"><input class="score" type="number"></th>
	        </tr>
	         <tr>
	          
	          <th rowspan="2" scope="col"><textarea></textarea></th>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th id="score5" scope="col"><input class="score" type="number"></th>
	        </tr>
	         <tr>

	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th id="score6" scope="col"><input class="score"type="number"></th>
	        </tr>
	         <tr>
	          <th rowspan="2" scope="col">수행기관</th>
	          <th rowspan="2" scope="col"><textarea></textarea></th>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th id="score7" scope="col"><input class="score" type="number"></th>
	        </tr>
	         <tr>
	          <th scope="col"><textarea></textarea></th>
	          <th scope="col"><input type="number"></th>
	          <th id="score8" scope="col"><input class="score" type="number"></th>
	        </tr>
	        <tr class="evaluationTableSum">
	 			<!-- 합계 -->
	        	<th  colspan="3">합계</th>
		        <th>100</th>
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
				<th>2021.03.02</th>
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