<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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
  
  .cancle_btn{
 	border : 0px;
	background-color: #B4B4B4;
	color : #ffffff;
	width : 100px;
	height: 50px;
	margin-right: 10px;
	font-size: 15px;
		
	}
	
  .write_btn{
  	border : 0px;
	background-color: #862640;
	color : #ffffff;
	width : 100px;
	height: 50px;
  	font-size: 15px;
  }
  
  .scoreSum{
  	clear: both;
  }
  
  #eval_totalscore{
  	margin-right : 10px;
  	width : 50%;
  	background-color: #EAEAEA;
  	text-align: center;
  	color : #FA5858;
  	font-weight: bold;
  	font-size: 15px;
  }
  
  
  
</style>
  <script type="text/javascript">
  
  $(document).ready(function(){
		  
	  $('.write_btn').click(function(){
			
		  var len = 8;
		  var arrEval_form_title =[];
		  var arrEval_form_item = [];
		  var arrEval_form_score = [];
		  var Sbam_anc_idx=${param.bam_anc_idx}
		 
		   for(var i =0; i < len;i++){
			  
			  arrEval_form_title.push(document.getElementsByName("eval_form_title")[i].value);
			  arrEval_form_item.push(document.getElementsByName("eval_form_item")[i].value);
			  arrEval_form_score.push(document.getElementsByName("eval_form_score")[i].value);
 				
			 
		  } 
		  
		  var objParams = {
				    "arrEval_form_title" : arrEval_form_title, 
					"arrEval_form_item" : arrEval_form_item ,
					"arrEval_form_score" : arrEval_form_score,
					"Sbam_anc_idx" : Sbam_anc_idx,
				};

					
		  
		   
		 
		  $.ajax({
				type: "POST",
				url : '/bam/businessEvaluationEdit',
				dataType :"text",
				data: objParams,
				success : function(data) {
									
					alert(data);					

				},
				error : function(request, status, error){
					alert(error);
				}
			});
 	 })
  })
  </script>
      <title>사업계획서 평가지표 양식 설정</title>
  </head>
  <body>
  <form name="writeForm" action="#">
  	<input type="hidden" name="bam_anc_idx" value="${param.bam_anc_idx}"/>
  	
  	<h1 style="text-align: center;"> 평가지표 설정 </h1>
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
	          <th scope="col">신청기업</th>
	          <th scope="col"><textarea name="eval_form_title">1</textarea></th>
	          <th scope="col"><textarea name="eval_form_item"></textarea></th>
	          <th scope="col"><input name="eval_form_score" class="maxScore" type="number" value="20"></th>	
	          <th scope="col"><input name="eval_score1" class="score" type="number"></th>
	        </tr>
	        
	        <tr>
	          <th scope="col">신청기업</th>
	          <th scope="col"><textarea name="eval_form_title">1</textarea></th>
	          <th scope="col"><textarea name="eval_form_item"></textarea></th>
	          <th scope="col"><input name="eval_form_score" class="maxScore" type="number" value="20"></th>	
	          <th scope="col"><input name="eval_score1" class="score" type="number"></th>
	        </tr>
	        
	        <tr>
	          <th scope="col">신청기업</th>
	          <th scope="col"><textarea name="eval_form_title">1</textarea></th>
	          <th scope="col"><textarea name="eval_form_item"></textarea></th>
	          <th scope="col"><input name="eval_form_score" class="maxScore" type="number" value="20"></th>	
	          <th scope="col"><input name="eval_score1" class="score" type="number"></th>
	        </tr>
	        
	        <tr>
	          <th scope="col">신청기업</th>
	          <th scope="col"><textarea name="eval_form_title">1</textarea></th>
	          <th scope="col"><textarea name="eval_form_item"></textarea></th>
	          <th scope="col"><input name="eval_form_score" class="maxScore" type="number" value="20"></th>	
	          <th scope="col"><input name="eval_score1" class="score" type="number"></th>
	        </tr>
	        
	        <tr>
	          <th scope="col">신청기업</th>
	          <th scope="col"><textarea name="eval_form_title">1</textarea></th>
	          <th scope="col"><textarea name="eval_form_item"></textarea></th>
	          <th scope="col"><input name="eval_form_score" class="maxScore" type="number" value="20"></th>	
	          <th scope="col"><input name="eval_score1" class="score" type="number"></th>
	        </tr>
	        
	        <tr>
	          <th scope="col">신청기업</th>
	          <th scope="col"><textarea name="eval_form_title">1</textarea></th>
	          <th scope="col"><textarea name="eval_form_item"></textarea></th>
	          <th scope="col"><input name="eval_form_score" class="maxScore" type="number" value="20"></th>	
	          <th scope="col"><input name="eval_score1" class="score" type="number"></th>
	        </tr>
	        
	        <tr>
	          <th scope="col">신청기업</th>
	          <th scope="col"><textarea name="eval_form_title">1</textarea></th>
	          <th scope="col"><textarea name="eval_form_item"></textarea></th>
	          <th scope="col"><input name="eval_form_score" class="maxScore" type="number" value="20"></th>	
	          <th scope="col"><input name="eval_score1" class="score" type="number"></th>
	        </tr>
	        
	        <tr>
	          <th scope="col">신청기업</th>
	          <th scope="col"><textarea name="eval_form_title">1</textarea></th>
	          <th scope="col"><textarea name="eval_form_item"></textarea></th>
	          <th scope="col"><input name="eval_form_score" class="maxScore" type="number" value="20"></th>	
	          <th scope="col"><input name="eval_score1" class="score" type="number"></th>
	        </tr>
	        
	        
	      
	        
	      
	        
	  </tbody>  
	 </table>
		 <div class="submitForm">
			    <input class ="cancle_btn" type="button" onclick="location.href='/bpm/businessPlanApplyList?bam_anc_idx=${param.bam_anc_idx}'" value="취소"> 
			    <input class ="write_btn" type="button" value="평가완료">
		</div>
    </form>
  </body>
</html>