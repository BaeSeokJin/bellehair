<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="${contextPath}/resources/css/login-form.css" rel="stylesheet" type="text/css" media="all" />

	<!-- head 1,2 -->
	<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
	<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>

    <style>
        @import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

        /* 
        ========================================
        전체 페이지
        ========================================
         */
        .mypage-containner{
            width: 500px;
            height: 640px;
            margin: 0 auto;
            background-color: #f5eded79;
            color: rgb(5, 5, 5);
            font-size: 14px;
            font-family: 'Jeju Myeongjo', serif;
            border-radius: 30px;
            border-style: solid;
            border-width: 2px;
        }

        /* 
        ========================================
        section01
        ========================================
         */
        .mypage-section01{
            margin: 0 auto;
            padding-top: 17px;
            width: 450px;
            height: 40px;
            font-size: 25px;
            font-weight: 600;
        }

        /* 
        ========================================
        section02
        ========================================
         */
        .mypage-section02{
            margin: 0 auto;
            width: 470px;
            height: 210px;
        }
        .mypage-section02-1{
            margin-top: 35px;
            width: 130px;
            height: 130px;
            float: left;
            border-style: solid;
            border-width: 2px;
            border-radius: 70%;
            overflow: hidden;
        }
        .mypage-profileImage{
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .mypage-section02-2{
            width: 70px;
            height: 190px;
            float: left;
            padding: 10px 20px 0px 20px;
            font-size: 15px;
            font-weight: 600;
            border-right-width: 2px;
            border-right-style: dotted;
        }
        .mypage-section02-3{
            width: 204px;
            height: 100px;
            float: left;
            padding: 10px 0px 0px 20px;
            font-size: 15px;
        }

        /* 
        ========================================
        section03
        ========================================
         */
        .mypage-section03{
            margin: 0 auto;
            width: 420px;
            height: 45px;
        }
        .mypage-section03 button{
            margin-left: 300px;
            width: 120px;
            height: 30px;
            font-size: 14px;
            font-weight: 600;
            font-family: inherit;
        }

        /* 
        ========================================
        section04
        ========================================
         */
        .mypage-section04{
            margin: 0 auto;
            padding-top: 20px;
            width: 220px;
            height: 220px;
        }
        .mypage-section04 img{
            padding-bottom: 7px;
        }

        /* 
        ========================================
        ect
        ========================================
         */
        .myPage-hr{
            width: 484px;
        }
    </style>

</head>
<body>

<!-- 컨테이너 시작 -->
<div>　</div>
<div class="mypage-containner">

    <div>
        <!-- section01 -->
        <div class="mypage-section01">MyPage</div>

        <hr class="myPage-hr"><br>

        <!-- section02 -->
        <div class="mypage-section02">
            <div class="mypage-section02-1"><img class="mypage-profileImage" src="../../../resources/images/member/profileDummy.JPG"></div>
            <div class="mypage-section02-2">
                <div style="padding-bottom: 10px;">유저코드</div>
                <div style="padding-bottom: 10px;">아이디</div>
                <div style="padding-bottom: 10px;">이름</div>
                <div style="padding-bottom: 10px;">닉네임</div>
                <div style="padding-bottom: 10px;">이메일</div>
                <div style="padding-bottom: 10px;">전화번호</div>
                <div style="padding-bottom: 10px;">회원등급</div>
                <div>회원가입일</div>
            </div>
            <div class="mypage-section02-3">
                <div style="padding-bottom: 10px;">${authentication.userCode}</div>
                <div style="padding-bottom: 10px;">${authentication.userId}</div>
                <div style="padding-bottom: 10px;">${authentication.name}</div>
                <div style="padding-bottom: 10px;">${authentication.nickname}</div>
                <div style="padding-bottom: 10px;">${authentication.email}</div>
                <div style="padding-bottom: 10px;">${authentication.tell}</div>
                <div style="padding-bottom: 10px;">${authentication.grade}</div>
                <div>${authentication.regDate}</div>
            </div>
        </div>
        
        <br>

        <!-- section03 -->
        <!-- <div class="mypage-section03"><button>개인정보 수정</button></div> -->

        <hr class="myPage-hr">

        <!-- section04 -->
        <div class="mypage-section04">
            <img src="../../../resources/images/member/member-myReservation.png" alt=""><br>
            <img src="../../../resources/images/member/member-myForum.png" alt=""><br>
            <img src="../../../resources/images/member/member-myComment.png" alt="">
        </div>

        <hr class="myPage-hr">
        
    </div>
    
<!-- 컨테이너 끝 -->
</div>

<div>　</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>        
    
</body>
</html>