<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>OneLesson</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="../resources/css/admin/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

<style>
    .table th,
    .table td {
        text-align: center;
    }
</style>

</head>
<body class="sb-nav-fixed">

	<jsp:include page="inc/top.jsp" />
        
    <jsp:include page="inc/left.jsp" />    
        
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4" style="margin-top:50px;">
                    <h1 class="mt-4">공지사항/이벤트</h1>
<hr>                    
<table class="table table-bordered" style="margin-top:50px;">
<tr><td style="width: 150px;">번호</td><td><div>
  ${adminNoticeDTO.num}
</div></td></tr>
<tr><td style="width: 150px;">타입</td><td><div>
  <c:if test="${adminNoticeDTO.type == 0}">
  공지
  </c:if>
  <c:if test="${adminNoticeDTO.type == 1}">
  이벤트
  </c:if>
</div></td></tr>
<tr><td style="width: 100px;">조회수</td><td><div>
  ${adminNoticeDTO.readcount}
</div></td></tr>
<tr><td style="width: 100px;">작성일</td><td><div>
  <fmt:formatDate value="${adminNoticeDTO.date}" pattern="yyyy-MM-dd"/>
</div></td></tr>
<tr><td style="width: 100px;">제목</td><td><div>
  ${adminNoticeDTO.subject}
</div></td></tr>
<tr><td style="height: 200px;" valign="middle">내용</td><td valign="middle"><div>
  ${adminNoticeDTO.content}
  <c:if test="${adminNoticeDTO.image != null}">
  	<img src="${pageContext.request.contextPath}/resources/upload/${adminNoticeDTO.image }">
  </c:if>
</div></td></tr>
<tr><td style="width: 100px;">첨부파일</td><td><div>
  <c:if test="${adminNoticeDTO.image == null}">
  		첨부된 파일이 없습니다.
  </c:if> 
</div></td></tr>
</table>

<hr>
<div style="text-align: right; margin-top:30px;">
<c:if test="${! empty sessionScope.id}">
<%-- 	<c:if test="${sessionScope.id eq adminNoticeDTO.id}"> --%>
<c:if test="${sessionScope.id eq 'admin' }">
		
		<input type="button" value="수정" class="btn btn-success" onclick="location.href='${pageContext.request.contextPath}/admin/noticeUpdate?num=${adminNoticeDTO.num}'">
		<input type="button" value="삭제" class="btn btn-success" onclick="location.href='${pageContext.request.contextPath}/admin/noticeDelete?num=${adminNoticeDTO.num}'">
		
	</c:if>
</c:if>
<input type="button" value="목록" class="btn btn-outline-success" onclick="location.href='${pageContext.request.contextPath}/admin/notice'">
</div>
</div>
            </main>
            
            <jsp:include page="inc/bottom.jsp" />
            
        </div>

    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="../resources/js/admin/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="../resources/assets/admin/demo/chart-area-demo.js"></script>
    <script src="../resources/assets/admin/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="../resources/js/admin/datatables-simple-demo.js"></script>
</body>
</html>
