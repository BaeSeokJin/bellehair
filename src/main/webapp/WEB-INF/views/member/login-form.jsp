<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/resources/css/login-form.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

<!-- head 1,2 -->
<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>

<div class="main-container" >
	<!-- Login -->
	<br>
	<div style="width: 465px; margin: 0 auto;">
		<span style="font-family: 'Jeju Myeongjo', serif; font-size: 25px; font-weight: 600;">　Login</span>
		<hr style="color: #f0e9e9; margin-top: 5px;">
	</div>
	<div class="login-input-section-wrap">
	    <div class="login-input-wrap" >	
	        <input placeholder="아이디를 입력하세요."></input>
	    </div>
	    <div class="login-input-wrap">	
	        <input placeholder="비밀번호를 입력하세요." type="password"></input>
	    </div>
	    <div class="login-button-wrap">
	        <button>로그인</button>
	    </div>
	</div>

	<br>
	
	<!-- Help -->
	<br>
	<div style="width: 465px; margin: 0 auto;">
		<span style="font-family: 'Jeju Myeongjo', serif; font-size: 25px; font-weight: 600;">　Help</span>
		<hr style="color: #f0e9e9; margin-top: 5px;">
		<div class="login-input-section-wrap">
		    <div class="help-button-wrap">
		        <button>아이디찾기</button>
		    </div>
		    <div class="help-button-wrap">
		        <button>비밀번호찾기</button>
		    </div>
		    <div class="help-button-wrap">
		        <button>회원가입</button>
		    </div>
		</div>
	</div>
	
	<br>
	<br>
	
	<!-- SNS Login -->
	<div style="width: 465px; margin: 0 auto;">
		<span style="font-family: 'Jeju Myeongjo', serif; font-size: 25px; font-weight: 600;">　SNS Login</span>
		<hr style="color: #f0e9e9; margin-top: 8px;">
	</div>
	<section class="Easy-sgin-in-wrap">
	    <div style="padding-top: 20px;">
	   		<img src="../../../resources/images/login/kakao_login_medium_wide.png" height="50"/>
	   			<br>
	    	<img src="../../../resources/images/login/naver_login_medium_wide.png" height="50"/>
	    		<br>
	    	<img src="../../../resources/images/login/google_login_medium_wide.png" height="50"/>
	    </div>
	</section>
	
	<br>
	
</div>
    
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
    
</body>
</html>