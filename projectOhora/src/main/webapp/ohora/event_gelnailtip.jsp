<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ohora 오호라 공식몰</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/ohora/resources/ohora.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div id="wrap" style="padding-top: 156px !important;">
		<div id="container">
			<div id="contents">
<style>
a {
    text-decoration: none;
}

a:hover {
    cursor: pointer;
    text-decoration: underline;
}

@font-face {
	font-family: 'baskerville-medium';
	src: url('/web/mobile/frontapp/Baskerville-Medium.ttf') format('woff');
	font-weight: normal;
	font-style: normal;
}

.eventDetail img {
	display: block;
	margin: 0 auto;
}

#click_btn {
	width: 1000px;
	display: block;
	margin: 0 auto;
}

#click_btn img {
	width: calc(100%/ 3);
	display: inline-block;
}

#product_btn {
	width: 1000px;
	display: block;
	margin: 0 auto;
}

#product_btn img {
	width: calc(100%/ 2);
	display: inline-block;
}

.videowrapper3 {
	position: relative;
	width: 1000px;
	padding-bottom: 75%;
	display: block;
	margin: 0 auto;
}

.videowrapper3 iframe {
	width: 100%;
	height: 100% !important;
	position: absolute;
	display: block;
}

.warmer_promotion {
	width: 1000px;
	margin: 0 auto;
}

.warmer_tab {
	display: flex;
}

.warmer_tab li {
	width: 25%;
	position: relative;
}

.warmer_tab li img:nth-of-type(2) {
	position: absolute;
	left: 0;
	top: 0;
	display: none !important;
}

.warmer_tab li.warmer_active img:nth-of-type(2) {
	display: block !important;
}

.warmer_img {
	width: 1000px;
	z-index: 10;
	position: relative;
}

.warmer_img img:nth-of-type(2), .warmer_img img:nth-of-type(3),
	.warmer_img img:nth-of-type(4) {
	position: absolute;
	left: 0;
	top: 0;
	display: none !important;
}

.warmer_img img.warmer_active {
	display: block !important;
}

.event30_video {
	position: relative;
}

.videowrapper4 {
	position: absolute;
	right: 0;
	top: 9.5%;
	width: 84% !important;
	padding-bottom: 75%;
	display: block;
	margin: 0 auto;
}

.videowrapper4 iframe {
	width: 100%;
	height: 100% !important;
	position: absolute;
	display: block;
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

<div class="wrap"
	style="font-size: 0; width: 1000px; display: block; margin: 0 auto;">
	<div class="image">
		<img src="/ohora/resources/image/gelnailtip/LP.jpg" alt="">
		<img src="/ohora/resources/image/gelnailtip/젤네일팁_3안_LP_02.jpg" alt="">
		<center>
			<img src="/ohora/resources/image/gelnailtip/글레이즈 프렌치 클린본 (1)_저용량.gif" alt="">
		</center>
		<img src="/ohora/resources/image/gelnailtip/3_LP_04.jpg" alt="">
		<img src="/ohora/resources/image/gelnailtip/3_LP_05_f.jpg" alt="">
		<!-- 상품페이지 -->
		<a href="/product/detail.html?product_no=1908"> 
		<img src="/ohora/resources/image/gelnailtip/3_LP_06.jpg" alt="">
		<img src="/ohora/resources/image/gelnailtip/3_LP_07.jpg" alt="">
		<img src="/ohora/resources/image/gelnailtip/3_LP_08_f.jpg" alt=""></a>
		<!-- 상품페이지 -->
		<a href="/product/detail.html?product_no=1908">
		<img src="/ohora/resources/image/gelnailtip/3_LP_09.jpg" alt=""></a> 
		<img src="/ohora/resources/image/gelnailtip/젤네일팁_3안_LP_10_기간수정.jpg" alt="">
		<img src="/ohora/resources/image/gelnailtip/3_LP_11.jpg" alt="">
		<img src="/ohora/resources/image/gelnailtip/3_LP_12.jpg" alt="">
		<img src="/ohora/resources/image/gelnailtip/3_LP_13.jpg" alt="">
		<center>
			<img src="/ohora/resources/image/트윙클레인 컷편집_보정_2 (1).gif" alt="">
		</center>
		<img src="/ohora/resources/image/gelnailtip/3_LP_15.jpg" alt="">
		<div class="wrap" style="font-size: 0; width: 1000px; display: block; margin: 0 auto;">
			<!--슬라이드 이미지 -->
			<div id="ivBanner_654"></div>
			<!--슬라이드 이미지 -->
		</div>
		<!-- 상품페이지 -->
		<a href="/product/detail.html?product_no=1908">
		<img src="/ohora/resources/image/gelnailtip/3_LP_17.jpg" alt="">
		</a>
		<div style="width: 550px; position: fixed; bottom: 0; right: 170px; z-index: 10; height: 45px; text-align: center;">
			<a href="/product/detail.html?product_no=1908" style="display: block; background-color: #000; color: #fff; line-height: 45px; font-size: 18px;">젤네일팁
				경험하러가기</a>
		</div>
		<!-- go_top 버튼 -->
			   <div id="floating">
				    <div class="go_top">
				        <span class="icon"></span>
				    </div>
				</div>
	</div>
</div>
				<script type="text/javascript">
					function shareKakaotalk() {
						Kakao.Link
								.sendDefault({
									objectType : "feed",
									content : {
										title : "또 하나의 새로운 경험, 오호라 젤네일팁" // 콘텐츠의 타이틀
										,
										description : "즐겁게 네일을 해보시길 바라며 준비했습니다. 부담 없이 1천원에 젤네일팁을 즐겨주세요." // 콘텐츠 상세설명
										,
										imageUrl : "https://ohora2019.cafe24.com/web/event/gelnailtip/gelnailtip-15.jpg" // 썸네일 이미지
										,
										link : {
											mobileWebUrl : document
													.getElementById("reco_url").value // 모바일 카카오톡에서 사용하는 웹 링크 URL
											,
											webUrl : document
													.getElementById("reco_url").value
										// PC버전 카카오톡에서 사용하는 웹 링크 URL
										}
									},
									social : {
										likeCount : 999 // LIKE 개수
										,
										commentCount : 999 // 댓글 개수
										,
										sharedCount : 999
									// 공유 회수
									},
									buttons : [ {
										title : "가입 후 친구와 함께 혜택 받기" // 버튼 제목
										,
										link : {
											mobileWebUrl : document
													.getElementById("reco_url").value // 모바일 카카오톡에서 사용하는 웹 링크 URL
											,
											webUrl : document
													.getElementById("reco_url").value
										// PC버전 카카오톡에서 사용하는 웹 링크 URL
										}
									} ]
								});
					}
				</script>

				<script>
					function copy_text() {
						var copyText = document.getElementById("reco_url");
						copyText.select();
						document.execCommand("copy");
						alert("주소가 복사 되었습니다.");
					}
					
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