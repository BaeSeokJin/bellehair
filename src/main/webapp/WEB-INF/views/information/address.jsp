<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
   	<!-- head 1,2, information -->
	<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
	<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>
	<%@ include file="/WEB-INF/views/include/informationHead.jsp" %>
    
    <style>
        @import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
        body{
            padding: 0%;
            margin: 0%;
        }
        .containner{
            width: 800px;
            height: 1050px;
            margin: 0 auto;
            padding: 50px;
            background-color: #f0e9e9;
            color: rgb(0, 0, 0);
            font-size: 20px;
            font-family: 'Jeju Myeongjo', serif;
        }
        .map{
            width: 800px;
            height: 500px;
            background-color: brown;
            margin: 0 auto;
            padding: 0;
        }
        .borderFont{
            font-weight: 600;
        }
        .addressAndPhone div{
            padding-bottom: 8px;
        }
    </style>
</head>
<body>

<!-- 전체 컨테이너 시작 -->
<div class="containner">

    <!-- 카카오맵 -->
    <div class="map">
        Map : 800px*500px 
    </div>

    <br><br>

    <!-- 주소와 대표전화 -->
    <div class="addressAndPhone" style="height: ;">
        <div class="borderFont" style="width: 200px; float: left;">
            <div>주소</div>
            <div>대표전화</div>
            <div>대표전화</div>
        </div>
        <div style="width: 600px; float: left;">
            <div>서울특별시 강넘구 역사동 898-774 늘푸른빛빌딩 4층</div>
            <div>대표전화 : 060-123-4567</div>
            <div>대표전화 : 060-123-4568</div>
        </div>
    </div>

    <hr style="margin-top: 100px; margin-bottom: 50px;">

    <!-- 버스와 지하철 -->
    <div class="busAndSubway" style="height: 130px;">
        <div style="width: 400px; float: left;">
            <div class="borderFont">버스 이용 시</div>
            <div style="color: green;"><i class="xi-bus"></i>초록 : 1020, 1711, 7018, 7022, 7016</div>
            <div style="color: blue;"><i class="xi-bus"></i>파랑 : 7025</div>
            <div style="color: rgb(96, 165, 192);"><i class="xi-bus"></i>공항버스 : 6011</div>
        </div>
        <div style="width: 400px; float: left;">
            <div class="borderFont">지하철 이용 시</div>
            <div style="color: rgb(214, 68, 42);"><i class="xi-subway"></i>3호선 경복궁역 4번 출구 : 걸어서 4분</div>
            <div style="color: purple;"><i class="xi-subway"></i>5호선 광화문역 2번 출구 : 걸어서 10분</div>
        </div>
    </div>

    <hr style="margin-bottom: 40px;">

    <!-- 주차 관련 -->
    <div class="parking">
        <div class="borderFont"><i class="xi-park"></i>주차 안내</div>
        <div> - 삼청동 가는 길 초압 우측편에 푸른주차장</div>
        <div> - 승용차는 지하에 약 65대 가능</div>
        <br>
        <div class="borderFont"><i class="xi-dollar"></i>주차 요금</div>
        <div> - 1시간 무료 주차</div>
        <div> - 1시간 이후 30분에 1,000원</div>
        <div> - 24시간 15,000원</div>
    </div>

    <br><hr>

<!-- 전체 컨테이너 끝 -->
</div>
    
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>        
  
</body>
</html>