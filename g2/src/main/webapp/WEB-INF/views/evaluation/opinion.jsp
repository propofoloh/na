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

form p{

	font-size: 2.5rem; 
	font-weight: bolder; 
	font-family: '돋움'; 
	float: center; 
	text-align: center;"

}



th, td {
	border: 1px solid #444444;
}

body {
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
	margin: 0 20%;
}

.user {
	text-align: center;
	height: 50px;
}

.backslash {
	background:
		url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg"><line x1="0" y1="0" x2="100%" y2="100%" stroke="gray" /></svg>');
}




thead tr td{
	font-weight: bold;
	text-align: center;
}

tfoot tr {
	font-weight: bold;
	text-align: center;
	background-color: #EAEAEA;
	
}
td input{

	border : 0px;
	background-color: #dd4132;
	color : #ffffff;
	width :  80%;
	height : 40px;
	border-radius: 5px;
}

.opiniondiv{

	border : 2px solid;
	width : 100%;
	height: 40%;
	
}

.toptable {
	height: 50px; 
	background-color: #EAEAEA;
}

.middletable{
	height: 100px; 
	background-color: #EAEAEA;
}

.listbtn{
	float : right;
	border : 0px;
	background-color: #dd4132;
	color : #ffffff;
	width :  10%;
	height : 40px;
	border-radius: 5px;
	margin-top : 10px;
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
    	if(status != "rgb(221, 65, 50)")   	
    		$(this).css('background-color','#dd4132');
    	else if(status == "rgb(221, 65, 50)")
    		$(this).css('background-color','#5D0000')
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
    	
    	var value = $(".opiniondiv").children().length;
    	if(value <= 0)
    		$(".opiniondiv").append("<p>테스트입니다</p>");
    	else{
    		$(".opiniondiv").children('p').remove();
    		$(".opiniondiv").append("<p>테스트입니다2</p>");
    		}
    	
    }
    
    
</script>

  </head>
  
 <body>
  
  <form style="margin-bottom:30px;">
    <table border="3">
    	<p>충북청주 강소연구개발특구 특화기업 성장지원 사업 평가지표</p>
    	<colgroup>
    		<col style="width: 400px;;">
    		<col style="width: 200px;">
    		<col style="width: 200px;">
    		<col style="width: 200px;">
    		<col style="width: 200px;">
    		<col style="width: 200px;">
    		<col style="width: 200px;">
    		<col style="width: 100px;">
    		<col style="width: 100px;">
    		<col style="width: 200px;">
    	</colgroup>
      <thead>
	        <tr class="toptable">
	          <td class="backslash"></td>
	          <td colspan="6" scope="col">평가 항목별 점수</td>
	          <td colspan="2" scope="col">합계</td>
	          <th></th>
	        </tr>

	        <tr class="middletable">
	          <td>평가위원</td>
	          <td>추진 계획 타당성</td>
	          <td>지원 필요성 및 추진 역량</td>
	          <td>사업 지원의 기대 효과</td>
	          <td>사업비 구성의 적정성 및 합리성</td>
	          <td>지원 분야의 수행기관 매칭 적합성 및 관련 실적</td>
	          <td>참여 인력의 업무수행 능력 및 역량</td>
	          <td>총합</td>
	          <td>평균</td>
	          <td>평가의견</td>
	        </tr>
        </thead>
        <tbody>
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
          <td>
			<input type="button" value = "평가의견">
          </td>
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
          <td>
          	<input type="button" value = "평가의견">
          </td>
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
          <td>
          	<input type="button" value = "평가의견">
          </td>
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
          <td>
          	<input type="button" value = "평가의견">
          </td>
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
          <td>
          	<input type="button" value = "평가의견">
          </td>
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
          <td>
          	<input type="button" value = "평가의견">
          </td>
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
          <td>
          	<input type="button" value = "평가의견">
          </td>
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
          <td>
          	<input type="button" value = "평가의견">
          </td>
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
          <td>
 			<input type="button" value = "평가의견">
          </td>
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
          <td>
          	<input type="button" value = "평가의견">
          </td>
        </tr>
      </tbody>
      <tfoot>
      	<tr>
      		<td colspan="7">합계</td>
      		<td>745</td>
      		<td colspan="2">74.5</td>
      	</tr>
      </tfoot>
    </table>
    <div class ="opiniondiv">
	
	</div>
		<button type="button" class="listbtn"  onclick="location.href='/businessplan/bpList'">목록</button>
   </form>
  </body>
</html>