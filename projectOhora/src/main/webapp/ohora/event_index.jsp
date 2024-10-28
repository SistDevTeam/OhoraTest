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
<link rel="stylesheet" href="http://localhost/ohora/resources/event01.css">
<link rel="stylesheet" href="http://localhost/ohora/resources/event02.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
/* 초기 모든 event-list 숨기기 */
.event-list {
    display: none;
}

/* show 클래스가 있는 event-list 보이기 */
.event-list.show {
    display: block;
}

/* contents-box의 기본 스타일 */
.eventPage .event-list .contents-box {
    position: relative;
    margin-bottom: 20px;
    top: 50px;
    opacity: 0;
    transition: all .4s;
}

/* show 클래스가 있는 event-list 내부의 contents-box 스타일 */
.event-list.show .contents-box {
    display: block !important; /* 인라인 스타일을 덮어쓰기 위해 !important 사용 */
    top: 0;
    opacity: 1;
}

/* MORE 버튼 스타일링 */
.eventPage .view {
    text-decoration: none;
    width: 250px;
    display: block;
    margin: 50px auto;
    height: 45px;
    line-height: 45px;
    background: black;
    color: #fff;
    text-align: center;
    font-size: 14px;
}
/* contents-box 내부의 a 태그를 flex container로 만듭니다 */
.eventPage .event-list .contents-box a {
    display: flex;
    align-items: center;
    text-decoration: none;
    color: inherit;
}

/* 이미지 컨테이너의 크기를 고정합니다 */
.eventPage .event-list .contents-box .image {
    flex: 0 0 auto; /* 이미지 크기 고정 */
    width: 50%; /* 전체 너비의 50% 차지 */
}

/* 이미지가 컨테이너를 벗어나지 않도록 설정 */
.eventPage .event-list .contents-box .image img {
    width: 100%;
    height: auto;
    display: block;
}

/* 텍스트 블록 스타일링 */
.eventPage .event-list .contents-box .text-block {
    flex: 1; /* 남은 공간을 모두 차지 */
    padding-left: 30px; /* 이미지와의 간격 */
}

/* 텍스트 블록 내부 요소들의 스타일 */
.eventPage .event-list .contents-box .text-block .date {
    display: block;
    margin-bottom: 10px;
    color: #666;
}

.eventPage .event-list .contents-box .text-block h3 {
    margin: 0 0 10px 0;
    font-size: 24px;
}

.eventPage .event-list .contents-box .text-block .desc {
    margin: 0;
    color: #333;
    line-height: 1.5;
}
@media (max-width: 768px) {
    .eventPage .event-list .contents-box a {
        flex-direction: column;
    }
    
    .eventPage .event-list .contents-box .image {
        width: 100%;
    }
    
    .eventPage .event-list .contents-box .text-block {
        padding-left: 0;
        padding-top: 20px;
    }
}
.eventPage h2 {
    text-align: center;
    margin-bottom: 70px;
}
.eventPage h2 {
    text-transform: lowercase;
}
.titleCommon {
    font-size: 29px;
    line-height: 40px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 50px;
    margin-top: 45px;
}
.titleCommon, .titleCommon * {
    font-family: 'Noto Sans KR', sans-serif !important;
}
</style>
<style>
/* 이미지 기본 상태 */
.eventPage .event-list .contents-box .image img {
    width: 100%;
    height: auto;
    display: block;
    opacity: 0.7; /* 30% 투명도 */
    transition: opacity 0.3s ease; /* 부드러운 전환 효과 */
}

/* contents-box에 호버했을 때 이미지 상태 변경 */
.eventPage .event-list .contents-box:hover .image img {
    opacity: 1; /* 완전 불투명 */
}

/* 또는 a 태그에 호버했을 때 이미지 상태 변경 */
.eventPage .event-list .contents-box a:hover .image img {
    opacity: 1; /* 완전 불투명 */
}


/* contents-box와 이미지 컨테이너 설정 */
.eventPage .event-list .contents-box {
    position: relative;
    margin-bottom: 20px;
}

.eventPage .event-list .contents-box a {
    display: block;
    position: relative;
    text-decoration: none;
    color: inherit;
}

/* 이미지 컨테이너 스타일 */
.eventPage .event-list .contents-box .image {
    width: 100%;
    position: relative;
}

/* 이미지 기본 상태 (호버하지 않을 때) */
.eventPage .event-list .contents-box .image img {
    width: 100%;
    height: auto;
    display: block;
    opacity: 0.7; /* 30% 투명도 */
    transition: opacity 0.3s ease; /* 부드러운 전환 효과 */
}

/* 이미지 호버 상태 */
.eventPage .event-list .contents-box .image img:hover {
    opacity: 1; /* 완전 불투명 */
}

/* 텍스트 블록을 이미지 위에 겹치게 배치 */
.eventPage .event-list .contents-box .text-block {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    width: 40%; 
    padding: 30px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    transition: all 0.5s ease; /* 부드러운 투명도 전환 효과 */
}

/* 텍스트 스타일링 */
.eventPage .event-list .contents-box .text-block .date {
    display: block;
    margin-bottom: 10px;
    color: #666;
    font-size: 14px;
}

.eventPage .event-list .contents-box .text-block h3 {
    margin: 0 0 10px 0;
    font-size: 24px;
    color: #333;
}

.eventPage .event-list .contents-box .text-block .desc {
    margin: 0;
    color: #333;
    line-height: 1.5;
}

/* hover 텍스트 스타일링 */
.eventPage .event-list .contents-box .text-block .date {
    display: block;
    margin-bottom: 10px;
    color: black;
    font-size: 14px;
}

.eventPage .event-list .contents-box .text-block h3 {
    margin: 0 0 10px 0;
    font-size: 24px;
    color: black;
}

.eventPage .event-list .contents-box .text-block .desc {
    margin: 0;
    color: black;
    line-height: 1.5;
}

#floating {
    position: fixed;
    bottom: 70px;
    right: 55px;
    z-index: 1000; /* 버튼이 다른 요소 위에 위치하도록 설정 */
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

/* 반응형 디자인을 위한 미디어 쿼리 */
@media (max-width: 768px) {
    .eventPage .event-list .contents-box .text-block {
        width: 100%;
        position: relative;
        background: rgba(255, 255, 255, 0.7);
    }
}
</style>
</head>
<body>
	<div id="wrap" style="padding-top: 156px !important;">
		<div id="container">
			<div id="contents">
				<div class="wrap">
					<div class="eventPage" data-index="5">
						<div class="title-block">
							<h2 class="titleCommon">event</h2>
						</div>

						<!--신규 회원 혜택-->
						<div class="event-list">
							<div class="contents-box active" style="display: block;">
								<a href="http://localhost/ohora/ohora/event/event6.jsp">
									<div class="image">
									<img src="/ohora/resources/image/index_image/pc_event.jpg">
									</div>
									<div class="text-block">
										<span class="date">welcome gift</span>
										<h3>오호라 신규 회원 혜택</h3>
										<p class="desc">가입 후 첫 구매 시 오호라 젤램프 무료증정</p>
									</div>
								</a>
							</div>
						</div>

						<!--vip season 8-->
						<div class="event-list">
							<div class="contents-box active" style="display: block;">
								<a href="http://localhost/ohora/ohora/event/vipgift08.jsp">
									<div class="image">
										<img src="/ohora/resources/image/index_image/pc_event_closed.jpg" alt="">
									</div>
									<div class="text-block">
										<span class="date">2023.12.14 ~ 2024.01.02</span>
										<h3>vip gift season 8</h3>
										<p class="desc">
											오호라의 마지막 VIP gift로 <br>가장 나다운 연말 보내보세요.

										</p>
									</div>
								</a>
							</div>
						</div>

						<!--vip gift7-->
						<div class="event-list">
							<div class="contents-box active" style="display: block;">
								<a href="http://localhost/ohora/ohora/event/vipgift07.jsp">
									<div class="image">
										<img src="/ohora/resources/image/index_image/pc_event_closed (1).jpg" alt="">
									</div>
									<div class="text-block">
										<span class="date">2023.07.21 ~ 2023.07.31</span>
										<h3>vip gift season 7</h3>
										<p class="desc">
											오직 오호라 크루만을 위한 선물 <br>손과 발을 캔버스삼아 나다움을 표현해보세요.
										</p>
									</div>
								</a>
							</div>
						</div>

						<!--젤네일팁 출시 1주년 기념 감사 이벤트-->
						<div class="event-list">
							<div class="contents-box active" style="display: block;">
								<a href="http://localhost/ohora/ohora/event/gelnailtip.jsp">
									<div class="image">
										<img src="/ohora/resources/image/index_image/pc_event_closed (2).jpg" alt="">
									</div>
									<div class="text-block">
										<span class="date">2023.05.26 - 재고 소진 시 까지</span>
										<h3></h3>
										<p class="desc"></p>
										<h3>1st anniversary</h3>
										젤네일팁 출시 1주년 기념 감사 이벤트

									</div>
								</a>
							</div>
						</div>

						<!--오호라 X 르세라핌-->
						<div class="event-list">
							<div class="contents-box">
								<a href="http://localhost/ohora/ohora/event/lesserafim.jsp">
									<div class="image">
										<img src="/ohora/resources/image/index_image/pc_event_closed (3).jpg" alt="">
									</div>
									<div class="text-block">
										<span class="date">collaboration</span>
										<h3>오호라 X 르세라핌</h3>
										<p class="desc">르세라핌 콜라보레이션 디자인 한정 출시</p>
									</div>
								</a>
							</div>
						</div>

						<!--vip gift6 -->
						<div class="event-list">
							<div class="contents-box">
								<a href="http://localhost/ohora/ohora/event/vipgift06.jsp">
									<div class="image">
										<img src="/ohora/resources/image/index_image/PC_event_list_closed.jpg" alt="">
									</div>
									<div class="text-block">
										<span class="date">2022.12.09 - 재고 소진 시 까지 </span>
										<h3>vip gift season 6</h3>
										<p class="desc">
											오직 오호라 크루만을 위한 선물 <br>RED로 대담하게, 나다움을 표현해 보세요.

										</p>
									</div>
								</a>
							</div>
						</div>


						<!--데이즈데이즈2차-->
						<div class="event-list">
							<div class="contents-box">
								<a href="http://localhost/ohora/ohora/event/dazedayz_2.jsp">
									<div class="image">
										<img src="/ohora/resources/image/index_image/PC_event_list_closed (1).jpg" alt="">
									</div>
									<div class="text-block">
										<span class="date">collaboration</span>
										<h3>오호라 X 데이즈데이즈의 두 번째 썸머 컬렉션</h3>
										<p class="desc">한여름을 담아낸 두 브랜드의 두 번째 만남을 경험해 보세요.</p>
									</div>
								</a>
							</div>
						</div>

						<!--초아-->
						<div class="event-list">
							<div class="contents-box">
								<a href="http://localhost/ohora/ohora/event/eventchoa.jsp">
									<div class="image">
										<img src="/ohora/resources/image/index_image/pc_f.jpg" alt="">
									</div>
									<div class="text-block">
										<span class="date">collaboration</span>
										<h3>ohora x CHOA</h3>
										<p class="desc">초아 콜라보레이션 제품을 CJ 오쇼핑 라이브에서 만나보세요.</p>
									</div>
								</a>
							</div>
						</div>
						
						<!-- go_top 버튼 -->
					   <div id="floating">
						    <div class="go_top">
						        <span class="icon"></span>
						    </div>
						</div>


						<a href="#" class="view" data-index="1">MORE</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	$(document).ready(function () {
        let itemsToShow = 4;
        const totalItems = $(".event-list").length;

        // 초기 설정: 첫 4개의 항목에만 'show' 클래스를 추가하여 표시
        $(".event-list:lt(" + itemsToShow + ")").addClass("show");

        // MORE 버튼 클릭 시 추가로 항목 표시
        $(".view").click(function (e) {
            e.preventDefault();
            itemsToShow += 4;
            $(".event-list:lt(" + itemsToShow + ")").addClass("show");

            // 모든 항목이 표시되면 MORE 버튼 숨기기
            if (itemsToShow >= totalItems) {
                $(this).hide();
            }
        });
    });
	
	// go_top 버튼 스크립트
    $(document).ready(function() {
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
</body>
</html>