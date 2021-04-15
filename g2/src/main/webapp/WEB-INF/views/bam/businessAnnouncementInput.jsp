<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width,user-scalable=no,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" name="Viewport" />
    <link rel="stylesheet" href="../../resource/css/reset.css">
    <link rel="stylesheet" href="../../resource/css/common.css">
    <link rel="stylesheet" href="../../resource/css/sub.css">
    <link rel="stylesheet" href="../../resource/css/board.css">
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
                    <li>사업공고</li>
               		 </ul>
                </section>
                <section class="sect2">
                <div  class="insideArea row">
                <div class="lnb">
                    <p class="tit">사용자</p>
                    <ul>
                        <li>
                            <a href="#">사업분류</a>
                        </li>
                        <li class="on">
                            <a href="#">사업공고</a>
                            <ul class="second_menu">
                                <li>· 사업공고일정</li>
                                <li class="on">· 사업공지</li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">사업질의응답</a>
                        </li>
                        <li>
                            <a href="#">사업자료실</a>
                        </li>
                        <li>
                            <a href="#">정보서비스</a>
                        </li>
                    </ul>
                </div>
                <div class="cont">
                    <h2>사업공지</h2>
                    	<div class="inner box mt15">
                                	게시판 설명 영역
                        </div>
                    <div class="inner">
                        <div class="board-wrap">
                        <form name="writeForm" method="post" action="/bam/businessAnnouncementInputWrite" enctype="multipart/form-data">
                            <table class="board-basic type-row">
                                <caption>사업안내 | 사업공고 | 사업공지에  사업명, 작성자, 내용, 공고기간, 첨부파일을 나타낸  테이블</caption>
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:auto">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row"><span>* </span>사업명</th>
                                        <td>
                                            <input type="text" name="anc_title" id="anc_title" placeholder="제목을 입력하세요.">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span>* </span>작성자</th>
                                        <td>
                                            <input type="text" name="writer" id="writer" class="" value="${member.user_name}" placeholder="${member.user_name}">
                                        </td>
                                    </tr>
                                     <tr>
                                        <th scope="row"><span>* </span>평가원선택</th>
                                        <td>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span>* </span>내용</th>
                                        <td>
                                            <textarea style="height: 300px" name="anc_remark" id="anc_remark"></textarea>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th scope="row">공고기간</th>
                                        <td>
                                            <input placeholder="시작 날짜" name="anc_begin_dt" class="date" type="text" id="datepicker"  title="입력 시작날짜" readonly="readonly">
                                            <input placeholder="마감 날짜" name="anc_end_dt" class="date" type="text" id="datepicker2"  title="입력 마감날짜" readonly="readonly">
                                        <td>
                                    </tr>
                                    <tr>
                                        <th scope="row">첨부파일</th>
                                        <td>
                                            <input type="file" name="bf_file[]" id="bf_file_2" class="file-loadingz" style="padding-bottom:5px" data-show-preview="false" onchange="checkFile(this)">
                                        </td>
                                    </tr>
                                   
                                </tbody>
                            </table>
                        </div> 
                        
                        <div class="board_btn_wrap btn2 right">
                            <div class="btn_wrap">
                            	 <button type="submit" class="red" onclick="window.location.href=''">등록</button>
                            	 <button type="button" class="gray" onclick="window.location.href='/bam/businessAnnouncementList'">목록보기</button>
                            </div>
                        </div>
                        </form>
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
                $("#datepicker2").datepicker({
                });
            });

    </script>
    </div>
</body>
</html>