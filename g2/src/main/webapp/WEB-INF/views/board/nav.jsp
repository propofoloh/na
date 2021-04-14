<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <link rel="stylesheet" href="../../resource/css/reset.css">
    <link rel="stylesheet" href="../../resource/css/common.css">
    <link rel="stylesheet" href="../../resource/css/sub.css">
    <link rel="stylesheet" href="../../resource/css/board.css">
<style type="text/css">

</style>

<ul>
	<c:if test="${member != null}">

		<li>
			<a href="/cmm/logout">로그아웃</a>
		</li>


	</c:if>

	<c:if test="${member == null}">
		<li><a href="/">로그인</a></li>
	</c:if>

	<li><c:if test="${member != null}">
			 	<p>${member.userId}님, 안녕하세요!</p>
                <p><img src="" alt=""></p>
                <a href="/cmm/logout">로그아웃</a>
		</c:if></li>

</ul>
