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
<link rel="stylesheet" href="../resources/cdn-main/admin.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<%@include file="header.jsp" %>
<body>

    <div id="main-container">

        <div id="contents">

            <div id="myPage-wrap">

                <div class="subSection">
                    <h2 class="subTitle">
                        <span>관리자 페이지</span>
                    </h2>
                </div>
            
                

                <div class="profile-container">
                    <div class="member-info-wrap">

                        <div class="member-info"> 
                        <!-- 얘가 SP_Message임 -->
                            
                            <div class="info-msg">
                            
                                <div class="member-radius">
                                  <div class="radius-box" id="radiusBox">
								    <canvas id="doughnut1" width="170" height="170" ></canvas>
								    <script>
		
								        const canvas = document.getElementById('doughnut1');
								       
								        const ctx = canvas.getContext("2d");
								
								        const centerX = 85;
								        const centerY = 85;
								        const outerRadius = 70; // 바깥쪽 면의 반지름
								        const innerRadius = 35; // 안쪽 면의 반지름
								

								        ctx.beginPath();
								        ctx.strokeStyle = "gray";
								        ctx.lineWidth = 1.5;

								        for (let i = 0; i < 16; i++) {
								            const angle = (i * Math.PI) / 8; // 각 꼭짓점의 각도 (16등분)
								            const x = centerX + outerRadius * Math.cos(angle);
								            const y = centerY + outerRadius * Math.sin(angle);
								            if (i === 0) ctx.moveTo(x, y);
								            else ctx.lineTo(x, y);
								        }
								        ctx.closePath();
								        ctx.stroke();
								
		
								        ctx.beginPath();
								        for (let i = 0; i < 8; i++) {
								            const angle = (i * Math.PI) / 4; // 각 꼭짓점의 각도 (8등분)
								            const x = centerX + innerRadius * Math.cos(angle);
								            const y = centerY + innerRadius * Math.sin(angle);
								            if (i === 0) ctx.moveTo(x, y);
								            else ctx.lineTo(x, y);
								        }
								        ctx.closePath();
								        ctx.stroke();
		
								        for (let i = 0; i < 16; i++) {
								            const outerAngle = (i * Math.PI) / 8;
								            const innerAngle = ((i % 8) * Math.PI) / 4;
								            const outerX = centerX + outerRadius * Math.cos(outerAngle);
								            const outerY = centerY + outerRadius * Math.sin(outerAngle);
								            const innerX = centerX + innerRadius * Math.cos(innerAngle);
								            const innerY = centerY + innerRadius * Math.sin(innerAngle);
								            ctx.beginPath();
								            ctx.moveTo(outerX, outerY);
								            ctx.lineTo(innerX, innerY);
								            ctx.stroke();
								        }
								    </script>
								</div>

                                </div>


                                <div class="infoMegBox_wrap">
                                    <p class="ment">
                                        <strong><span><span class="member-name">전재윤</span></span></strong>님 반갑습니다.
                                    </p>
                                    <p class="grade">관리자님의 등급은 
                                        <strong class="group">[
                                            <span class="groupName-wrap" id="groupName">
                                                <span class="group_name">Admin</span>
                                            </span>]
                                        </strong>입니다. 
                                    </p>
                                    <p class="gradeValue" id="toNextGrade">해당 페이지는
                                        <span id="changePrd" class="toNext-won">
                                            <span class="toNext-value"> 관리자 전용 
                                        </span> 페이지
                                        </span> 입니다.
                                    </p>

                                    <p class="order_total">
                                        <span class="order_total_value">0</span>
                                    </p>
                                    <div class="user-UtilLink">
                                        <a href="#empty">게시글 관리</a>
                                        <a href="#empty">리뷰 관리</a>
                                        <a href="#empty">댓글 관리</a>
                                    </div>
                                </div>


                            </div>   
                        </div>

                        <!-- 오더 인포 랩 -->

                    </div>
                </div>

                <div class="orderList-layout">
                 	<div class="subSection">

                    </div>
                
                    <div class="myShopMenu-layout">
                        <div class="myShopMenu-list">
                            <ul>
                                <!-- li 마다 after로 > 모양있음 -->
                                <li><a href="">상품등록</a></li>
                                <li><a href="">상품수정</a></li>
                            </ul>
                        </div>

                        <div class="myShopMenu-list">
                            <ul>
                                <li>
                                    <a href="">
                                    상품조회
                                    </a>
                                </li>
                                <li class="point-history">
                                    <a href="/projectOhora/admin/product.do">
                                   	상품삭제
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- 오더 레이아웃 픽스 -->




            </div>
            <!-- 마이페이지 랩 -->
        </div>
        <!-- 컨텐츠 -->

    </div>
    <!-- 메인 컨테이너 -->

</body>
<%@include file="footer.jsp" %>
</html>
