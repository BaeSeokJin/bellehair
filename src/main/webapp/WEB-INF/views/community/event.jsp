<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <title>Document</title>
    
   	<!-- head 1,2, community -->
	<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
	<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>
	<%@ include file="/WEB-INF/views/include/communityHead.jsp" %>
    
    <style>
        @import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
        .containner{
            width: 1000px;
            height: 1000px;
            margin: 0 auto;
            background-color: rgb(178, 143, 235);
            color: rgb(255, 255, 255);
            font-size: 40px;
            font-family: 'Jeju Myeongjo', serif;
        }
    </style>
</head>
<body>
    <div class="containner">
        ▦community - event 
    </div>
    
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>        
    
</body>
</html>