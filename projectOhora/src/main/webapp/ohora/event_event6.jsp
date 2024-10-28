<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ohora 오호라 공식몰</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/ohora/resources/ohora.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://localhost/ohora/resources/event01.css">
<link rel="stylesheet" href="http://localhost/ohora/resources/event02.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.event-wrap img {
    display: block;
    margin: 0 auto;
}
body, html, :lang(ko) {
    font-family: 'Noto Sans KR', sans-serif;
}
img {
    max-width: 100%;
    vertical-align: top;
    overflow-clip-margin: content-box;
    overflow: clip;
}
style attribute {
    text-align: center;
}
a {
    color: #000;
}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
}
#floating {
    position: fixed;
    bottom: 70px;
    right: 55px;
    z-index: 1000;
    cursor: pointer;
}

#floating .go_top {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    background: url(/ohora/resources/arrow_top.png) no-repeat center center;
    background-size: contain;
}

#floating .go_top:before {
    content: '';
    width: 10px;
    height: 10px;
    border-top: 2px solid white;
    border-right: 2px solid white;
    transform: rotate(-45deg);
    margin-top: 4px;
}
span, a {
    font-family: inherit;
    color: inherit;
    font-size: inherit;
}
</style>
</head>
<body>
<div class="wrap">
    <div class="eventDetail">
        <div class="title-block">
        </div>
        <div class="event-wrap">
            <p style="text-align: center;">
               <img src="/ohora/resources/image/event_06_image/pc_f.jpg" alt="">
                <img src="/ohora/resources/image/event_06_image/event_01.jpg" alt="">
                
                <!-- 회원가입 링크 -->
                <a href="/member/join_intro.html">
                <img src="/ohora/resources/image/event_06_image/event_02.jpg" alt=""></a>
              <img src="/ohora/resources/image/event_06_image/event_03.jpg" alt="">
			<div class="insta_review_wrap">
			    <div class="items">
			        <!-- ajax 호출 -->
			    </div>
			</div>
     
        <img src="/ohora/resources/image/event_06_image/event_04.jpg">
        <img src="/ohora/resources/image/event_06_image/event_06.jpg">&nbsp;
        <!-- 카카오톡 로그인 링크 -->
        <a href="https://accounts.kakao.com/login?continue=http%3A%2F%2Fpf.kakao.com%2F_axjYfj%2Ffriend%3Fapi_ver%3D1.0%26kakao_agent%3Dsdk%252F1.40.14%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fwww.ohora.kr%26app_key%3D9ae31018e6a3df11adb5d4dfa9cc9d37%26referer%3Dhttps%253A%252F%252Fwww.ohora.kr%252Fevent%252Fevent3.html">
        <img src="/ohora/resources/image/event_06_image/kakao_btn.jpg"></a>

            
                <img src="/ohora/resources/image/event_06_image/22.jpg" alt="">
                <img src="/ohora/resources/image/event_06_image/웰컴 첫구매 젤램프 증정 이벤트 유의사항.jpg" alt="">
                <div style="width:550px; position:fixed; bottom:0; right:170px; z-index:10; height:45px; text-align:center;">
                
                <!-- 신상품 목록 이동링크 -->
                <a href="/product/list.html?cate_no=121&amp;page_num=1" style="display:block; background-color:#000; color:#fff; line-height:45px; font-size:18px;">디자인 보러가기</a>
            </div>
            
            <!-- go_top 버튼 -->
		   <div id="floating">
			    <div class="go_top">
			        <span class="icon"></span>
			    </div>
			</div>
            

            <script>
	         // go_top 버튼 스크립트
	            $(document).ready(function() {
	                // go_top 버튼 클릭 시 상단으로 부드럽게 이동
	                $('.go_top').on('click', function() {
	                    $('html, body').animate({ scrollTop: 0 }, 400);
	                    return false;
	                });
	                
	                // 스크롤 이벤트에 따라 go_top 버튼 표시
	                $(window).scroll(function() {
	                    if ($(this).scrollTop() > 200) {
	                        $('#floating').fadeIn();
	                    } else {
	                        $('#floating').fadeOut();
	                    }
	                });
	            });
            </script>

                </div>
            </div>
        </div>

</body>
</html>