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
	<link rel="shortcut icon" type="image/x-icon" href="../../resources/images/include/favicon.ico" /> <!-- favicon -->
	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
	<link href="../../resources/css/index.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="shortcut icon" type="image/x-icon" href="../../../resources/images/include/favicon.ico" />
	<style>
		@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

		.nav-container {
			display: flex;
			justify-content: space-between;
			flex-direction: row;
			width: 100%;
			margin: 0; 
			padding: 0; 
			background-color: rgb(0, 0, 0);
			list-style-type: none; 
		}

		.nav-item {
			color: #6a6869;
			font-size: 14px;
			padding: 10px;
			cursor: pointer; 
		}
		.nav-item a {
			text-align: center;
			text-decoration: none;
			color: #a3a3a3;
			font-weight: 600;
		}
	</style>
</head>
<body>
	<nav>
		<ul class="nav-container" style="font-size: 21px; font-family: 'Jeju Myeongjo', serif;">
			<li class="nav-item"> 
				<span></span>
			</li>
			<li class="nav-item">
				<a href="/member/login-form">Login　</a>
				<a href="/member/join-form">　Join　</a>
				<span>　　　　</span>
			</li>
		</ul>
	</nav>
</body>
</html>