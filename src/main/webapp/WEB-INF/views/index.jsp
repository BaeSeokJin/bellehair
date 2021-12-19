<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- header -->
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
	
<!-- body start!! -->
<body>
<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
<!-- body 1 : 기본 head 바디 -->
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1 style="font-size: 21px; font-family: 'Jeju Myeongjo', serif; font-size: 35px;"><a href="#">Delight</a></h1>
		</div>
		<div id="menu">
			<ul style="font-size: 21px; font-family: 'Jeju Myeongjo', serif;">
				<li><a href="#">이용후기</a></li>
				<li><a href="#">찾아오는길</a></li>
				<li><a href="#">문의하기</a></li>
				<li><a href="#">로그인</a></li>
			</ul>
		</div>
	</div>
	<div id="banner" class="container" style="font-family: 'Jeju Myeongjo', serif; text-transform: none;">
		<span style="font-family: 'Jeju Myeongjo', serif; text-transform: none;">"지금부터 이 가위로 당신을 <a style="color: rgb(197, 92, 92);">아름답게</a> 해 드릴 거에요."</span>
	</div>
</div>

<!-- body 2 :  -->
<div>
	<img src="../../../resources/images/index/index-banner01.png"/>
	<img src="../../../resources/images/index/index-banner02.png"/>
	<img src="../../../resources/images/index/index-banner03.png"/>
	<img src="../../../resources/images/index/index-banner04.png"/>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<!-- body end!! -->
</body>

</html>
