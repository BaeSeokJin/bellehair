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
    <style>
        @import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
        html,body {
            margin: 0;
            padding: 0;
        }
        .footer{
            background-color: black;
            width: 100%;
            height: 200px;
        }
        .footer-container{
            margin:0 auto;
            background-image: url("../../../resources/images/include/footer.png");
            width: 1200px;
            height: 200px;
            line-height: 1.2;
        }
        .footer-section01{
            float:left;
        }
        .footer-section01{
            cursor: pointer;
        }
        .footer-section02{
            width: 400px;
            float:left;
            padding-left: 350px;
        }
        .footer-section03{
            width: 350px;
            float:left;
        }
    </style>
</head>
<body>

    <footer class="footer" style="font-size: 13px; font-family: 'Jeju Myeongjo', serif; color: rgb(201, 191, 191);">
        <div class="footer-container">

            <div class="footer-section01">
                <br>
                <span>　　　　　　　　　　　　　　　　　　　　　　　　　　　　</span>　
                <span onclick="javascriot:location.href='https://www.naver.com/'" style="cursor: pointer;">About Delight |</span>
                <span onclick="javascriot:location.href='https://www.naver.com/'" style="cursor: pointer;">개인정보보호정책 |</span>
                <span onclick="javascriot:location.href='https://www.naver.com/'" style="cursor: pointer;">이용약관 |</span>
                <span onclick="javascriot:location.href='https://www.naver.com/'" style="cursor: pointer;">찾아오는길 |</span>
                <span onclick="javascriot:location.href='https://github.com/BaeSeokJin/delight'" style="cursor: pointer;">Github v1.0.1 </span>
            </div>
            
            <br><br><br>
            
            <div class="footer-section02">
                <br>상호 : DelightProject
                <br>대표 : 배석진
                <br>주소 : 서울특별시 강넘구 역사동 898-774 늘푸른빛빌딩 4층
                <br>개인정보관리 책임자 : 배석진
                <br>사업자 등록번호 : 111-22-333333
                <br>통신판매업 신고 : 제 배동 - 11111호
            </div>

            <div class="footer-section03">
                <br>근무시간 : AM 9:00 ~ PM 7:00
                <br>점심시간 : PM 1:00 ~ PM 2:00
                <br>고객센터 : AM 9:00 ~ PM 6:00
                <br>휴일 : 매주 화요일
            </div>
            
        </div>
    </footer>
</body>
</html>