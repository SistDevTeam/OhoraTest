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
<link rel="stylesheet" href="../resources/cdn-main/orderlist_log.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<body>

	<%@include file="header.jsp" %>
    <!-- 콘텐츠 -->
    <div id="contents">
      <script>
        SMARTPC_GLOBAL_OBJECT.page = "mypage";
      </script>
      <div id="SP_mypage_wrap">
        <div class="SP_subSection large">
          <h2 class="SP_subTitle"><span class="eng_font">order</span></h2>
        </div>

        <div class="SP_layoutFix">
          <div
            class="xans-element- xans-myshop xans-myshop-orderhistorytab SP_myOrderlist_tab"
          >
            <ul class="menu">
              <li class="tab_class selected">
                <a href=""
                  >주문내역조회 (<span id="xans_myshop_total_orders">0</span
                  >)</a
                >
              </li>
              <li class="tab_class_cs">
                <a href="../orderlist_cancel/orderlist_cancel.html"
                  >취소/반품/교환 내역 (<span id="xans_myshop_total_orders_cs"
                    >0</span
                  >)</a
                >
              </li>
            </ul>
          </div>

          <form method="GET" id="OrderHistoryForm" name="OrderHistoryForm">
            <div
              class="xans-element- xans-myshop xans-myshop-orderhistoryhead SP_myOrderlist_srh"
            >
              <fieldset class="SP_myOrderlist_fildeset">
                <legend>검색기간설정</legend>
                <div class="stateSelect SP_myOrderlist_li SP_ordSrh_chooseSel">
                  <select id="order_status" name="order_status" class="fSelect">
                    <option value="all">전체 주문처리상태</option>
                    <option value="shipped_before">입금전</option>
                    <option value="shipped_standby">배송준비중</option>
                    <option value="shipped_begin">배송중</option>
                    <option value="shipped_complate">배송완료</option>
                    <option value="order_cancel">취소</option>
                    <option value="order_exchange">교환</option>
                    <option value="order_return">반품</option>
                  </select>
                </div>
                <div class="SP_myOrderlist_li SP_ordSrh_chooseBtn">
                  <a href="#none" class="SP_cm_btn SP_btn_gray_bd" days="00"
                    >오늘</a
                  >
                  <a href="#none" class="SP_cm_btn SP_btn_gray_bd" days="07"
                    >1주일</a
                  >
                  <a href="#none" class="SP_cm_btn SP_btn_gray_bd" days="30"
                    >1개월</a
                  >
                  <a href="#none" class="SP_cm_btn SP_btn_gray_bd" days="90"
                    >3개월</a
                  >
                  <a href="#none" class="SP_cm_btn SP_btn_gray_bd" days="180"
                    >6개월</a
                  >
                </div>
                <div class="SP_myOrderlist_li SP_ordSrh_chooseSel">
                  <span class="SP_startday"
                    ><input
                      id="history_start_date"
                      name="history_start_date"
                      class="fText hasDatepicker"
                      readonly="readonly"
                      size="10"
                      value="2024-07-29"
                      type="text" /><button
                      type="button"
                      class="ui-datepicker-trigger"
                    >
                      <img
                        src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
                        alt="..."
                        title="..."
                      /></button></span
                  ><span class="SP_extraTxt">~</span
                  ><span class="SP_endday"
                    ><input
                      id="history_end_date"
                      name="history_end_date"
                      class="fText hasDatepicker"
                      readonly="readonly"
                      size="10"
                      value="2024-10-27"
                      type="text" /><button
                      type="button"
                      class="ui-datepicker-trigger"
                    >
                      <img
                        src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
                        alt="..."
                        title="..."
                      /></button
                  ></span>
                </div>
                <div class="SP_myOrderlist_li SP_ordSrh_chooseSubmit">
                  조회<span
                    ><input
                      alt="조회"
                      id="order_search_btn"
                      type="image"
                      src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif"
                  /></span>
                </div>
              </fieldset>
              <ul class="SP_orderlist_srh_guide">
                <li>
                  기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난
                  주문내역을 조회하실 수 있습니다.
                </li>
                <li>
                  주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수
                  있습니다.
                </li>
                <li class="">
                  취소/교환/반품 신청은 배송완료일 기준 7일까지 가능합니다.
                </li>
              </ul>
            </div>
            <input id="mode" name="mode" value="" type="hidden" />
            <input id="term" name="term" value="" type="hidden" />
          </form>
          <div
            class="xans-element- xans-myshop xans-myshop-orderhistorylistitem SP_subSection"
          >
            <!--
            $login_url = /member/login.html
          -->
            <h3 class="SP_contTitle">주문 목록</h3>
            <table border="1" summary="" class="SP_tableSt01_isThumNail">
              <colgroup>
                <col style="width: 200px" />
                <col style="width: 120px" />
                <col style="width: auto" />
                <col style="width: 70x" />
                <col style="width: 120px" />
                <col style="width: 150px" />
                <col style="width: 160px" />
                <col style="width: 110px" />
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">주문일자 [주문번호]</th>
                  <th scope="col">이미지</th>
                  <th scope="col">상품정보</th>
                  <th scope="col">수량</th>
                  <th scope="col">상품구매금액</th>
                  <th scope="col">주문처리상태</th>
                  <th scope="col">취소/교환/반품</th>
                  <th scope="col">주문취소</th>
                </tr>
              </thead>
            </table>
            <p class="SP_message">주문 내역이 없습니다.</p>
          </div>
        </div>
      </div>

      <!-- cre.ma / init 스크립트 (PC) / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
      <script>
        (function (i, s, o, g, r, a, m) {
          if (s.getElementById(g)) {
            return;
          }
          (a = s.createElement(o)), (m = s.getElementsByTagName(o)[0]);
          a.id = g;
          a.async = 1;
          a.src = r;
          m.parentNode.insertBefore(a, m);
        })(
          window,
          document,
          "script",
          "crema-jssdk",
          "//widgets.cre.ma/ohora.kr/init.js"
        );
      </script>
    </div>

    

    <script>
      (function (i, s, o, g, r, a, m) {
        if (s.getElementById(g)) {
          return;
        }
        (a = s.createElement(o)), (m = s.getElementsByTagName(o)[0]);
        a.id = g;
        a.async = 1;
        a.src = r;
        m.parentNode.insertBefore(a, m);
      })(
        window,
        document,
        "script",
        "crema-jssdk",
        "//widgets.cre.ma/ohora.kr/init.js"
      );
    </script>
    <!-- 메인 전체 컨테이너 -->
   <%@include file="footer.jsp" %>
  </body>
</html>
