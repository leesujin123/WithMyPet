<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:: 관리자 :: With My Pet</title>
<link href="../assets/css/admin/style.css" rel="stylesheet">
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
</head>
<body>

<!-- 기본 틀 -->
<div id="main-wrapper" style="height:100%; display:relative; opacity:100;">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header" style="background-color:#FFD687;">
            <div class="brand-logo" style="display:flex; margin:auto;">
                <a href="#" style="display:flex; margin:auto;">
                    <span class="brand-title" style="display:flex; margin:auto; margin-bottom:10%;">
                        <img style="display:flex; margin:auto; width:80%;"src="../assets/images/logos/logo-grey.png" alt=""><br/><br/>
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header" style="background-color:#FFD687; margin-bottom: -1%;">    
            <div class="header-content clearfix">
                
                
                <div class="header-right">
                    <ul class="clearfix">
                    	<!-- 새 문의글  -->
                        <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-email-outline"></i>
                                <span class="badge badge-pill gradient-1">3</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="" style="font-family: 'Spoqa Han Sans Neo';">새 문의글</span>  
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span style="font-family: 'Spoqa Han Sans Neo';"class="badge badge-pill gradient-1">3</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/1.jpg" alt="">
                                                <div class="notification-content">
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Saiful Islam</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/2.jpg" alt="">
                                                <div class="notification-content">
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Adam Smith</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Can you do me a favour?</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/3.jpg" alt="">
                                                <div class="notification-content">
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Barak Obama</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/4.jpg" alt="">
                                                <div class="notification-content">
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Hilari Clinton</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Hello</div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <!-- 확인 필요 사항 -->
                        <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-bell-outline"></i>
                                <span class="badge badge-pill gradient-2">5</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="">확인사항</span>  
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span class="badge badge-pill gradient-2">5</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">산책 포인트 지급</h6>
                                                    <span class="notification-text">Within next 5 days</span> 
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">배송 현황 변경</h6>
                                                    <span class="notification-text">One hour ago</span> 
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <!-- 페이지 이동 네비 바 -->
                        <li class="icons dropdown d-none d-md-flex">
                            <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                                <span>관리페이지</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                            </a>
                            <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li><a href="../">메인화면</a></li>
                                        <li><a href="../walk/list.do">산책</a></li>
                                        <li><a href="../product">쇼핑</a></li>
                                        <li><a href="../board/list.do">커뮤니티</a></li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
                <div class="nk-sidebar" style="background-color:#FFD687;">           
            <div class="nk-nav-scroll" style="background-color:#FFD687;">
                <ul class="metismenu" id="menu" style="background-color:#FFD687;">
                    <li class="nav-label"></li>
                    <li>
                        <a href="#" aria-expanded="false">
                            <i class="icon-menu menu-icon"></i><span class="nav-text"></span>
                        </a>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm">
                    	<a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt user-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">회 원</span>
                        </a>
                        <ul aria-expanded="false">
                        	<li><a href="memberList.do"style="font-family: 'Spoqa Han Sans Neo';">회원 목록</a></li>
                        </ul>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm">
                    	<a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt user-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">산 책</span>
                        </a>
                        <ul aria-expanded="false">
                        	<li><a href="nextWalk.do"style="font-family: 'Spoqa Han Sans Neo';">산책 예정 현황</a></li>
                        	<li><a href="previousWalk.do"style="font-family: 'Spoqa Han Sans Neo';">지난 산책 현황</a></li>
                        </ul>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm" style="z-index:999;">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-graph menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">상 품</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="registerProduct.do"style="font-family: 'Spoqa Han Sans Neo';">상품 등록</a></li>
                            <li><a href="productQ.do"style="font-family: 'Spoqa Han Sans Neo';">문의 답변</a></li>
                            <li><a href="productA.do"style="font-family: 'Spoqa Han Sans Neo';">지난 문의 내용</a></li>
                            <li><a href="orderStatus.do"style="font-family: 'Spoqa Han Sans Neo';">주문 현황</a></li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="walkStatistic.do" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">산책 통계</span>
                        </a>
                    </li>
                    
                </ul>
        </div><br/>
        </div><br/><br/>
        
<div class="container-fluid">
    <div class="row" >
    
        <div class="col-lg-6">
            <div class="card" style="min-height:490px; width:80%;margin-left:30%;">
                <div class="card-body">
                    <h4>가장 많이 산책한 회원</h4>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>순위</th>
                                    <th>이름</th>
                                    <th>총 산책횟수</th>
                                    <th>최근 산책일</th>
                                    <th>산책 매칭</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach items="${map.walkLists}" var="list" varStatus="count">
	                                <tr>
	                                    <th>${count.count}</th>
	                                    <td>${list.member_name}</td>
	                                    <td><span class="badge badge-primary px-2">${list.count}</span></td>
	                                    <c:choose>
	                                    	<c:when test="${!empty list.day}">
	                                    		<td>${list.day}</td>
	                                    	</c:when>
	                                    	<c:otherwise>
	                                    		<td>아직 산책한 기록이 없습니다.</td>
	                                    	</c:otherwise>
	                                    </c:choose>
	                                    <td class="color-primary">${list.percent}</td>
	                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-lg-6">
            <div class="card" style=" min-height:490px; width:80%;margin-left:12%;">
                <div class="card-body">
                    <h4>가장 많이 등록된 지역</h4>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>순위</th>
                                    <th>지역명</th>
                                    <th>등록횟수</th>
                                    <th>최근 등록일</th>
                                    <th>산책 매칭</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach items="${map.locLists}" var="list" varStatus="count">
	                                <tr>
	                                    <th>${count.count}</th>
	                                    <td>${list.walk_location}</td>
	                                    <td><span class="badge badge-primary px-2">${list.count}</span>
	                                    </td>
	                                    <td>${list.day}</td>
	                                    <td class="color-primary">${list.percent}</td>
	                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    
</div>
</div>
 <!-- footer-28 block -->
<section class="w3l-footer" style="background-color:black; display:absolute;z-index:100;">
  <footer class="footer-28">
    <div class="footer-bg-layer">
      <div class="container py-lg-3">
        <div class="row footer-top-28">
          <div class="col-lg-12 col-md-5 footer-list-28 mt-5">
            <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Contact information</h6>
            <ul>
              <li>
                <p style="font-family: 'Spoqa Han Sans Neo';"><strong>Address</strong> : Seoul Mapo Baekbumro, South Korea</p>
                <p style="font-family: 'Spoqa Han Sans Neo';"><strong>Contact</strong> : <a href="tel:+(12)234-11-24">Click Here</a></p>
              </li>
            </ul>
          </div>
          <div class="col-lg-6 col-md-7">
            <div class="row">
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Walk Service</h6>
                <ul style="font-family: 'Spoqa Han Sans Neo';">
                  <li><a href="about.html">Cha Ji Hyun</a></li>
                  <li><a href="blog.html">Lim Yeon Ji</a></li>
                </ul>
              </div>
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Shopping Service</h6>
                <ul style="font-family: 'Spoqa Han Sans Neo';">
                  <li><a href="contact.html">Lee Ok Seok</a></li>
                  <li><a href="#signup">Sung Jin Hee</a></li>
                </ul>
              </div>
              <div class="col-sm-4 footer-list-28 mt-5">
                <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Member Service</h6>
                <ul style="font-family: 'Spoqa Han Sans Neo';">
                  <li><a href="#URL">Choi Woo Jae</a></li>
                  <li><a href="#URL">Lee Su Jin</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </footer>
</section>
  
    <!--**********************************
        Scripts
    ***********************************-->
    <script src="../assets/plugins/common/common.min.js"></script>
    <script src="../assets/js/admin/custom.min.js"></script>
    <script src="../assets/js/admin/settings.js"></script>
    <script src="../assets/js/admin/gleek.js"></script>
    <script src="../assets/js/admin/styleSwitcher.js"></script>
    <script src="../assets/plugins/tables/js/jquery.dataTables.min.js"></script>
    <script src="../assets/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="../assets/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>
    
</body>
</html>