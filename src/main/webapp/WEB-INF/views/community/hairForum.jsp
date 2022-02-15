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
            height: 68px;
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
        .ending{
            height: 20px;
        }
    </style>
</head>
<body>

<!-- 컨테이너 시작 -->
<div class="containner">

    <div class="hairForum-1">Hair Forum</div>
    <div class="hairForum-2">
    	미용 후기, 머리카락 관리 등 자유롭게 글을 작성하실 수 있습니다.
    	<button type="button" onclick="location.href='/community/hairForumWrite'" style="margin-left:340px; font-size: 17px;">글쓰기</button>
    </div>

    <div class="boardContainner">
        <div class="section01">
            <div class="section01-1">행복한미용사</div><!-- 작성자 닉네임 -->
            <div class="section01-2">2021-12-22 13:34:01</div><!-- 작성 날짜 -->
        </div>
        <div class="section02">
            <div class="section02-1">오랜만에 올리는 머리관리 방법</div><!-- title -->
            <div>
                <div class="section02-2">글번호 : 3321</div><!-- No -->
                <div class="section02-3">카테고리 : 사는얘기</div><!-- category -->
            </div>
        </div>
        <div class="section03">
            <div><i class="xi-comment xi-fw"></i> Comments 14</div><!-- comments -->
            <div><i class="xi-eye-o xi-fw"></i> Looks 154</div><!-- looks -->
        </div>
    </div>

    <div class="boardContainner">
        <div class="section01">
            <div class="section01-1">행복한미용사</div><!-- 작성자 닉네임 -->
            <div class="section01-2">2021-12-22 13:34:01</div><!-- 작성 날짜 -->
        </div>
        <div class="section02">
            <div class="section02-1">오랜만에 올리는 머리관리 방법</div><!-- title -->
            <div>
                <div class="section02-2">글번호 : 3321</div><!-- No -->
                <div class="section02-3">카테고리 : 사는얘기</div><!-- category -->
            </div>
        </div>
        <div class="section03">
            <div><i class="xi-comment xi-fw"></i> Comments 14</div><!-- comments -->
            <div><i class="xi-eye-o xi-fw"></i> Looks 154</div><!-- looks -->
        </div>
    </div>

    <div class="boardContainner">
        <div class="section01">
            <div class="section01-1">행복한미용사</div><!-- 작성자 닉네임 -->
            <div class="section01-2">2021-12-22 13:34:01</div><!-- 작성 날짜 -->
        </div>
        <div class="section02">
            <div class="section02-1">오랜만에 올리는 머리관리 방법</div><!-- title -->
            <div>
                <div class="section02-2">글번호 : 3321</div><!-- No -->
                <div class="section02-3">카테고리 : 사는얘기</div><!-- category -->
            </div>
        </div>
        <div class="section03">
            <div><i class="xi-comment xi-fw"></i> Comments 14</div><!-- comments -->
            <div><i class="xi-eye-o xi-fw"></i> Looks 154</div><!-- looks -->
        </div>
    </div>

    <div class="boardContainner">
        <div class="section01">
            <div class="section01-1">행복한미용사</div><!-- 작성자 닉네임 -->
            <div class="section01-2">2021-12-22 13:34:01</div><!-- 작성 날짜 -->
        </div>
        <div class="section02">
            <div class="section02-1">오랜만에 올리는 머리관리 방법</div><!-- title -->
            <div>
                <div class="section02-2">글번호 : 3321</div><!-- No -->
                <div class="section02-3">카테고리 : 사는얘기</div><!-- category -->
            </div>
        </div>
        <div class="section03">
            <div><i class="xi-comment xi-fw"></i> Comments 14</div><!-- comments -->
            <div><i class="xi-eye-o xi-fw"></i> Looks 154</div><!-- looks -->
        </div>
    </div>


    <div class="ending"></div>


<!-- 컨테이너 끝 -->
</div>
    
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>        
  
</body>
</html>