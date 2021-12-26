<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<title>Insert title here</title>
	
<!-- head 1,2 -->
<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>

<style>
    @import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

    /* 
    ========================================
    전체 페이지
    ========================================
        */
    .memberList-containner{
        width: 800px;
        height: 680px;
        margin: 0 auto;
        background-color: #f5eded79;
        color: rgb(5, 5, 5);
        font-size: 14px;
        font-family: 'Jeju Myeongjo', serif;
        border-radius: 30px;
        border-style: solid;
        border-width: 2px;
    }
    .memberList-member{
        padding: 10px 0px 0px 30px;
    }
    .memberList-table{
        margin: 0 auto;
        border-width: 1px;
        border-style: solid;
    }
    .table-up{
        font-size: 17px;
    }
    .table-no{
        width: 40px;
        border-right-width: 1px;
        border-right-style: dotted;
        text-align: center;
    }
    .table-id{
        width: 100px;
        border-right-width: 1px;
        border-right-style: dotted;
        text-align: center;
    }
    .table-name{
        width: 65px;
        border-right-width: 1px;
        border-right-style: dotted;
        text-align: center;
    }
    .table-nickname{
        width: 100px;
        border-right-width: 1px;
        border-right-style: dotted;
        text-align: center;
    }
    .table-email{
        width: 200px;
        border-right-width: 1px;
        border-right-style: dotted;
        text-align: center;
    }
    .table-tell{
        width: 110px;
        border-right-width: 1px;
        border-right-style: dotted;
        text-align: center;
    }
    .table-ban{
        width: 70px;
        text-align: center;
    }
    .table-ban a{
        border-width: 1px;
        border-style: dotted;
    }
</style>
</head>
<body>
<!-- 컨테이너 시작 -->
<div class="memberList-containner">

    <h1 class="memberList-member">회원 관리</h1>
    
    <table class="memberList-table">
        <thead>
            <tr class="table-up">
                <th class="table-no">No</th>
                <th class="table-id">ID</th>
                <th class="table-name">Name</th>
                <th class="table-nickname">Nickname</th>
                <th class="table-email">E-mail</th>
                <th class="table-tell">Tell</th>
                <th class="table-ban">Ban</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${members}" var="member">
                <tr>
                    <td class="table-no"><c:out value="${member.userCode }"/></td>
                    <td class="table-id"><c:out value="${member.userId }"/></td>
                    <td class="table-name"><c:out value="${member.name }"/></td>
                    <td class="table-nickname"><c:out value="${member.nickname }"/></td>
                    <td class="table-email"><c:out value="${member.email }"/></td>
                    <td class="table-tell"><c:out value="${member.tell }"/></td>
                    <td class="table-ban"><a href="/admin/member/leave">탈퇴처리</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

<!-- 컨테이너 끝 -->
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>