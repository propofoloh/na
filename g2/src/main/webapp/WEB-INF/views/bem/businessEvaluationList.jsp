<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <link rel="stylesheet" href="../../resource/css/board.css">

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
            %@include file="../cmm/topmenu.jsp"%>
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
                            <h2>사업평가리스트</h2>
                            <div class="inner box search_box">
                                <form method="get" action="?">
                                    <div class="board_search row">
                                        <div class="search_box">
                                            <div class="search2">
                                                <div class="s_select">
                                                    <label for="srSearchKey">검색분류</label>
                    
                                                    <select for="" name="srSearchKey" id="srSearchKey" title="분류값 제목, 내용, 연구책임자 선택">
                                                        <option value="">전체</option>
                                                        <option value="article_title">제목</option>
                                                        <option value="article_text">내용</option>
                                                    </select>
                    
                                                </div>
                                                <div class="s_search">
                                                    <input type="text" class="form-control" title="검색어 입력" id="search_val" name="srSearchVal" value="" placeholder="검색어를 입력해 주세요" aria-label="" aria-describedby="basic-addon1">
                                                    <input type="submit" title="검색" value="" class="btn_finder_s search_btn" onclick="javascript: document.search_form.submit();">
                                                </div>
                    
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //board_search -->
                                </form>
                            </div>
                            <div class="inner box mt15">
                                게시판 설명 영역
                            </div>

                            <div class="inner">
                                <div class="total">총 12570건</div>
                                <div class="board-wrap respon notscroll manage">			
                                
                                    <table summary="사업안내 | 사업공고 | 사업공지" class="board-basic horizon notice list dataroom notscroll ">
                                            
                                            <caption>사업안내 | 사업공고 | 사업공지에 순번, 사업명, 작성자, 등록일을 나타낸  테이블</caption>				
                                            <colgroup>
                                            
                                                <col style="width:10%">
                                                <col style="width:25%">
                                                <col style="width:14%">
                                                <col style="width:10%">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">평가 작성자</th>
                                                    <th scope="col">총점</th>
                                                    <th scope="col">작성일자</th>
                                                    <th scope="col">평가상태</th>
                                                </tr>
                                            </thead>
                                            <tbody>

								 <c:forEach items="${businessEvaluationList}" var = "businessEvaluationList">
										<tr>
											<td style="text-align: center">
												<a href="/bem/businessEvaluationDetail?bem_beval_idx=${businessEvaluationList.bem_beval_idx}&bpm_bplan_idx=${param.bpm_bplan_idx}"><c:out value="${businessEvaluationList.eval_writer}" /></a>
											</td>
											<td style="text-align: center">${businessEvaluationList.eval_totalscore}</td>
											<td style="text-align: center"><fmt:formatDate value="${businessEvaluationList.reg_date}" pattern="yyyy-MM-dd"/></td>
											<td style="text-align: center">점수등록 완료</td>
										</tr>
								</c:forEach> 
                                            </tbody>
                                    </table>
                                </div>
                            </div>    
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <footer></footer>
    </div>
</body>
</html>