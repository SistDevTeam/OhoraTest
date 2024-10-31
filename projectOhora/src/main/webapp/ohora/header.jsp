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
<link rel="stylesheet" href="../resources/cdn-main/header.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
  <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
  
</head>
<div class="SP_topBanner" style="display: block">
      <div class="SP_layoutMin">
        <div class="SP_topBn_inr"></div>

        <div class="xans-element- xans-layout xans-layout-statelogoff">
          <div
            class="slide_banner_top slick-initialized slick-slider"
            id="sltop_ban"
          >
            <div class="slick-list draggable">
              <div
                class="slick-track"
                style="
                  opacity: 1;
                  width: 1200px;
                  transform: translate3d(0px, 0px, 0px);
                "
              >
                <div
                  class="slick-slide slick-current slick-active"
                  data-slick-index="0"
                  aria-hidden="false"
                  style="width: 1200px"
                  tabindex="0"
                >
                  <a
                    href="/event/event6.html"
                    tabindex="0"
                    style="display: block"
                    ><img
                      src="https://ohora.kr/optimize/images/pc/common/PC_header_lamp2.webp"
                      style="width: 100%; display: block"
                  /></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 회원 -->
    </div>

    <div id="fix_position" class="modify ham_modify">
      <div id="SMS_fixed_wrap" class="SMS_fixed_wrap">
        <div class="SP_top_wrap">
          <div class="layout_Top">
            <div
              class="xans-element- xans-layout xans-layout-statelogoff SP_gnb_inr"
            >
              <a href="/member/join_intro.html"
                ><span class="title">회원가입</span></a
              >|
              <a href="/member/login.html" class="log"
                ><span class="title">로그인</span></a
              >
            </div>
          </div>
        </div>
        <div class="SMS_fixed_inner">
          <div class="xans-element- xans-layout xans-layout-logotop fixed_logo">
            <a
              href="/"
              style="display: block; text-align: center; margin-top: 30px"
            >
              <img
                src="https://ohora.kr/web/upload/logo/ohora_BI_logotype_w.png"
                style="margin-bottom: 7px"
              />
            </a>
          </div>

          <!-- 헤더 주메뉴 -->
          <div class="gnb_menu_container">
            <ul class="gnb_menu_wrap menu_1ul">
              <li class="eng_font menu_1li submenu">
                <a href="/product/list.html?cate_no=121">new</a>
              </li>
              <li class="eng_font menu_1li submenu">
                <a href="/product/list.html?cate_no=120">best</a>
              </li>

              <li class="eng_font">
                <a href="/projectOhora/product/list.do">product</a>
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
              <li class="eng_font"><a href="/event/index.html">event</a></li>
              <li class="eng_font">
                <a href="/board/gallery/list.html?board_no=13">how to</a>
              </li>
            </ul>
          </div>
          <!-- //헤더 주메뉴 -->

          <div class="icon_wrap">
            <div class="small_icon search_fixed_btn"></div>
            <div
              class="xans-element- xans-layout xans-layout-orderbasketcount small_icon m_cart common_cart"
            >
              <a href="/order/basket.html"
                ><b class="count EC-Layout-Basket-count">0</b></a
              >
            </div>
            <div class="small_icon m_menu"><a class="SMS_menu"></a></div>
          </div>
        </div>
      </div>
 

    <!-- 검색 -->
    <div class="hd_search_container" style="overflow: hidden; display: block">
      <div class="SP_search_wrap">
        <div class="SP_utilListSearch_inner">
          <form
            id="searchBarForm"
            name=""
            action="/product/search.html"
            method="get"
            target="_self"
            enctype="multipart/form-data"
          >
            <input id="banner_action" name="banner_action" value="" type="hidden" />
            <div class="xans-element- xans-layout xans-layout-searchheader">
          
              <fieldset>
                <legend style="display: none">검색</legend>
                <input
                  id="keyword"
                  name="keyword"
                  fw-filter=""
                  fw-label="검색어"
                  fw-msg=""
                  class="inputTypeText"
                  placeholder=""
                  onkeyup="SEARCH_HASHTAG.getHashtag($(this)); "
                  autocomplete="off"
                  onmousedown="SEARCH_BANNER.clickSearchForm(this)"
                  value=""
                  type="text"
                /><button
                  type="button"
                  class="SP_srh_submit_btn"
                  onclick="SEARCH_BANNER.submitSearchBanner(this); return false;"
                >
                  <span class="SP_cm_icon SP_black_search_icon"></span>
                </button>
              </fieldset>
            </div>
          </form>
        </div>
    
        <!--------------- 검색 키워드 --------------->
        <div class="SP_utilListKeyword_inner">
          <ul>
            <li><a href="/product/list.html?cate_no=671">#OUTLET 입장하기</a></li>
            <li><a href="/product/list.html?cate_no=120">#BEST 디자인 추천</a></li>
            <li><a href="/event/event6.html">#첫구매 젤램프 증정</a></li>
          </ul>
        </div>
        <!--------------- 검색 키워드 --------------->
      </div>
    </div>
  </div>

  <!-- 슬라이더 초기화 코드 -->
    <script>
      $(document).ready(function () {
        $(".slide_banner_top").slick({
          infinite: true,
          speed: 300,
          slidesToShow: 1,
          dots: false,
          arrows: false,
          autoplay: true,
          autoplaySpeed: 3000,
          swipe: true,
          pauseOnHover: false,
        });
      });
    </script>

    <script>
      $(document).ready(function() {
        // 검색창을 감싸고 있는 div 요소 선택
        const searchContainer = $('.hd_search_container');

        // 검색창을 기본적으로 숨김
        searchContainer.hide();

        // .small_icon.search_fixed_btn 요소 클릭 시
        $('.small_icon.search_fixed_btn').on('click', function() {
          // 검색창 보이기/숨기기 토글
          searchContainer.toggle();
          
          // 검색창이 보일 때 포커스 주기
          if (searchContainer.is(':visible')) {
            $('#keyword').focus();
          }
        });
      });
    </script>
  
  </body>
</html>
