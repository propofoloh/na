<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 
	 	<title>게시판</title>
	</head>

	<style>
	body{
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
			margin :0 20%;
	}
	.searchrow{
		float : right;
		margin-bottom: 20px;
		
	}
	
	#searchdiv{
		width : 350px;
		display: flex;
	}
	#searchbox{
	
		margin-right: -30px;
	}
	.searchBtn{
	
		border : 0px;
		background-color: #dd4132;
		color : #ffffff;
		width : 25%;
		margin-right: -52px;
		border-radius: 5px;
	}
	.writebtn{
		float: right;
		border : 0px;
		background-color: #dd4132;
		color : #ffffff;
		width :  8%;
		height : 5%;
		border-radius: 5px;
		margin-top : 10px;
	
	}
	
	.pasingDiv{
		margin-top : 25px;
		
	}
	
	
	</style>
	<body>
		<div style="float: right;">
			<%@include file="nav.jsp"%>
		</div>
			<header>
				<h1>접수 중인 사업</h1>
			</header>
			<hr />
			
			<section id="container">
				<form role="form" method="get">
				<div class="searchrow">
					<div id="searchbox"class="col-sm-3">
						<select name="searchType" class="form-control">
							<option value="n"
								<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
							<option value="t"
								<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>사업명</option>
							<option value="c"
								<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
							<option value="w"
								<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
							<option value="tc"
								<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>사업명+내용</option>
						</select>
					</div>
					<div id="searchdiv" class="col-xs-7 col-sm-7">
						<input type="text" name="keyword" id="keywordInput"value="${scri.keyword}" class="form-control"> 
						<button id="searchBtn" type="button" class="searchBtn">검색</button>
					</div>

					<script>
						 $(function(){
							 $('#searchBtn').click(function() {
								 self.location = "list2" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
							 });
						 });   
					</script>
				</div>
				
					<table class="table table-hover">
						<thead>
							<tr>
								<th style="width: 60px; text-align: center;">번호</th>
								<th style="width: 650px; text-align: center;">사업명</th>
								<th style="width: 100px; text-align: center;">작성자</th>
								<th style="width: 120px; text-align: center;">공고일자</th>
								<th style="width: 80px; text-align: center;">조회수</th>
							</tr>
						</thead>
						
						<c:forEach items="${list}" var = "list">
							<tr>
								<td style="text-align: center;"><c:out value="${list.bno}" /></td>
								<td style="text-align: center;">
									<a href="/board/readView?bno=${list.bno}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out value="${list.title}" /></a>
								</td>
								<td style="text-align: center;"><c:out value="${list.writer}" /></td>
								<td style="text-align: center;"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></td>
								<td style="text-align: center;"><c:out value="${list.hit}" /></td>
							</tr>
						</c:forEach>
					</table>
					<button type="button" class="writebtn"  onclick="location.href='writeView'">사업등록</button>

					<div class="pasingDiv" style="width:100%; text-align: center">
						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
								<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
							</c:if> 
							
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li <c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
								<a href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
							</c:forEach>
							
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
							</c:if> 
						</ul>
					</div>
				</form>
			</section>
	</body>
</html>