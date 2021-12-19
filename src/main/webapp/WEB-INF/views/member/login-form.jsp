<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>
<link href="${contextPath}/resources/css/login-form.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <div class="main-container" >
    
        <!-- 로그인 form -->
        <section class="login-input-section-wrap">
            <div class="login-input-wrap">	
                <input placeholder="아이디를 입력하세요." type="text" style="font-size: 21px; font-family: 'Jeju Myeongjo', serif; font-size: 18px;" ></input>
            </div>
            <div class="login-input-wrap password-wrap">	
                <input placeholder="비밀번호를 입력하세요." type="password" style="font-size: 21px; font-family: 'Jeju Myeongjo', serif; font-size: 18px;"></input>
            </div>
            <div class="login-button-wrap">
                <button style="font-size: 21px; font-family: 'Jeju Myeongjo', serif;">로그인</button>
            </div>
            <div class="login-button-wrap">
                <button style="font-size: 21px; font-family: 'Jeju Myeongjo', serif;">회원가입</button>
            </div>
            <a>아이디/</a><a>비밀번호 찾기 </a>
            <div style="padding-top: 10px; font-weight: 600; font-size: 18px; font-family: 'Jeju Myeongjo', serif;">아이디/비밀번호 찾기</div>
        </section>
        
        <!-- 기타 로그인 링크로 이동 -->
        <section class="Easy-sgin-in-wrap">
            <h2 style="font-size: 18px; font-family: 'Jeju Myeongjo', serif; padding-top: 20px">다른 방법으로 로그인 하기</h2>
            <div style="padding-top: 20px;">
           		<img src="../../../resources/images/login/kakao_login_medium_wide.png" height="50"/>
           			<br>
            	<img src="../../../resources/images/login/naver_login_medium_wide.png" height="50"/>
            		<br>
            	<img src="../../../resources/images/login/google_login_medium_wide.png" height="50"/>
            </div>
        </section>
        
    </div>
</body>
</html>