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
<script type="text/javascript">
$(document).ready(function(){
	
	var memberInfo = new Array();
	fn_addFile();
	$('input[type=checkbox]').click(function(){
			
		var rowData = new Array();
		var memberArr = new Array();
		var arrId = new Array();
		var arrName= new Array();
		var checkbox = $("input[name=checkedUserId]:checked");
		// 체크된 체크박스 값을 가져온다
			checkbox.each(function(i) {
				if(i=0)
				memberArr = new Array();
				
				// checkbox.parent() : checkbox의 부모는 <td>이다.
				// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
				var tr = checkbox.parent().parent().eq(i);
				var td = tr.children();
				
				// 체크된 row의 모든 값을 배열에 담는다.
				rowData.push(tr.text());
				
				// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
				var user_id = td.eq(2).text()+"";
				var user_name= td.eq(1).text()+"";
				
				// 가져온 값을 배열에 담는다.
				memberArr.push(user_id); 
				arrId.push(user_id);
				arrName.push(user_name);
				
			});
			memberInfo = memberArr
			$('#check_Btn').click(function(){
				alert(memberArr.length);
				if(memberArr.size < 1){
					
				$.each(memberArr, function(index,item){
					$('#evaluatorList').append('<div>'+memberArr[index]+'</div>') ;
				});
				
				$.each(arrId, function(index,item){
					$('#evaluatorList').append("<input type='text' name='anc_member_id' value='"+arrId[index]+"'>") ;
				});
				
				$.each(arrName, function(index,item){
					$('#evaluatorList').append("<input type='text' name='anc_member_name' value='"+arrName[index]+"'>") ;
				});
				}
				close_pop();
			})
			
	})
	 
	/* var formdata = $('#writeForm')[0]; */

});

function open_pop(flag){
	$('#selectEvaluator').show();
};
function close_pop(flag) {
    $('#selectEvaluator').hide();
    
};
function fn_addFile(){
	var fileIndex = 1;
	//$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"<button type='button' style='float:right;' id='fileAddBtn'>"+"추가"+"</button></div>");
	$("#fileAdd_btn").on("click", function(){
		$("#fileIndex").append("<div id='fileAddDiv'><input class='file' style='padding-bottom:5px' data-show-preview='false' type='file' name='file_"+(fileIndex++)+"'>"+"</button>"+"<button class='filedel'type='button' style='float:right;' id='fileDelBtn'>"+"삭제"+"</button></div>");
	});
	$(document).on("click","#fileDelBtn", function(){
		$(this).parent().remove();
		
	});
	
}
</script>
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
                        <li class="on">
                            <a href="/bam/businessAnnouncementList">사업공고</a>
                            <ul class="second_menu">
                                <li class="on"><a href="/bam/businessAnnouncementList">· 사업공고</a></li>
                            </ul>
                            
                        <li class=" ">
                            <a href="/bpm/businessPlanApplyMyList">사업 계획서</a>
                            <ul class="second_menu">
                                <li class=""><a href="/bem/businessPlanApplyMyList">· 접수내역 조회</a></li>
                            </ul>
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
                                        <td >
                                            <button class="select_Evaluator" type="button" onClick="open_pop();">평가원선택</button>
                                            <div id="evaluatorList">
                                            
                                            </div>
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
                                        	<div class="btn_wrap">
												<div id="fileIndex">	
														<input type="file" id="input-file" style="display: none" />	
														<button class="addFile" id="fileAdd_btn"  type="button">파일추가</button>
												</div>
											</div>
                                            <!-- <input type="file" name="bf_file[]" id="bf_file_2" class="file-loadingz" style="padding-bottom:5px" data-show-preview="false" onchange="checkFile(this)"> -->
                                        </td>
                                    </tr>
                                   
                                </tbody>
                            </table>
                        </div> 
                        
                        <div class="board_btn_wrap btn2 right">
                            <div class="btn_wrap">
                            	 <button id="submit" type="submit" class="red">등록</button>
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
        <div id="selectEvaluator" class="modal">
              <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt; margin-bottom: 10px;">평가원 선택</span></b></span></p>
               	<table class="table table-hover">
						<thead>
							<tr>
								<th style="width: 60px; text-align: center;">선택</th>
								<th style="width: 60px; text-align: center;">평가원 성명</th>
								<th style="width: 60px; text-align: center;">아이디</th>
							</tr>
						</thead>
						
						<c:forEach items="${memberList}" var = "memberList">
							<tr>
								<td style="text-align: center;"><input type="checkbox" name="checkedUserId"/></td>
								<td style="text-align: center;"id="user_name"><c:out value="${memberList.user_name}" /></td>
								<td style="text-align: center;"id="user_id"><c:out value="${memberList.user_id}" /> </td>
							</tr>
						</c:forEach>
					</table>
                <p><br /></p>
             <div>
		            <div style="float:left; color:#000; width: 48%; pointer;background-color:#e6e6e6;text-align: center;padding-bottom: 10px;padding-top: 10px; margin-right: 10px;" onClick="close_pop();">
		                <span class="pop_bt" style="font-size: 13pt;" >
		                   	 취소
		                </span>
		            </div>
		            
					<div id="check_Btn" style="float:left; color:#FFFFFF; width: 48%; pointer;background-color:#952940;text-align: center;padding-bottom: 10px;padding-top: 10px;">
		                <span class="pop_bt" style="font-size: 13pt;" >
		                   	 확인
		                </span>
		            </div>		            
			</div>
   
 	
    </div>
    </div>
        <!--End Modal-->
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