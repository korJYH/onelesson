<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 정보 확인</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">

    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">


<style>
.head-Boxleft{
	display: inline-block;
	float : left;
	width: 100px;
	height : 100px;
}
.head-Box-center{
	display: inline-block;
	height: 100px;
	flex: em;
	padding-left: 25%;
}
.head-Box-right{
	display: inline-block;
	height: 130px;
	flex: em;
	float: right;
	padding: 1.5em;
	border: solid skyblue;
	
}

.myinfoA1{
	margin: 50px;
	padding : 1.5rem;
	align-items: center;
	justify-content: center;
}
.myMenu{
display: inline-block;
	position: relative;
	width: 100%;
	height: 50px;
	padding-top: 30px;
}


.userInfo{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;

}
.userlesson{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}	
.userPayment{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.userReview{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.mainPage {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.userQnA {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}

.JJimList {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}

.userCenter {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.myName{
	margin-left: 70px;
	
}
.myPageT{
	display : inline-block;
	background-color: orange;
	width: 100%;
	height: 10px;
	position: relative;
	margin-top: 50px;
}
.myLessonInfoB{
	float: right;
}
.myLessonInfo{
	display : inline-block;
	width: 100%;
	height: 10px;
	position: relative;
	padding-left: 10px;
	
}

.backPage{
	display : inline-block;
	float : left;
	width: 50px;
	height: 50px;
	
}
.container{
	width: 100%;
	padding-right: calc(var(1.5em) * .5);
	padding-left: calc(var(1.5em) * .5);
	margin-right: auto;
	margin-left: auto;
}
.top-margin{
	display : inline-block;
	width : 100%;
	height: 150px;

}
.topView{
	display: inline-block;
}

</style>
</head>
<!-- 헤더 넣는 곳 -->
 <header data-bs-theme="dark">
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">OneLesson</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">공지사항/이벤트</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/lesson/lessonList">레슨</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">자주묻는질문</a>
              </li>                 
            </ul>
            <form class="d-flex mx-auto" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
             <div class="info-card-text">
                                    <div class="fs-lg text-truncate text-truncate-lg"><span style="color:#fff;font-weight:900;">${memberDTO_name }</span>님</div>
                                    <span class="text-truncate text-truncate-md opacity-80">안녕하세요!</span>
                                </div>     
          </div>
        </div>
      </nav>
    </header>
<!-- 헤더 넣는 곳 -->
<body>
	<div class="top-margin"> </div>
	<div class="head-Boxleft"><button type="button" class="backPage" onclick="backPage()"><img src="${pageContext.request.contextPath}/resources/images/backArroy.jpg" style="width: 50px; height: 50px;"></button></div>
      
    <span class="head-Box-center"><h2 class="topView">회원 정보 확인</h2></span>
    <span class="head-Box-right">
    <span class="myinfoA1"><img src="" class="myProImg" style="width: 80px; height: 80px;">
    <span class="myName">  000 회원
         </span>           
    </span>
    </span>
      <div class="myMenu">              
     <span class="userInfo"><a><input type="button" value="나의 정보 확인" onclick="location.href='${pageContext.request.contextPath}/member/myInfo'"></a></span>    
     <span class="userlesson"><a><input type="button" value="나의 레슨 확인" onclick="location.href='${pageContext.request.contextPath}/member/myLessonList'"></a></span>
     <span class="userPayment"><a><input type="button" value="나의 결제 확인" onclick="myPaymentInfo"></a></span>
	 <span class="userReview"><a><input type="button" value="나의 후기 확인" onclick="location.href='${pageContext.request.contextPath}/board/review'"></a></span>
	 <span class="userQnA"><a><input type="button" value="나의 문의 확인" onclick="myQnAInfo"></a></span>
	 <span class="mainPage"><a><input type="button" value="메인 페이지" onclick="location.href='${pageContext.request.contextPath}/lesson/main'"></a></span>
	 <span class="JJimList"><a><input type="button" value="찜 리스트 확인" onclick=""></a></span>
	 <span class="userCenter"><a><input type="button" value="고객 센터" onclick=""></a></span>
	 </div>
 <div class="myPageT">.</div>
	 		<div class="myLessonInfo">나의 레슨 수강 간단히 보기<br>

  <footer class="text-body-secondary py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="../getting-started/introduction/">getting started guide</a>.</p>
  </div>
 
</footer>
 <script>
 function backPage(){
		history.back();
	}
 function mainPage(){
		location.href="../lesson/main.jsp";
	}
 function myLessonInfo_P(){
	 location.href="../lesson/myLesson_Page";
 }
 </script>
</body>
</html>