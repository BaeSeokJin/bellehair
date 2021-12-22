<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <title>Document</title>
    
    <!-- head 1,2, community -->
	<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
	<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>
	<%@ include file="/WEB-INF/views/include/communityHead.jsp" %>
        <style>
        @import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

        .containner{
            width: 1000px;
            margin: 0 auto;
            background-color: #f0e9e9;
            color: #888;
            font-size: 14px;
            font-family: 'Jeju Myeongjo', serif;
        }
        .hairForum{
            padding: 20px 20px 10px 50px;
            height: 30px;
            font-size: 34px;
            font-weight: 600;
            color: black;
        }

        /* 
        ==============================================
        상세페이지
        ==============================================
       */

        .boardContainner {
            margin: 0 auto;
            width: 900px;
            min-height: 585px;
            max-height: 1000px;
            padding-bottom: 10px;
        }
        
        .section01{
            width: 700px;
            height: 65px;
            float: left;
            border-top-style: solid;
            border-top-width: 1px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 5px;
            padding: 10px 0px 5px 10px;
        }
        .section01-1{
            padding-bottom: 2px;
        }
        .section01-2{
            padding-bottom: 2px;
        }
        .section01-3{
            font-size: 17px;
            font-weight: 600;
        }

        .section02{
            width: 160px;
            height: 65px;
            float: left;
            padding: 10px 0px 5px 10px;
            border-top-style: solid;
            border-top-width: 1px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 4px;
        }
        .section02-1{
            font-size: 17px;
            font-weight: 600;
            padding-bottom: 2px;
        }
        .section02-2{  
            padding-bottom: 2px;
        }
        .section02-3{
            padding-bottom: 2px;
        }


        .section03{
            width: 855px;
            min-height: 500px;
            max-height: 1000px;
            font-size: 15px;
            padding: 10px 20px 5px 10px;
            overflow:auto;
            border-top-style: solid;
            border-top-width: 0px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 5px;
        }

        .section04{
            width: 885px;
            height: 80px;
            text-align: center;
            border-top-style: solid;
            border-top-width: 0px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 5px;
            border-left-style: solid;
            border-left-width: 5px;
            font-size: 20px;
        }
        .ending{
            height: 20px;
        }
        
        /* 
        ==============================================
        Comments
        ==============================================
       */
        .commentsContainer{
            margin: 0 auto;
            width: 900px;
            min-height: 280px; 
            max-height: 2000px;
        }
        .comments{
            padding: 5px 0px 0px 10px;
            margin-bottom: 4px;
            width: 875px;
            height: 30px;
            font-size: 22px;
            font-weight: 600;
            border-top-style: solid;
            border-top-width: 1px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 5px;
        }
        .commented{
            width: 891px;
            height: 100px;
        }
        .commented-1{
            padding: 10px;
            border-top-style: solid;
            border-top-width: 1px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 5px;
        }
        .commented-2{
            padding: 10px;
            height: 40px;
            border-top-style: solid;
            border-top-width: 0px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 5px;
        }
        .notCommented{
            width: 891px;
            height: 40px;
        }
        .commenting{
            width: 891px;
            height: 100px;
        }
        .commenting-1{
            width: 740px;
            height: 80px;
            float: left;
            border-top-style: solid;
            border-top-width: 1px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 5px;
        }
        .commenting-2{
            width: 143px;
            height: 80px;
            float: left;
            border-top-style: solid;
            border-top-width: 1px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 1px;
        }
        .commentArea{
            width: 700px;
            margin: 5px;
        }
        .userName{
            font-size: 15px;
            font-weight: 600;
            padding: 5px 0px 5px 5px;
            height: 18px;
            border-top-style: solid;
            border-top-width: 0px;
            border-right-style: solid;
            border-right-width: 0px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 1px;
        }
        .commentInput{
            margin: 15px 0px 10px 34px;
            width: 70px;
            height: 50px;
            background-color: #888;
            color: cornsilk;
            font-size: 15px;

        }
    </style>

</head>
<body>

<!-- 컨테이너 시작 -->
<div class="containner">

    <div class="hairForum">Hair Forum</div>

    <!-- 상세페이지 -->
    <div class="boardContainner">
        <div class="section01">
            <div class="section01-1">카테고리 : 사는얘기</div>
            <div class="section01-2">글번호 : 3321</div>
            <div class="section01-2">작성일 : 2021-12-22 13:34:01</div>
            <div class="section01-3">안녕하세요, 오랜만에 글한번 올려봅니다...</div>
        </div>
        <div class="section02">
            <div class="section02-1">Java의 눈물</div>
            <div class="section02-2"><i class="xi-comment xi-fw"></i> Comments <b>14</b></div>
            <div class="section02-3"><i class="xi-eye-o xi-fw"></i> Looks <b>154</b></div>
        </div>
        <div class="section03">
            <div>더미 데이터 !!</div>
        </div>
        <div class="section04">
            <br>
            <div>
                <i class="xi-thumbs-up xi-2x xi-fw" style="color: rgb(111, 144, 233);"><span style="color: rgb(0, 0, 0); font-size: 15px; font-weight: 600;">10</span></i>　
                <i class="xi-thumbs-down xi-2x xi-fw" style="color: rgb(194, 84, 84);"><span style="color: rgb(0, 0, 0); font-size: 15px; font-weight: 600;">3</span></i>
            </div>
        </div>
    </div>

    <br><br><br>

    
    <!-- 코멘트란 -->
    <div class="commentsContainer">
        <div class="comments">Comments</div>

        <!-- 댓글이 있을때 -->
        <div class="commented">
            <div class="commented-1">작성자 : <b>Java의 눈물</b> | 작성일 : 2021-12-22 13:34:01</div>
            <div class="commented-2">치킨치킨치킨</div>
        </div>
        <div class="commented">
            <div class="commented-1">작성자 : <b>Java의 눈물</b> | 작성일 : 2021-12-22 13:34:01</div>
            <div class="commented-2">치킨치킨치킨</div>
        </div>        
        <div class="commented">
            <div class="commented-1">작성자 : <b>Java의 눈물</b> | 작성일 : 2021-12-22 13:34:01</div>
            <div class="commented-2">치킨치킨치킨</div>
        </div>
        <div class="commented">
            <div class="commented-1">작성자 : <b>Java의 눈물</b> | 작성일 : 2021-12-22 13:34:01</div>
            <div class="commented-2">치킨치킨치킨</div>
        </div>        
        
        <!-- 댓글이 없을때 -->
        <div class="notCommented">
            <div class="commented-1">아직 작성된 댓글이 없습니다.</div>
        </div>
        
		<br><br>
        
        <!-- 로그인 상태에서 댓글 쓰기 -->
        <div class="commenting">
            <div class="commenting-1">
                <div class="userName">Java의 눈물</div>
                <div><textarea class="commentArea" name="content" id="ucontent" placeholder="내용" required></textarea></div>
            </div>
            <div class="commenting-2"><input class="commentInput" type="button" value="작성"></div>
        </div>
        
    </div>


    <div class="ending"></div>


<!-- 컨테이너 끝 -->
</div>
    
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>        
  
</body>
</html>