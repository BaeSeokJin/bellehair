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
            margin: 0 auto;
            background-color: #f0e9e9;
            color: #888;
            font-size: 14px;
            font-family: 'Jeju Myeongjo', serif;
        }
        .hairForum{
            padding: 20px 20px 10px 50px;
            height: 30px;
            font-size: 34px;
            font-weight: 600;
            color: black;
        }

        /* 
        ==============================================
        상세페이지
        ==============================================
       */

        .boardContainner {
            margin: 0 auto;
            width: 900px;
            min-height: 585px;
            max-height: 1000px;
            padding-bottom: 10px;
        }
        
        .section01{
            width: 875px;
            height: 65px;
            float: left;
            border-top-style: solid;
            border-top-width: 1px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 5px;
            padding: 10px 0px 5px 10px;
        }
        
        .section01 input{
        	width: 600px;
        	height: 30px;
        	font-size: 16px;
        	margin-top: 10px;
        	padding: 5px;
        }

        .section02{
            width: 855px;
            min-height: 500px;
            max-height: 1000px;
            font-size: 15px;
            padding: 10px 20px 5px 10px;
            overflow:auto;
            border-top-style: solid;
            border-top-width: 0px;
            border-right-style: solid;
            border-right-width: 1px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-left-style: solid;
            border-left-width: 5px;
        }
        
        .section02 textarea{
        	font-size: 16px;
        	padding: 5px;
        	margin: 10px 0 10px 0;
        }
        
        .section03 button {
			font-size: 20px;
			height: 40px; 
			width: 100px;
			margin: 20px 0 20px 0;
		}	
        
    </style>

</head>
<body>

<!-- 컨테이너 시작 -->
<div class="containner">

    <div class="hairForum">Hair Forum 글 수정하기</div>
    
    <!-- 상세페이지 -->
    <div class="boardContainner">
		<form:form action="/community/modifyPosting" method="post">
		    <div class="section01">
		        <input type="text" name="title" value="${board.title}">
		    </div>
		    <div class="section02">
		       	<textarea name="content" rows="30" cols="100">${board.content}</textarea>
		    </div>
		    <div class="section03" style="text-align: center;">
		       	<button type="submit">작성완료</button>
		    </div>    	
		</form:form>
    </div>

<!-- 컨테이너 끝 -->
</div>
    
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>        
  
</body>
</html>