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
        </section>
        <!-- 기타 로그인 링크로 이동 -->
        <section class="Easy-sgin-in-wrap">
            <h2 style="font-size: 21px; font-family: 'Jeju Myeongjo', serif;">다른 방법으로 로그인 하기</h2>
            
            <ul class="sign-button-list">
            <img src="../../../resources/image/kakao_login_medium_wide.png" />
                <li>
                	<button style="background-color: #f2dc01; font-weight: 600;">
     
                		<span style="font-size: 19px; font-family: 'Jeju Myeongjo', serif;">Kakao Login</span>
                	</button>
                </li>
                <li>
                	<button style="background-color: #04cf5c; font-weight: 600;">
                		<span style="font-size: 19px; font-family: 'Jeju Myeongjo', serif;">Naver Login</span>
                	</button>
                </li>
                <li>
                	<button style="background-color: #c55c5c; font-weight: 600;">
                		<span style="font-size: 19px; font-family: 'Jeju Myeongjo', serif;">Sign Up Delight</span>
                	</button>
                </li>
            </ul>
        </section>
    </div>
</body>
</html>