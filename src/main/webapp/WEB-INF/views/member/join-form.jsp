<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<link href="${contextPath}/resources/css/join-form.css" rel="stylesheet" type="text/css" media="all" />
	<style>
		@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
	</style>
	
	<!-- head 1,2 -->
	<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
	<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>
</head>

<body>

<div class="join-container"><!-- 컨테이너 열기 -->
<form action="/member/join" method="post" id="frm_join">

    <h1 class="delight">Delight</h1>
    <br><br>

    
    <!-- 아이디 입력 -->
    <div class="section01">        
        <label class="join-text" for="id">아이디</label><br>
        <input type="text" name="userId" id="userId" value="${joinForm.userId}" required/>
        <!-- <button type="button" style="margin-left: 304px;">중복확인</button> -->
    </div>

    <!-- 비밀번호 입력 -->
    <div class="section01">
        <label class="join-text" for="password">비밀번호</label><br>
        <input type="password" name="password" id="password" value="${joinForm.password}" required>
    </div>

	<!--     
	비밀번호 확인 입력
    <div class="section01">
        <label class="join-text" for="password">비밀번호 확인</label><br>
        <input type="password" required>        
    </div> 
    -->

    <!-- 이름 입력 -->
    <div class="section01">
    <label class="join-text" for="name">이름</label><br>
    <input type="text" name="name" placeholder="홍길동" value="${joinForm.name}" required>
    </div>

    <!-- 닉네임 입력 -->
    <div class="section01">
        <label class="join-text" for="nickname">닉네임</label><br>
        <input type="text" name="nickname" value="${joinForm.nickname}" required>
    </div>  
    
    <!-- 전화번호 입력 -->
    <div class="section01">
        <label class="join-text" for="email">전화번호</label><br>
        <input type="tel" name="tell" value="${joinForm.tell}" required>
    </div><br>

    <!-- 이메일 입력 -->
    <div class="section01">
        <label class="join-text" for="email">이메일</label><br>
        <input type="email" name="email" value="${joinForm.email}" required>
    </div><br>

	<!--     
	개인정보 동의
    <div class="section01">
        <input type="checkbox" style="width: auto; height: auto;">
        <label style="font-size: 17px;" >개인정보 수집 및 이용에 동의합니다.</label>
    </div> 
    -->

	<!-- 가입완료 버튼 -->
    <br>
    <button type="submit" style="margin-left: 120px; padding: 15px 60px 15px 60px; font-weight: 600;">Join</button>

</form>  
</div><!-- 컨테이너 닫기 -->
    
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>