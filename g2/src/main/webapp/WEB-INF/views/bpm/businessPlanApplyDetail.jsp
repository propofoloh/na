<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>게시판</title>
</head>

<style>
	.evaluationbtn{
	
		float: right;
		border : 0px;
		background-color: #dd4132;
		color : #ffffff;
		width :  8%;
		height : 5%;
		border-radius: 5px;
		margin-top : 10px;
		margin-left : 5px;
	}
	
	.opinionbtn{
		float: right;
		border : 0px;
		background-color: #dd4132;
		color : #ffffff;
		width :  8%;
		height : 5%;
		border-radius: 5px;
		margin-top : 10px;
		margin-left : 5px;
		
	}

	.scorebtn{
		float: right;
		border : 0px;
		background-color: #dd4132;
		color : #ffffff;
		width :  8%;
		height : 5%;
		border-radius: 5px;
		margin-top : 10px;
		margin-right: 5px;
	}
	

</style>
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
<body>

	<div class="container" id="root" style="margin-bottom:10px;">
		<div style="float:right;">
			<%@include file="../board/nav.jsp"%>
		</div>
		<header>
			<h1>사업계획서 접수</h1>
		</header>
		<hr />


		<section id="container">
			<form name="writeForm" method="post" action="/board/write"
				enctype="multipart/form-data">
				<table>
					<tbody>
						<c:if test="${member.user_id != null}">
							<c:if test="${member.user_id == null}">
								<p>로그인 후에 작성하실 수 있습니다.</p>
							</c:if>
							<div class="from-group">
								<label for="research_obj" class="colsm-2 control-Label">연구목표</label>
								<input type="text" id="research_obj" name="research_obj" class="form-control"
									title="연구목표를 입력하세요." readonly="readonly" value="<c:out value="${read.research_obj}"/>">
							</div>

							<div class="from-group" style="margin-top: 30px;">
								<label for="research_remark">연구내용</label>
								<input type="text" id="research_remark" name="research_remark" class="form-control"
									title="연구내용을 입력하세요." readonly="readonly" value="<c:out value="${read.research_remark}"/>">
							</div>

							<div class="from-group" style="margin-top: 30px;">
								<label for="benefit">기대효과</label>
								<input type="text" id="benefit" name="benefit" class="form-control"
									title="기대효과를 입력하세요." readonly="readonly" value="<c:out value="${read.benefit}"/>">
							</div>

							<div class="from-group" style="margin-top: 30px;">
								<label for="research_cost">연구 개발비 총괄</label>
								<input type="text" id="research_cost" name="research_cost" class="form-control"
									title="연구 개발비 총괄을 입력하세요." readonly="readonly" value="<c:out value="${read.research_cost}"/>">
							</div>

							
				<div class="form-group" style="margin-top: 30px;">
					<label for="writer" class="col-sm-2 control-label" style="width: 80px">작성자</label>
					<input type="text" id="writer" name="writer" class="form-control" value="${member.user_id}"  readonly="readonly" style="width: 100px"/>
				</div>
			 	<span>파일 목록</span>
				<div class="form-group" style="border: 1px solid #dbdbdb;">
					
					<c:forEach var="file" items="${file}">
						<a href="#" onclick="fn_fileDown('${file.file_idx}'); return false;">${file.file_sname}</a>(${file.FILE_SIZE})<br>
					</c:forEach>
				</div>
				<hr/>
			

						</c:if>
					</tbody>
				</table>
			</form>
		</section>
		<hr />
			<div class="from-group">
				<input type="hidden" value="${read.bpm_bplan_idx}"/>
				<button type="button" class="opinionbtn" onclick="location.href='../bem/businessEvaluationOpinion'">종합의견</button>
				<button type="button" class="evaluationbtn" onclick="location.href='../bem/businessEvaluation'">평가하기</button>
			</div>
	</div>
</body>
</html>