<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="../resources/cdn-main/template.css">
<script src="../resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<body>
    <img
      src="https://www.ohora.kr/optimize/images/pc/common/PC_header_lamp2.webp"
      alt=""
      class="header"
      style
      width="100%"
    />
    <header>
      <div class="SP_top_wrap">
        <div class="layout_Top">
          <div
            class="xans-element- xans-layout xans-layout-statelogoff SP_gnb_inr"
          >
            <a href=""><span class="title">회원가입 &nbsp;&nbsp;|</span></a>
            <a href="" class="log"><span class="title">로그인</span></a>
          </div>
        </div>
      </div>

      <div id="nav">
        <div>
          <div class="SMS_fixed_inner">
            <div
              class="xans-element- xans-layout xans-layout-logotop fixed_logo"
            >
              <a href="/" style="display: block; text-align: center">
                <img
                  src="https://ohora.kr/web/upload/logo/ohora_BI_logotype_w.png"
                  id="navLogo"
                />
              </a>
            </div>

            <!-- 헤더 주메뉴 -->
            <div class="gnb_menu_container no-hover">
              <ul class="gnb_menu_wrap menu_1ul">
                <li class="eng_font menu_1li submenu">
                  <a href="/product/list.html?cate_no=121">new</a>
                </li>
                <li class="eng_font menu_1li submenu">
                  <a href="/product/list.html?cate_no=120">best</a>
                </li>

                <li class="product">
                  <a href="/product/list.html?cate_no=44">product</a>
                  <!-- 마우스 오버 시 나오는 영역(product) -->
                  <ul class="menu_2ul">
                    <li>
                      <a href="/product/list.html?cate_no=160"
                        ><span>네일</span></a
                      >
                    </li>
                    <li>
                      <a href="/product/list.html?cate_no=161"
                        ><span>페디</span></a
                      >
                    </li>
                    <li>
                      <a href="/product/list.html?cate_no=470"
                        ><span>커스텀</span></a
                      >
                    </li>
                    <li>
                      <a href="/product/list.html?cate_no=49"
                        ><span>케어 &amp; 툴</span></a
                      >
                    </li>
                  </ul>
                  <!-- //마우스 오버 시 나오는 영역(product) -->
                </li>
                <li class="eng_font menu_1li submenu">
                  <a href="/product/list.html?cate_no=671">outlet</a>
                </li>

                <!-- 마우스 오버 시 나오는 영역(2+1) -->
                <ul class="menu_2ul"></ul>
                <!-- //마우스 오버 시 나오는 영역(2+1) -->
                <li class="eng_font">
                  <a href="/event/index.html">event</a>
                </li>
                <li class="eng_font">
                  <a href="/board/gallery/list.html?board_no=13">how to</a>
                </li>
              </ul>
            </div>
            <!-- //헤더 주메뉴 -->
            <div class="icon_wrap">
              <div class="small_icon search_fixed_btn">
                <img
                  src="https://ohora.kr/web/upload/common/icon_ham_search.svg"
                  alt=""
                />
              </div>
              <div
                class="xans-element- xans-layout xans-layout-orderbasketcount small_icon m_cart common_cart"
              >
                <a href="/order/basket.html"
                  ><b class="count EC-Layout-Basket-count">0</b>
                  <img
                    src="https://ohora.kr/web/upload/common/icon_cart.svg"
                    alt=""
                /></a>
              </div>
              <div class="small_icon m_menu active">
                <a class="SMS_menu">
                  <img
                    src="https://ohora.kr/web/upload/common/icon_menu.svg"
                    alt=""
                  />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- 콘텐츠 -->

    <!-- 콘텐츠 -->

    <!-- 아래 필수 -->
    <div class="footer">
      <div class="chat">
        <div class="top_left">
          <span class="kakao_chat">
            <a href="https://www.ohora.kr/etc/CS.html"
              >카카오톡 상담 (@ohora)</a
            >
          </span>
          <span class="center_chat">
            <a
              href="https://www.ohora.kr/member/login.html?returnUrl=%2Fboard%2Fconsult%2Flist.html%3Fboard_no%3D9"
              >게시판 상담 (1:1 문의하기)</a
            >
          </span>
        </div>
        <div class="top_right">
          <a href="https://www.instagram.com/ohora_official/" target="_blank">
            <img src="../image/1.png" />
          </a>
          <a href="https://www.facebook.com/ohora.official" target="_blank">
            <img src="../image/2.png" />
          </a>
          <a href="https://pf.kakao.com/_axjYfj" target="_blank">
            <img src="../image/3.png" />
          </a>
          <a
            href="https://www.youtube.com/channel/UCV72a2QWRpEZjZYkWjXHZWQ"
            target="_blank"
          >
            <img src="../image/4.png" />
          </a>
          <a
            href="https://post.naver.com/my.nhn?memberNo=47439708"
            target="_blank"
          >
            <img src="../image/5.png" />
          </a>
        </div>
      </div>
      <br />
      <div class="line"></div>
      <div class="center_menu">
        <div class="list" id="a">
          주문
          <div class="sub" id="aa">
            <a
              href="https://www.ohora.kr/member/login.html?returnUrl=/myshop/order/list.html"
              >주문·배송내역</a
            ><br /><br />
            <a
              href="https://www.ohora.kr/member/login.html?returnUrl=/myshop/order/list.html?mode=cs"
              >취소/교환/반품내역</a
            ><br /><br />
            <a href="https://www.ohora.kr/order/basket.html">장바구니</a>
          </div>
        </div>
      </div>
      <div class="line"></div>
      <div class="center_menu">
        <div class="list" id="b">
          회원
          <div class="sub" id="bb">
            <a href="#">신규 혜택</a><br /><br />
            <a href="#">멤버십 혜택</a><br /><br />
            <a href="#">마이페이지</a><br /><br />
            <a href="#">적립금·쿠폰내역</a><br /><br />
            <a href="#">회원정보변경</a>
          </div>
        </div>
      </div>
      <div class="line"></div>
      <div class="center_menu">
        <div class="list" id="c">
          서비스
          <div class="sub" id="cc">
            <a href="#">FAQ</a><br /><br />
            <a href="#">상담톡</a><br /><br />
            <a href="#">사용법</a><br /><br />
            <a href="#">공지사항</a>
          </div>
        </div>
      </div>
      <div class="line"></div>
      <div class="company">
        <p>
          대표 : 유기현<br />
          회사 : 주식회사 글루가<br />
          주소 : 충남 천안시 서북구 2공단8길 45 2층 (업성동)<br />
          사업자등록번호 : 722-87-00061<br />
          통신판매업신고번호 : 2017-충남천안-1055호 사업자 정보 확인<br />
          개인정보처리담당자 : 유태규<br />
          고객센터 : 1566-0554<br />
          평일 09:00~18:00 (Lunch 12:30~13:30)<br />
          영업문의 : ohora_official@ohora.com<br />
          제휴 & 파트너십 문의 : ohora_partnership@ohora.com<br />
          글로벌 제휴 & 파트너십 문의 : Global-Business@ohora.com
        </p>
      </div>
      <div class="line"></div>
      <div class="bottom">
        <span class="a"><a href="#">브랜드 소개</a></span>
        <span class="b"><a href="#">이용약관</a></span>
        <span class="c"><a href="#">개인정보처리방침</a></span>
      </div>
    </div>
  </body>
</html>
