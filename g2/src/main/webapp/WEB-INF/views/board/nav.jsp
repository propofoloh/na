<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
li {
	list-style: none;
	display: inline;
	padding: 6px;
}
</style>
<ul>
	<c:if test="${member != null}">

		<li>
			<a href="/member/logout">로그아웃</a>
		</li>

<%-- 	<c:if test="${member.verify == 9}">
		<li>
			<a href="/board/list3">관리자 화면</a>
		</li>
	</c:if> --%>

	</c:if>

	<c:if test="${member == null}">
		<li><a href="/">로그인</a></li>
		<li><a href="/member/register">회원가입</a></li>
	</c:if>

	<li><c:if test="${member != null}">
			<p>${member.userId}님안녕하세요.</p>
		</c:if></li>

</ul>
