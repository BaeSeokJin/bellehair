<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- 태그 라이브러리 추가  -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> <!-- 스프링 폼태그 사용 가능  -->

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Delight</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
	<link href="${contextPath}/resources/css/index.css" rel="stylesheet" type="text/css" media="all" />
      <link rel="shortcut icon" type="image/x-icon" href="../../../resources/image/favicon.ico" />
	<style>
		@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
	</style>
</head>
<body>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1 style="font-size: 21px; font-family: 'Jeju Myeongjo', serif; font-size: 35px;"><a href="#">Delight</a></h1>
		</div>
		<div id="menu">
			<ul style="font-size: 21px; font-family: 'Jeju Myeongjo', serif;">
				<li><a href="#">로그인</a></li>
				<li><a href="#">회원가입</a></li>
				<li><a href="#">이용후기</a></li>
				<li><a href="#">찾아오는길</a></li>
				<li><a href="#">문의하기</a></li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>