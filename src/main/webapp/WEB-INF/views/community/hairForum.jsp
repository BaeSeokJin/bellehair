<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    
    
    <!-- 페이징 추가 설정 시작 -->
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="${contextPath}/resources/css/paging.css" rel='stylesheet' type='text/css' />
    <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- 페이징 추가 설정 끝 -->
    
    
    <title>Document</title>
    
    <!-- head 1,2, community -->
	<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
	<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>
	<%@ include file="/WEB-INF/views/include/communityHead.jsp" %>
    
	<style>
        @import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

        .containner{
            width: 1000px;
            height: 560px;
            margin: 0 auto;
            background-color: #f0e9e9;
            color: #888;
            font-size: 20px;
            font-family: 'Jeju Myeongjo', serif;
        }
        .hairForum-1{
            padding: 20px 20px 10px 50px;
            height: 30px;
            font-size: 34px;
            font-weight: 600;
            color: black;

        }
        .hairForum-2{
            padding-left: 5px;
            margin: 0px 0px 13px 50px;
            height: 20px;
            font-size: 17px;
            font-weight: 700;
            border-left-style: solid;
            border-left-color: #888;
        }
        .boardContainner {
            margin: 0 auto;
            /* height: 68px; */
            width: 900px;

        }
        .section01{
            width: 160px;
            height: 40px;
            padding: 10px 0px 15px 10px;
            float: left;
            border-top-width: 1px;
            border-right-width: 0px;
            border-bottom-width: 1px;
            border-left: 5px;
            border-style: solid;
        }
        .section01-1{
            padding-bottom: 5px;
            font-size: 18px;
            color: black;
            font-weight: 600;
        }
        .section01-2{
            font-size: 13px;
        }
        .section02{
            width: 550px;
            height: 40px;
            float: left;
            padding: 10px 0px 15px 10px;
            border-top-width: 1px;
            border-top-style: solid;
            border-right-width: 0px;
            border-bottom-width: 1px;
            border-bottom-style: solid;
            border-left-width: 1px;
            border-left-style: dotted;
        }
        .section02-1{
            padding-bottom: 5px;
            font-size: 18px;
            color: black;
            font-weight: 600;

        }
        .section02-2{
            width: 110px;
            float: left;
            font-size: 15px;
        }
        .section02-3{
            width: 300px;
            float: left;
            font-size: 15px;
        }
        .section03{
            width: 130px;
            height: 40px;
            float: left;
            font-size: 15px;
            padding: 15px 0px 10px 16px;
            border-top-width: 1px;
            border-top-style: solid;
            border-right-width: 1px;
            border-right-style: solid;
            border-bottom-width: 1px;
            border-bottom-style: solid;
            border-left: 1px;
            border-left-style: dotted;
        }
    </style>
</head>
<body>

<!-- 컨테이너 시작 -->
<div class="containner">

    <div class="hairForum-1">Hair Forum</div>
    <div class="hairForum-2">
    	미용 후기, 머리카락 관리 등 자유롭게 글을 작성하실 수 있습니다.
    	<button id="hairForumWrite" type="button" onclick="location.href='/community/hairForumWrite'" style="margin-left:340px; font-size: 17px;">글쓰기</button>
    </div>

    <div class="boardContainner">
    	<c:forEach items="${list}" var="reportList">
	        <div class="section01">
	            <div class="section01-1">${reportList.userId}</div><!-- 작성자 닉네임 -->
	            <div class="section01-2">${reportList.createAt}</div><!-- 작성 날짜 -->
	        </div>
	        <div class="section02">
	            <div class="section02-1" onclick="location.href='hairForumDetail?bdIdx=${reportList.bdIdx}'">${reportList.title}</div><!-- title -->
	            <div>
	                <div class="section02-3">카테고리 : ${reportList.category}</div><!-- category -->
	            </div>
	        </div>
	        <div class="section03">
	            <div>글번호 : ${reportList.bdIdx}</div><!-- comments -->
	            <div><i class="xi-eye-o xi-fw"></i> Looks ${reportList.cnt}</div><!-- looks -->
	        </div>
        </c:forEach>
    </div>




	<!-- 페이징 시작 -->
   	<div>
       	<form method="post" action="/community/hairForum" style="display: flex; align-items: flex-start; flex-direction: row; justify-content: space-evenly; width: 200px;">
       	<div>	
       		<select name="searchOption" style="width: 100px; margin-left: 800px; margin-top: 20px;">
       			<option value="all" <c:out value="${searchMap.searchOption == 'all'?'selected':''}"/> >전체조회</option>
				<option value="user_id" <c:out value="${searchMap.searchOption == 'user_id'?'selected':'' }"/>>아이디</option>
				<option value="title" <c:out value="${searchMap.searchOption == 'title'?'selected':'' }"/>>제목</option>
       		</select>
       	</div>
       	<div>
       		<input name="keyword" value="${searchMap.keyword}" style="margin: 20px 4px 0 4px;">
       	</div>
       	<div>
       		<input type="submit" value="검색" style="margin-top: 20px;">
       	</div>
       	</form>
   	</div>
	
    <div class="pagination" style="text-align: center;">
     	<div class="pageInfo_area" style="padding: 0px;">
			<ul id="pageInfo" class="pageInfo">
				<!-- 이전페이지 버튼 -->
 				<c:if test="${paging.prev}">
     				<li class="pageInfo_btn previous" href="${paging.startPage-1}">&laquo;</li>
 				</c:if>
				<!-- 각 번호 페이지 버튼  -->
				<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
					<li class="pageInfo_btn ${paging.cri.pageNum == num ? "active":"" }" href="${num}">${num}</li>
				</c:forEach>
				<!-- 다음페이지 버튼 -->
 				<c:if test="${paging.next}">
      				<li class="pageInfo_btn next" href="${paging.endPage + 1 }">&raquo;</li>
 				</c:if>
			</ul>
		</div>
	</div>
	
	<form id="moveForm" method="get">
		<input type="hidden" name="pageNum" value="${paging.cri.pageNum}">
		<input type="hidden" name="amount" value="${paging.cri.amount}">
		<input type="hidden" name="keyword" value="${paging.cri.keyword}">
	</form>
	
	<script type="text/javascript">
        let moveForm = $("#moveForm");
        $(".pageInfo li").on("click", function(e){
       	 e.preventDefault();
            moveForm.find("input[name='pageNum']").val($(this).attr("href"));
            moveForm.attr("action", "hairForum");
            moveForm.submit();
       });
    </script>
	<!-- 페이징 끝 -->



<!-- 컨테이너 끝 -->
</div>
    
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>        
  
</body>
</html>