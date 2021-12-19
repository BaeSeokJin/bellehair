<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>
</head>
<body>
    <div class="container"><!-- 컨테이너 열기 -->

        <!-- 회원가입 -->
        <h1>회원가입</h1>

        <!-- 아이디 입력 -->
        <div>        
            <label for="id">아이디</label>
            <input type="text" required/>
            <button type="button">중복확인</button>
        </div>

        <!-- 비밀번호 입력 -->
        <div>
            <label for="password">비밀번호</label>
            <input type="password" required>
        </div>

        <!-- 비밀번호 확인 입력 -->
        <div>
            <label for="password">비밀번호 확인</label>
            <input type="password" required>
                
        </div>

        <!-- 이름 입력 -->
        <div>
        <label for="name">이름</label>
        <input type="text" placeholder="홍길동" required>
        </div>

        <!-- 닉네임 입력 -->
        <div>
            <label for="nickname">닉네임</label>
            <input type="text" required>
            <button  type="button">중복확인</button>
        </div>  

        <!-- 이메일 입력 -->
        <div>
            <label for="email">이메일</label>
                <input type="email" placeholder="" required>
        </div>

        <!-- 개인정보 동의 -->
        <div>
            <input type="checkbox">
            <label>개인정보 수집 및 이용에 동의합니다.</label>
        </div>

        <!-- 가입완료 버튼 -->
        <button type="submit">가입 완료</button>

    </div><!-- 컨테이너 닫기 -->
</body>
</html>