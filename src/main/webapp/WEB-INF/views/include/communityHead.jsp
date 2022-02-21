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

    .nav-container-comu {
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

    .nav-item-comu {
        font-size: 14px;
        padding: 4px;
        cursor: pointer; 
    }
    .nav-item-comu a {
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
            <ul class="nav-container-comu">
                <li class="nav-item-comu"> 
                    <span></span>
                </li>
                <li class="nav-item-comu">
                    <a href="/member/login-form" style="font-size: 30px; font-weight: 600; color: brown;">Community</a>
                    <span>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　</span>
                    <a href="/community/hairForum">HairForum　　</a>
                    <!-- <a href="/community/notice">Notice　　</a> -->
                    <!-- <a href="/community/event">Event　　</a> -->
                    <a href="http://pf.kakao.com/_cgcKb">Question　</a>
                </li>
            </ul>
        </div>
    </nav>
</body>

</html>