<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
</head>
<body>
    <h2>회원 목록</h2>
    <table border="1" width="700px">
        <tr>
            <th>아이디</th>
            <th>이름</th>
            <th>전화번호</th>
            <th>이메일</th>
            <th>권한</th>
        </tr>
        <c:forEach var="row" items="${list}">
        <tr>
            <td>${member.user_id}</td>
            <td>${member.user_name}</td>
            <td>${member.hp_num}</td>
            <td>${member.user_email}</td>
            <td>${member.user_auth}</td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>
