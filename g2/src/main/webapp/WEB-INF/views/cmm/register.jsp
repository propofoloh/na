<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width,user-scalable=no,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" name="Viewport" />
    <link rel="stylesheet" href="../../resource/css/reset.css">
    <link rel="stylesheet" href="../../resource/css/common.css">
    <link rel="stylesheet" href="../../resource/css/sub.css">
    <link rel="stylesheet" href="../../resource/css/jquery-ui.css">

    <script type="text/javascript" src="../../resource/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../../resource/js/jquery-ui.js"></script>
    <script type="text/javascript" src="../../resource/js/sub.js"></script>

    <title>충북대 평가관리프로그램</title>
</head>
<body>
    <div class="wrap">
        <dl id="skip_nav">
            <dt>메뉴 건너띄기</dt>
            <dd>
                <a href="#contents">본문 바로가기</a>
                <a href="#gnb">대메뉴 바로가기</a>
            </dd>
        </dl>
        <header>
            <%@include file="../cmm/topmenu.jsp"%>
        </header>
        <div class="content">
            <span id="contents"></span>
            <div class="row content_outer">
                <section class="location sect1">
                    <ul class="insideArea row">
                        <li>사용자</li>
                        <li>회원가입</li>
                    </ul>
                </section>
                <section class="sect2">
                    <div  class="insideArea row">
                        <div class="lnb">
                            <p class="tit">사용자</p>
                            <ul>
                                <li>
                                    <a href="#">회원가입</a>
                                </li>
                            </ul>
                        </div>
                        <div class="cont">
                            <h2>회원가입</h2>
                            <div class="inner">
                                <div class="join_wrap "> 
                                    <p>회원가입유형</p>

                                    <form class="radio">
                                        <label class="radio_container ap" for="type1">
                                            <input type="radio" name="user_auth" id="type1" checked=""><span class="checkmark radio" title="클릭 평가위원 선택"></span>
                                            평가위원
                                        </label>
                                        <label class="radio_container ap" for="type2">
                                            <input type="radio" name="user_auth" id="type2" ><span class="checkmark radio" title="클릭 사업자 선택"></span>
                                            사업자
                                        </label>
                                    </form>
                                    

                                    <p class="mt15">아이디</p>
                                    <input type="text" name="user_id" title="입력 아이디"> <button class="id_checkbtn" type="button">중복확인</button>

                                    <p class="mt15">비밀번호</p>
                                    <input type="text"  title="입력 비밀번호">

                                    <p class="mt15">이름</p>
                                    <input type="text"  title="입력 이름">

                                    <p class="mt15">생년월일</p>
                                    <input class="birthday" type="text" id="datepicker"  title="입력 생년월일">

                                    <p class="mt15">휴대폰 번호</p>
                                    <input type="text" placeholder="전화번호 입력" title="입력 휴대폰 번호">

                                    <p class="mt15">이메일 주소</p>
                                    <input type="text" placeholder="이메일 주소 입력" title="입력 이메일">


                                    <button type="button">회원가입</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        <footer></footer>
        <script>
                $(function() {
                    $("#datepicker").datepicker({
                    });
                });

        </script>
    </div>
</body>
</html>