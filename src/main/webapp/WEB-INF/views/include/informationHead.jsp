<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <style>
    @import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

    .nav-container-infor {
        display: flex;
        justify-content: space-between;
        flex-direction: row;
        width: 1000px;
        margin: 0 auto; 
        padding: 0; 
        background-color: rgb(253, 243, 247);
        list-style-type: none; 
        font-family: 'Jeju Myeongjo', serif;
    }

    .nav-item-infor {
        font-size: 14px;
        padding: 4px;
        cursor: pointer; 
    }
    .nav-item-infor a {
        text-align: center;
        text-decoration: none;
        color: #2b1212;
        font-weight: 600;
        font-size: 16px;
    }
    </style>
</head>

<body>
    <nav>
        <div style="width: 100%; background-color: rgb(250, 240, 240);">
            <ul class="nav-container-infor">
                <li class="nav-item-infor"> 
                    <span></span>
                </li>
                <li class="nav-item-infor">
                    <a href="/incompletePage" style="font-size: 30px; font-weight: 600; color: brown;">Information</a>
                    <span>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　</span>
                    <a href="/information/aboutDelight">About Delight　　</a>
                    <a href="/information/price">Price　　</a>
                    <a href="/information/address">Address　</a>
                </li>
            </ul>
        </div>
    </nav>
</body>

</html>