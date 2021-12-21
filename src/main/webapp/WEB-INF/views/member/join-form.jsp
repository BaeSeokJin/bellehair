<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<link href="${contextPath}/resources/css/join-form.css" rel="stylesheet" type="text/css" media="all" />
	<style>
		@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
	</style>
</head>

<body>

<!-- head 1,2 -->
<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>

<!-- join-form -->
<div class="join-container"><!-- 컨테이너 열기 -->

    <h1 class="delight">Delight</h1>
    <br><br>

    
    <!-- 아이디 입력 -->
    <div class="section01">        
        <label class="join-text" for="id">아이디</label><br>
        <input type="text" required/>
        <button type="button" style="margin-left: 304px;">중복확인</button>
    </div>

    <!-- 비밀번호 입력 -->
    <div class="section01">
        <label class="join-text" for="password">비밀번호</label><br>
        <input type="password" required>
    </div>

    <!-- 비밀번호 확인 입력 -->
    <div class="section01">
        <label class="join-text" for="password">비밀번호 확인</label><br>
        <input type="password" required>
            
    </div>

    <!-- 이름 입력 -->
    <div class="section01">
    <label class="join-text" for="name">이름</label><br>
    <input type="text" placeholder="홍길동" required>
    </div>

    <!-- 닉네임 입력 -->
    <div class="section01">
        <label class="join-text" for="nickname">닉네임</label><br>
        <input type="text" required>
    </div>  

    <!-- 이메일 입력 -->
    <div class="section01">
        <label class="join-text" for="email">이메일</label><br>
        <input type="email" placeholder="" required>
    </div><br>

    <!-- 개인정보 동의 -->
    <div class="section01">
        <input type="checkbox" style="width: auto; height: auto;">
        <label style="font-size: 17px;" >개인정보 수집 및 이용에 동의합니다.</label>
    </div>

    <!-- 가입완료 버튼 -->
    <br>
    <button type="submit" style="margin-left: 120px; padding: 15px 60px 15px 60px; font-weight: 600;">Join</button>

</div><!-- 컨테이너 닫기 -->
    
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>