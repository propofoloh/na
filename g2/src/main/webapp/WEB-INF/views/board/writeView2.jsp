<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- datepicker 는 jquery 1.7.1 이상 bootstrap 2.0.4 이상 버전이 필요함 -->
<!-- jQuery가 먼저 로드 된 후 datepicker가 로드 되어야함.-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>게시판</title>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm']");
			$(".write_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "/board/write");
				formObj.attr("method", "post");
				formObj.submit();
			});
			fn_addFile();
		})
		function fn_valiChk(){
			var regForm = $("form[name='writeForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
		function fn_addFile(){
			var fileIndex = 1;
			//$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"<button type='button' style='float:right;' id='fileAddBtn'>"+"추가"+"</button></div>");
			$(".fileAdd_btn").on("click", function(){
				$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"</button>"+"<button type='button' style='float:right;' id='fileDelBtn'>"+"삭제"+"</button></div>");
			});
			$(document).on("click","#fileDelBtn", function(){
				$(this).parent().remove();
				
			});
		}
	</script>

<script>
$(function() {
  $( "#datepicker1" ).datepicker({
    dateFormat: 'yy-mm-dd'
  });
});
</script>

<style>
	.evaluator-check{
		border : 0px;
		background-color: #dd4132;
		color : #ffffff;
		width : 10%;
		height: 4%;
		margin-left: 5px;
	}
	
</style>
<body>

	<div class="container" id="root" style="margin-top:30px;">
		<div style="float:right;">
			<%@include file="nav.jsp"%>
		</div>
		<header>
			<h1>사업 리스트 등록</h1>
		</header>
		<hr />


		<section id="container">
			<form name="writeForm" method="post" action="/board/write"
				enctype="multipart/form-data">
				<table>
					<tbody>
						<c:if test="${member.userId != null}">
							<c:if test="${member.userId == null}">
								<p>로그인 후에 작성하실 수 있습니다.</p>
							</c:if>
							<div class="from-group" style="margin-top: 30px;">
								<label for="title">
								<h3>사업명</h3>
								</label>
								<input type="text" id="title" name="title" style="margin-left: 47px; padding: 10px; width: 41%; height: 4%;" />
							</div>

				<div class="from-group" style="margin-top: 30px;">
					<label for="date">
						<h3>공고일자</h3> 
					</label>  
					<input type="text" id="datepicker1" style="margin-left: 30px; width: 20%; height: 4%;"> ~ 
					<input type="text" id="datepicker1" style="width:20%; height: 4%;">
					<button class="evaluator-check"  type="button" id="submit">평가원 선택</button>
				</div>

							<div class="from-group" style="margin-top: 30px;">
								<label for="content">
									<h3>내용</h3>
								</label>
								<textarea id="content3" name="content" class="form-control"
									title="내용" style="height: 100px;"></textarea>
							</div>
				
							<tr>
								<td>
									<button style="margin-top: 10px;" class="btn btn-success"
										type="submit">등록</button>
							<label classNam=="input-file-button" for="input-file"
								style="margin-top: 10px;" class="btn btn-success"> 첨부파일 </label>
							<input type="file" id="input-file" style="display: none" />
							
								<div class="form-group" style="margin-top: 30px; width: 100%">
									<label for="writer" class="col-sm-2 control-label" style="width: 380px;">작성자</label>
									<input type="text" id="writer" name="writer" class="form-control" value="${member.userId}"  readonly="readonly" style="width: 100px"/>
								</div>
							</td>
						</tr>
							

						</c:if>
					</tbody>
				</table>
			</form>
		</section>
		<hr />
	</div>
</body>
</html>