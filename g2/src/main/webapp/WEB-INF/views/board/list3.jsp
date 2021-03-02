<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<title>평가가위원 화면</title>
</head>
<body>
	<div style="float: right;">
		<%@include file="nav.jsp"%>
	</div>
	<div class="container">
		<header>
			<h1>평가 사업</h1>
		</header>
		<hr />

		<section id="container">
			<form role="form" method="get">

				<div class="search row" style="float: right; width: 500px;">
					<div class="col-xs-3 col-sm-3"
						style="margin-left: 3px; margin-right: -25px;">
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

					<div class="col-xs-7 col-sm-7" style="width: 390px">
						<div class="input-group">
							<input type="text" name="keyword" id="keywordInput"
								value="${scri.keyword}" class="form-control" /> <span
								class="input-group-btn">
								<button id="searchBtn" type="button" class="btn btn-default">검색</button>
							</span>
						</div>
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
					<tr>
						<td style="text-align: center;">1</td>
						<td style="text-align: center;"><a href="/board/readView?bno=${list.bno}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out value="${list.title}" />사업1</a></td>
						<td style="text-align: center;">홍길동</td>
						<td style="text-align: center;">2021-02-22</td>
						<td style="text-align: center;">100</td>
					</tr>
					<tr>
						<td style="text-align: center;">2</td>
						<td style="text-align: center;">사업2</td>
						<td style="text-align: center;">작성자2</td>
						<td style="text-align: center;">2021-02-22</td>
						<td style="text-align: center;">105</td>
					</tr>
					<tr>
						<td style="text-align: center;">3</td>
						<td style="text-align: center;">사업3</td>
						<td style="text-align: center;">작성자3</td>
						<td style="text-align: center;">2021-02-22</td>
						<td style="text-align: center;">141</td>
					</tr>


					<%-- <c:forEach items="${list}" var = "list2">
							<tr>
								<td><c:out value="${list.bno2}" /></td>
								<td>
									<a href="/board/readView?bno2=${list.bno2}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out value="${list.title2}" /></a>
								</td>
								<td><c:out value="${list.writer2}" /></td>
								<td><fmt:formatDate value="${list.regdate2}" pattern="yyyy-MM-dd"/></td>
								<td><c:out value="${list.hit2}" /></td>
							</tr>
						</c:forEach> --%>

				</table>

				<div class="col-md-offset-3"
					style="text-align: center; margin-left: 0px;">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li><a
								href="list2${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}" var="idx">
							<li
								<c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
								<a href="list2${pageMaker.makeSearch(idx)}">${idx}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a
								href="list2${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
						</c:if>
					</ul>
				</div>
			</form>
		</section>
		</div>
</body>
</html>