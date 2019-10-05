<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/test/resources/css/noticeList.css">
<script type="text/javascript" src="/test/resources/js/jquery-3.3.1.min.js"></script>
<script>
    $(document).ready(function(){
        $("#notice_regi").on("click",function(){
            location.href="/test/noticeRegi"
        });
    });
    function fn_paging(curPage){
        location.href="/test/noticeList?curPage="+curPage;
    }
    function notice_push(notice_id){
        alert(notice_id);
    }
</script>
</head>
<body>
    <div class="title">��������</div>
    <div class="contents">
        <input type="button" id="notice_regi" value="���">
        <div class="divTable greenTable">
            <div class="divTableHeading">
                <div class="divTableRow">
                    <div class="divTableHead"><input type="checkbox"></div>
                    <div class="divTableHead">NO</div>
                    <div class="divTableHead">����</div>
                    <div class="divTableHead">�������</div>
                    <div class="divTableHead"></div>
                </div>
            </div>
            <c:forEach var="v" items="${noticeList}" varStatus="status">
                <div class="divTableBody">
                    <div class="divTableRow">
                        <div class="divTableCell"><input type="checkbox"></div>
                        <div class="divTableCell">${status.index+1+(paging.curPage-1)*10}</div>
                        <div class="divTableCell">
                            <a href="/test/noticeDetail/${v.notice_id}">${v.notice_title}</a>
                        </div>
                        <div class="divTableCell">${v.mod_date}</div>
                        <div class="divTableCell"><input type="button" onclick="notice_push(${v.notice_id})" value="����"></div>
                    </div>
                </div>
            </c:forEach>
        </div>
         
        <div class="greenTable outerTableFooter">
            <div class="tableFootStyle">
                <div class="links">
                        <a href="#" onClick="fn_paging(1)">[ó��]</a> 
                    <c:if test="${paging.curPage ne 1}">
                        <a href="#" onClick="fn_paging(${paging.prevPage })">[����]</a> 
                    </c:if>
                    <c:forEach var="pageNum" begin="${paging.startPage }" end="${paging.endPage }">
                        <c:choose>
                            <c:when test="${pageNum eq  paging.curPage}">
                                <span style="font-weight: bold;">
                                    <a href="#" onClick="fn_paging(${pageNum })" style="font-weight: bold; color:red;">
                                        ${pageNum }
                                    </a>
                                </span> 
                            </c:when>
                            <c:otherwise>
                                <a href="#" onClick="fn_paging(${pageNum })">${pageNum }</a> 
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:if test="${paging.curPage ne paging.pageCnt && paging.pageCnt > 0}">
                        <a href="#" onClick="fn_paging(${paging.nextPage })">[����]</a> 
                    </c:if>
                    <c:if test="${paging.curRange ne paging.rangeCnt && paging.rangeCnt > 0}">
                        <a href="#" onClick="fn_paging(${paging.pageCnt })">[��]</a> 
                    </c:if>
                </div>
            </div>
        </div>
         
        <div>
                    �� �Խñ� �� : ${paging.listCnt } /    �� ������ �� : ${paging.pageCnt } / ���� ������ : ${paging.curPage } / ���� �� : ${paging.curRange } / �� �� �� : ${paging.rangeCnt }
        </div>
         
    </div>
     
     
</body>
</html>