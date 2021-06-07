<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
<title>Home</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<br />
 <script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		$("#registerBtn").on("click", function(){
			location.href="member/Agreement";
		})
		$("#memberDeleteBtn").on("click", function(){
			location.href="member/memberDeleteView";
		})
		
		
		$("#memberUpdateBtn").on("click", function(){
			location.href="member/memberUpdateView";
		})
		
	})
</script>
<style>
body {
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
		
		margin :0 35%;
}

.admin-text {
	margin: 90px 0px 50px 0px;
	text-align: center;
	font-size: 35px;
	font-weight: 5px;
	
}

.adminForm {
	display: flex;
	flex-direction: column;
	margin: 0px 30px;
}

.adminForm input {
	border: none;
	padding: 10px 0px;
	font-size: 18px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.2);
	transition: border-color 0.3s ease-in-out;
	margin-bottom: 25px;

	
}
#admin{
	color : #ffffff;
	background-color: #dd4132;
}
	
.admiForm input::placeholder {
	color: rgba(0, 0, 0, 0.4);
}

.adminForm input:focus {
	border-color: #11b20d;
}

.adminform-checkbox{
	text-align : right;
}

.register{
	text-align : center; 
}
.register input{
	 width : 49%;
	 background-color: #dd4132;
	 color : #ffffff;
}
</style>

<body>
	<div class="admin-text">admin</div>
	
	<div>
		<p>asdASdasfadfsadfsadf</p>
	</div>


</body> 
</html>