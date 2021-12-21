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
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<style>
		@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
	</style>
	
	<!-- head 1 -->
	<%@ include file="/WEB-INF/views/include/firstHead.jsp" %> <!-- 파비콘포함 -->
</head>	
	
<!-- body start!! -->
<body>

<!-- body 1 : 기본 head 바디 -->
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1 style="font-size: 21px; font-family: 'Jeju Myeongjo', serif; font-size: 35px;"><a href="/">Delight</a></h1>
		</div>
		<div id="menu">
			<ul style="font-size: 21px; font-family: 'Jeju Myeongjo', serif;">
				<li><a href="/incompletePage">Reservation</a></li>
				<li><a href="/incompletePage">Information</a></li>
				<li><a href="/incompletePage">Community</a></li>
				<li><a href="/incompletePage">Shop</a></li>
			</ul>
		</div>
	</div>
	<div id="banner" class="container" style="font-family: 'Jeju Myeongjo', serif; text-transform: none;">
		<span style="font-family: 'Jeju Myeongjo', serif; text-transform: none;">"지금부터 이 가위로 당신을 <a style="color: rgb(197, 92, 92);">아름답게</a> 해 드릴 거에요."</span>
	</div>
</div>
<br>

<div style="width: 1200px; margin: 0 auto;">
	<span style="font-family: 'Jeju Myeongjo', serif; font-size: 20px; font-weight: 600; border-top-style: solid; border-top-width: thin; padding-top: 5px;">Main Event</span>
	<hr style="color: #f0e9e9">
</div>

<!-- body 2 :  -->
<br>
<div class="visual">
    <a href="/incompletePage"><img src="../../../resources/images/index/index-ad01.png" /></a>
    <a href="/incompletePage"><img src="../../../resources/images/index/index-ad02.png"/></a>
    <a href="/incompletePage"><img src="../../../resources/images/index/index-ad03.png"/></a>
    <a href="/incompletePage"><img src="../../../resources/images/index/index-ad04.png"/></a>
</div>
<br>

<div style="width: 1200px; margin: 0 auto;">
	<span style="font-family: 'Jeju Myeongjo', serif; font-size: 20px; font-weight: 600; border-top-style: solid; border-top-width: thin; padding-top: 5px;">Shortcut Link</span>
	<hr style="color: #f0e9e9">
</div>

<!-- body 3 :  -->
<br>
<div style="width: 1100px; height: 220px; margin:0 auto;">
	<div style="float:left; width: 550px;"><a href="/incompletePage"><img src="../../../resources/images/index/index-banner01.png"/></a></div>
	<div style="float:left; width: 550px;"><a href="/incompletePage"><img src="../../../resources/images/index/index-banner02.png"/></a></div>
</div>
<div style="width: 1100px; height: 220px; margin:0 auto;">
	<div style="float:left; width: 550px;"><a href="/incompletePage"><img src="../../../resources/images/index/index-banner03.png"/></a></div>
	<div style="float:left; width: 550px;"><a href="/incompletePage"><img src="../../../resources/images/index/index-banner04.png"/></a></div>
</div>

<div style="width: 1200px; margin: 0 auto;">
	<hr style="color: #f0e9e9">
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<!-- script -->
<script type="text/javascript">
	$('.visual').slick({
	    autoplay: true,
	    autoplaySpeed: 1600
	});
</script>

<!-- body end!! -->
</body>

</html>
