<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
    <title>CSS</title>
<style>
table {
	width: 100%;
	border: 1px solid #444444;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #444444;
}

body {
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
	margin: 0 1%;
}

.user {
	text-align: center;
	height: 50px;
}

.backslash {
	background:
		url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg"><line x1="0" y1="0" x2="100%" y2="100%" stroke="gray" /></svg>');
}

/* 평가 의견*/
#toc-content {
	display: none;
}

#toc-toggle {
	cursor: pointer;
	color: #2962ff;
}

#toc-toggle:hover {
	text-decoration: underline;
}

#overallOpinionBtn {
	background-color: white;
}
</style>
<script type="text/javascript">
$("span[name='toggle-control']").click(function() { 

    $('#target').toggle();

    $("span[name='toggle-control']").toggle();
});
</script>

<script>
$(document).ready(function() { 
	
	$("input").on("click",function(){
		
		var status = $(this).css('background-color'); 
   		alert(status)
    	if(status != "rgb(255, 255, 255)")   	
    		$(this).css('background-color','white');
    	else if(status == "rgb(255, 255, 255)")
    		$(this).css('background-color','black')
		setData();
		
	});
});
   
   	/* function idchk(this){
   		
   		var status = $(this).css('background-color'); 
   		alert(status)
    	if(status != "rgb(255, 255, 255)")   	
    		$(this).find("input").css('background-color','white');
    	else if(status =="rgb(255, 255, 255)")
    		$(this).find("input").css('background-color','black');
		setData();
   	} */
    function setData(){
    	
    	var value = $("#toc-content1").children().length;
    	if(value <= 0){
    		$("#toc-content1").append("<p>테스트입니다</p>");
    	}
    	else{
    		$("#toc-content1").children('p').remove();
    	}
    	
    }
    
    
</script>

  </head>
  
 <body>
  
  <form style="margin-bottom:30px;">
    <table border="3">
    	<p style="font-size: 1.5rem; font-weight: bolder; font-family: '돋움'; float: center; text-align: center;">충북청주 강소연구개발특구 특화기업 성장지원 사업 평가지표</p>
    	<colgroup>
    		<col style="width: 400px;;">
    		<col style="width: 500px;">
    		<col style="width: 500px;">
    		<col style="width: 500px;">
    		<col style="width: 500px;">
    		<col style="width: 500px;">
    		<col style="width: 500px;">
    		<col style="width: 200px;">
    		<col style="width: 200px;">
    		<col style="width: 300px;">
    	</colgroup>
      <thead>
        <tr style="height: 50px; background-color: #EAEAEA;">
          <th class="backslash"></th>
          <th colspan="6" scope="col">평가 항목별 점수</th>
          <th colspan="2" scope="col">합계</th>
          <th style="background-color: #FFFFFF; border: none;"></th>
        </tr>
      </thead>
      <tbody>
        <tr style="height: 100px; text-align: center; background-color: #EAEAEA;">
          <th>평가위원</th>
          <th>추진 계획 타당성</th>
          <th>지원 필요성 및 추진 역량</th>
          <th>사업 지원의 기대 효과</th>
          <th>사업비 구성의 적정성 및 합리성</th>
          <th>지원 분야의 수행기관 매칭 적합성 및 관련 실적</th>
          <th>참여 인력의 업무수행 능력 및 역량</th>
          <th>총합</th>
          <th>평균</th>
          <th style="background-color: #FFFFFF; border:none;"></th>
        </tr>
        
        <tr class="user">
          <td>평가위원1</td>
          <td>10</td>
          <td>12</td>
          <td>15</td>
          <td>16</td>
          <td>11</td>
          <td>19</td>
          <td>70</td>
          <td>50</td>
          <th style="border: none;">
			<input type="button" id="1" value = "button">
          </th>
        </tr>
        
        <tr class="user">
          <td>평가위원2</td>
          <td>10</td>
          <td>12</td>
          <td>15</td>
          <td>16</td>
          <td>11</td>
          <td>19</td>
          <td>80</td>
          <td>60</td>
          <th style="border: none;">
          	<input type="button" id="2" value = "button">
          </th>
        </tr>
        
        <tr class="user">
          <td>평가위원3</td>
          <td>10</td>
          <td>12</td>
          <td>15</td>
          <td>16</td>
          <td>11</td>
          <td>19</td>
          <td>75</td>
          <td>60</td>
          <th style="border: none;">
          	<input type="button" id="overallOpinionBtn" value = "button">
          </th>
        </tr>
        
        <tr class="user">
          <td>평가위원4</td>
          <td>10</td>
          <td>12</td>
          <td>15</td>
          <td>16</td>
          <td>11</td>
          <td>19</td>
          <td>90</td>
          <td>85</td>
          <th style="border: none;">
          	<input type="button" id="overallOpinionBtn" value = "button">
          </th>
        </tr>
        
        <tr class="user">
          <td>평가위원5</td>
          <td>10</td>
          <td>12</td>
          <td>15</td>
          <td>16</td>
          <td>11</td>
          <td>19</td>
          <td>총합</td>
          <td>평균</td>
          <th style="border: none;">
          	<input type="button" id="overallOpinionBtn" value = "button">
          </th>
        </tr>
        
        <tr class="user">
          <td>평가위원6</td>
          <td>10</td>
          <td>12</td>
          <td>15</td>
          <td>16</td>
          <td>11</td>
          <td>19</td>
          <td>총합</td>
          <td>평균</td>
          <th style="border: none;">
          	<input type="button" id="overallOpinionBtn" value = "button">
          </th>
        </tr>
        
        <tr class="user">
          <td>평가위원7</td>
          <td>10</td>
          <td>12</td>
          <td>15</td>
          <td>16</td>
          <td>11</td>
          <td>19</td>
          <td>총합</td>
          <td>평균</td>
          <th style="border: none;">
          	<input type="button" id="overallOpinionBtn" value = "button">
          </th>
        </tr>
        
        <tr class="user">
          <td>평가위원8</td>
          <td>10</td>
          <td>12</td>
          <td>15</td>
          <td>16</td>
          <td>11</td>
          <td>19</td>
          <td>총합</td>
          <td>평균</td>
          <th style="border: none;">
          	<input type="button" id="overallOpinionBtn" value = "button">
          </th>
        </tr>
        
        <tr class="user">
          <td>평가위원9</td>
          <td>10</td>
          <td>12</td>
          <td>15</td>
          <td>16</td>
          <td>11</td>
          <td>19</td>
          <td>총합</td>
          <td>평균</td>
          <th style="border: none;">
 			<input type="button" id="overallOpinionBtn" value = "button">
          </th>
        </tr>
        
        <tr class="user">
          <td>평가위원10</td>
          <td>10</td>
          <td>12</td>
          <td>15</td>
          <td>16</td>
          <td>11</td>
          <td>19</td>
          <td>총합</td>
          <td>평균</td>
          <th style="border: none;">
          	<input type="button" id="overallOpinionBtn" value = "button">
          </th>
        </tr>
      </tbody>
    </table>
    <div id="toc-content1">
	</div>
   </form>
  </body>
</html>