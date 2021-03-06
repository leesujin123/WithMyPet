<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>:: With My Pet :: 산책모집 </title>
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="../assets/js/popper.js"></script>
	<script src="../assets/js/popper.js.map"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
  <link rel="stylesheet" href="../assets/css/walk.css">
  <link rel="stylesheet" href="../assets/css/walkform.css">
  <link rel="stylesheet" href="../assets/css/walkform.min.css">
  <link rel="stylesheet" href="../assets/css/postCard.css">
  <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>

	<script src="../assets/js/walkform.js"></script>
	<script src="../assets/js/walkform.min.js"></script>
	  <link href="../assets/css/datepicker/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
  <script src="../assets/js/datepicker/datepicker.js"></script>
  <script src="../assets/js/datepicker/datepicker.ko.js"></script>
	

</head>

<body>
	<!--header-->
	<header id="site-header" class="fixed-top">
  <div class="container">
      <nav class="navbar navbar-expand-lg stroke">
          <a href="../"><img src="../assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt="" /></a>

          <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
              data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
              aria-label="Toggle navigation">
              <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
              <span class="navbar-toggler-icon fa icon-close fa-times"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                      <a class="nav-link" href="../" style="font-family: 'Spoqa Han Sans Neo';">Home <span class="sr-only">(current)</span></a>
                  </li>
                  
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	산 책 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';" >
                      	<a class="dropdown-item" href="list.do?cp=1" style="font-family: 'Spoqa Han Sans Neo';">산책모집 </a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	쇼 핑 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                      	<a class="dropdown-item" href="product?catgo_code=9" style="font-family: 'Spoqa Han Sans Neo';">쇼핑하기</a>
                          <a class="dropdown-item" href="cart" style="font-family: 'Spoqa Han Sans Neo';">장바구니</a>
                          <a class="dropdown-item" href="/shop/order" style="font-family: 'Spoqa Han Sans Neo';">결제</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	 커뮤니티 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                          <a class="dropdown-item" href="board/list.do?board_idx=1" style="font-family: 'Spoqa Han Sans Neo';">공지사항</a>
                          <a class="dropdown-item" href="board/list.do?board_idx=2" style="font-family: 'Spoqa Han Sans Neo';">일상이야기</a>
                          <a class="dropdown-item" href="board/list.do?board_idx=3" style="font-family: 'Spoqa Han Sans Neo';">산책후기</a>
                          <a class="dropdown-item" href="board/list.do?board_idx=4" style="font-family: 'Spoqa Han Sans Neo';">일상이야기</a>
                      </div>
                  </li>
                  <c:choose>
                  	  <c:when test="${empty login.member_name}">
		                  <li class="nav-item">
		                      <a class="nav-link" href="/member/login.do" style="font-family: 'Spoqa Han Sans Neo';">로그인 </a>
		                  </li>
	                  </c:when>
	                  <c:otherwise>
	                  	  <li class="nav-item">
		                      <a class="nav-link" href="/member/logout.do" style="font-family: 'Spoqa Han Sans Neo';">로그아웃 </a>
		                  </li>
		                  <li class="nav-item">
		                      <a class="nav-link" href="/member/login.do" style="font-family: 'Spoqa Han Sans Neo';">마이페이지 </a>
		                  </li>
	                  </c:otherwise>
                  </c:choose>
                  <!-- 관리자일때만 관리자페이지 입장 -->
                  <c:if test="${login.member_name eq 'admin'}"> 
	                  <li class="nav-item">
	                      <a class="nav-link" href="/admin/index.do" style="font-family: 'Spoqa Han Sans Neo';">관 리 </a>
	                  </li>
                  </c:if>
              </ul>
          </div>
          
          
          <!-- toggle switch for light and dark theme -->
          <div class="mobile-position">
              <nav class="navigation">
                  <div class="theme-switch-wrapper">
                      <label class="theme-switch" for="checkbox">
                          <input type="checkbox" id="checkbox">
                          <div class="mode-container">
                              <i class="gg-sun"></i>
                              <i class="gg-moon"></i>
                          </div>
                      </label>
                  </div>
              </nav>
          </div>
          
          <!-- 회원 접속 시, 메시지 띄움 -->
          <c:if test="${!empty login}">
	          <div id="msgZone">
	          	 <c:choose>
		          	<c:when test="${unread eq 0}">
		          		<i class="mdi mdi-bell-outline"></i>
	                    <span id="unreadCount" class="badge badge-pill gradient-2" style="position:absolute; margin-top:-1.3%; padding-left:1.6%;
	                     margin-right:2%; color:#ffb446;"></span>
		          		<a href="/msg/chat.do"><img src="../assets/images/icon/message.png"></a>
		          	</c:when>
		          	<c:otherwise>
		          		<i class="mdi mdi-bell-outline"></i>
	                    <span id="unreadCount" class="badge badge-pill gradient-2" style="position:absolute; margin-top:-1.3%; padding-left:1.6%;
	                     margin-right:2%; color:#ffb446;">${unread}</span>
		          		<a href="/msg/chat.do"><img src="../assets/images/icon/colorMessage.png"></a>
		          	</c:otherwise>
		          </c:choose>
		      </div>
          </c:if>
      </nav>
  </div>
</header>

	<!-- 바디헤더 -->
	<section class="w3l-about-breadcrumb text-center">
	  <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
	      <div class="container py-2">
	          <h5 class="title" style="font-family: 'Spoqa Han Sans Neo'; color:white;">산책 모임 만들기</h5>
	          <ul class="breadcrumbs-custom-path mt-2">
	              <li><a href="#url" style="font-family: 'Spoqa Han Sans Neo';">Home</a></li>
	              <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true" style="font-family: 'Spoqa Han Sans Neo';"></span> About  </li>
	          </ul>
	      </div>
	  </div>
	</section><br/><br/><br/>

<!-- 내 강아지 정보 -->
<center>
<div class="center" style="margin-top:20%; position: relative;">
    <label style="font-family: 'Spoqa Han Sans Neo'; font-size:1.5rem; font-weight:700;">회원 정보</label>
  <div class="mcard green">
    <div class="additional">
      <div class="user-mcard">
        <div class="level center">
          	회원 정보
        </div>
        <div class="points center">
        
        <c:choose>
        	<c:when test="${empty content.pet.pet_walkpoint}">
        		0 포인트
        	</c:when>
        	<c:otherwise>
        		${content.pet.pet_walkpoint} 포인트
        	</c:otherwise>
        </c:choose>
          
        </div>
        <img style="margin-top:45%;width:110px; height:110px;" src="<c:url value="/img/${content.pet.pet_fname}"/>" class="img-fluid img-thumbnail"/>
        
        
      </div>
      <div class="more-info">
        <h1>${content.memberData.member.member_name}</h1>
        <div class="coords">
        
        <c:choose>
        	<c:when test="${empty content.memberData.detail.walk_day}">
        	</c:when>
        	<c:otherwise>
        		<span><b>최근 산책일</b> : ${content.memberData.detail.walk_day}</span><br>
        	</c:otherwise>
        </c:choose>
        
        
        <c:choose>
        	<c:when test="${empty content.memberData.detail.review}">
        		<span><b>아직 산책한 기록이 없습니다.</b></span>
        	</c:when>
        	<c:otherwise>
        		<span><b>받은 산책평</b> : "${content.memberData.detail.review}"</span>
        	</c:otherwise>
        </c:choose>
        
        </div>
        <div class="stats">
          <div>
            <div class="title">산책</div>
            <i class="fa fa-trophy"></i>
            
            <c:choose>
	        	<c:when test="${empty content.memberData.detail.walk_count}">
	        		<div class="value">0</div>
	        	</c:when>
	        	<c:otherwise>
	        		<div class="value">${content.memberData.detail.walk_count}</div>
	        	</c:otherwise>
	        </c:choose>
	        
          </div>
          <div>
            <div class="title">팔로잉</div>
            <i class="fa fa-group"></i>
            
            <c:choose>
	        	<c:when test="${empty content.memberData.detail.following}">
	        		<div class="value">0</div>
	        	</c:when>
	        	<c:otherwise>
	        		<div class="value">${content.memberData.detail.following}</div>
	        	</c:otherwise>
	        </c:choose>
            
            
          </div>
          <div>
            <div class="title">팔로워</div>
            <i class="fa fa-group"></i>
            
            <c:choose>
	        	<c:when test="${empty content.memberData.detail.follower}">
	        		<div class="value">0</div>
	        	</c:when>
	        	<c:otherwise>
	        		<div class="value">${content.memberData.detail.follower}</div>
	        	</c:otherwise>
	        </c:choose>
            
          </div>
        </div>
      </div>
    </div>
    <div class="general">
      <h1 style="color:#FFB446; margin-top:3%;">${content.memberData.member.member_name}</h1><br>
      <p style="text-align:center;font-family: 'Spoqa Han Sans Neo';"><b>반려 동물</b> : ${content.pet.pet_name}</p>
      <p style="text-align:center;font-family: 'Spoqa Han Sans Neo';"><b>성별</b> : ${content.pet.pet_sex}</p>
      <p style="text-align:center;font-family: 'Spoqa Han Sans Neo';"><b>나이</b> : ${content.pet.pet_age}</p>
      <p style="text-align:center;font-family: 'Spoqa Han Sans Neo';"><b>주요 지역</b> : ${content.pet.pet_walkarea}</p>
      <span class="more" style="font-size:1.0rem;">Mouse over</span>
    </div>
  </div>
</div>
</center>
	
	
	<!-- 장소 선택 -->
	<form class="ui form" onsubmit="searchPlaces(); return false;" style="text-align:center; margin:auto;">
		<div class="field" style="width:30%; margin:auto;">
	      <label style="font-family: 'Spoqa Han Sans Neo';">장소</label>
	      <input autocomplete="off" name="locName" id="location" value="${content.dto.walk_location}" placeholder="산책할 장소 입력해주세요." style="text-align:center; margin:auto;" /><br/>
	      <input id="locForm" placeholder="선택한 장소입니다." style="background-color:#f7fdd5; text-align:center; margin:auto;" readonly/>
	      <button class="ui button"type="submit" style="display:none;opacity:0;font-family: 'Spoqa Han Sans Neo';color:white;">검색하기</button>
	    </div>
		<section class="w3l-contact-1 pt-5"id="contact" style="font-family: 'Spoqa Han Sans Neo';margin:auto;">
			<div class="map_wrap" style="margin:auto; display:flex;">
			    <div id="map" style="margin:auto;width:30%;height:100%;position:relative;overflow:hidden;"></div>
			    <div id="menu_wrap" class="bg_white">
			        <div class="option">
			            <div>
			                <form onsubmit="searchPlaces(); return false;" style="font-family: 'Spoqa Han Sans Neo';">
			                    <input type="hidden" name="mapLocation" value="뚝섬역" id="keyword" size="20">
			                    <button type="submit" style="font-family: 'Spoqa Han Sans Neo';"></button>
			                </form>
			            </div>
			        </div>
			        <hr>
			        <ul id="placesList"></ul>
			        <div id="pagination"></div>
			    </div>
			</div>
		</section><br/><br/>
	</form>


	<!-- 입력폼 -->
	<section class="w3l-contact-1 pt-5"id="contact">
		<form name="makeWalk" method="post" action="update.do" class="ui form" style="width:40%; left:30%; "><br/><br/>
		  <h3 class="ui dividing header"style="text-align:center;font-family: 'Spoqa Han Sans Neo';">산책 모임 개설</h3><br/><br/>
		  <div class="field">
		    <div class="two fields">
		      <div class="field">
		      <label style="font-family: 'Spoqa Han Sans Neo';">작성자</label>
		        <input type="text" name="walk_writer" placeholder="작성자" value="${content.dto.walk_location}" readonly/>
		      </div>
		      
		      <div class="field">
			      <label style="font-family: 'Spoqa Han Sans Neo';">산책타입 (선택)</label>
			      <select class="ui fluid dropdown" name="walk_type">
			      <c:choose>
			      	<c:when test="${content.dto.walk_type} eq '1:1">
				      	<option value="1:1"style="font-family: 'Spoqa Han Sans Neo';"selected >1 : 1</option>
				        <option value="여러명 모임" style="font-family: 'Spoqa Han Sans Neo';">모임</option>
			      	</c:when>
			      	<c:otherwise>
			      		<option value="1:1" style="font-family: 'Spoqa Han Sans Neo';">1 : 1</option>
				        <option value="여러명 모임"style="font-family: 'Spoqa Han Sans Neo';"selected >모임</option>
			      	</c:otherwise>

			        </c:choose>
			      </select>
			    </div>
		    </div>
		  </div>
		  
		  <div class="two fields">
		  	<div class="field">
		      <label style="font-family: 'Spoqa Han Sans Neo';">장소</label>
		      	<input type="hidden" value="${content.dto.walk_idx}" name="walk_idx" >
		        <input type="text" onClick="offsetMove()" name="walk_location" value="${content.dto.walk_location}" id="hdnLocation" placeholder="장소를 먼저 선택하고 오세요!" readonly/>
		        <script>
		        function offsetMove(){
		        	document.getElementById('location').focus();
		        }
		        </script>
		      </div>
			  <div class="field">
			      <label style="font-family: 'Spoqa Han Sans Neo';">일시</label>
			      <input type="text" name="time" autocomplete="off" value="${content.dto.walk_date}" id="dp-7" placeholder="산책할 시간을 선택해주세요."/><br/>
			        <script>
			        //날짜,시간 선택 (DatePicker)
			        $(document).ready(function(){
					    var currentDate = new Date();
					    $("#dp-7").datepicker({
					        dateFormat: 'yyyy-mm-dd',
					        maxDate: 0,
					        changeYear: true 
					    }).attr('readonly', 'readonly');
					    $("#dp-7").datepicker("setDate", currentDate);
					    });
			        	$('#dp-7').datepicker({
					        language: 'ko',
					        timepicker: true,
					        timeFormat: "hh:mm"
					    });
			        </script>
			    </div>
		  </div>
		  <div class="field">
		    <label style="font-family: 'Spoqa Han Sans Neo';">제목</label>
		    <div class="field">
		        <input autocomplete="off" type="text" name="walk_subject" placeholder="제목" value="${content.dto.walk_subject}">
		    </div>
		  </div>
		  <div class="field">
		    <label style="font-family: 'Spoqa Han Sans Neo';">내용</label>
		    <textarea name="walk_content">${content.dto.walk_content}</textarea>
		  </div><br/><br/>
		  <center><button id="btn_submit" type="submit" class="button-set" style="font-family: 'Spoqa Han Sans Neo';">수정하기</button>
		  </center>
		</form>
	</section><br/><br/><br/><br/><br/><br/>
  <!--//MENU-JS-->

<script>
//id=location인 태그에 변화를 감지 > location태그의 값으로 변경
$("#location").on("propertychange change keyup paste input", function(){
	$('#keyword').val($(this).val());
	$('#locForm').val('선택한 지역 : '+$(this).val());
	$('#hdnLocation').val($(this).val());
});
</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63be5e5f8d770d2796e1e45e8fcfebbd&libraries=services"></script>


<script>
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        
        
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다


function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
    infowindow.setContent(content);
    infowindow.open(map, marker);
    $('#location').val(title);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
    
    
}
</script>
<!-- footer-28 block -->
<section class="w3l-footer">
  <footer class="footer-28">
    <div class="footer-bg-layer">
      <div class="container py-lg-3">
        <div class="row footer-top-28">
          <div class="col-lg-6 col-md-5 footer-list-28 mt-5">
            <h6 class="footer-title-28" style="font-family: 'Spoqa Han Sans Neo';">Contact information</h6>
            <ul>
              <li>
                <p style="font-family: 'Spoqa Han Sans Neo';"><strong>Address</strong> : Seoul Mapo Baekbumro, South Korea</p>
              </li>
              <li>
                <p><strong>Contact</strong> : <a href="tel:+(12)234-11-24">Click Here</a></p>
              </li>
            </ul>

            <div class="main-social-footer-28 mt-3">
              <ul class="social-icons">
                <li class="facebook">
                  <a href="#link" title="Facebook">
                    <span class="fa fa-facebook" aria-hidden="true"></span>
                  </a>
                </li>
                <li class="twitter">
                  <a href="#link" title="Twitter">
                    <span class="fa fa-twitter" aria-hidden="true"></span>
                  </a>
                </li>
                <li class="dribbble">
                  <a href="#link" title="Dribbble">
                    <span class="fa fa-dribbble" aria-hidden="true"></span>
                  </a>
                </li>
                <li class="google">
                  <a href="#link" title="Google">
                    <span class="fa fa-google" aria-hidden="true"></span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-lg-6 col-md-7">
            <div class="row">
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28">Walk Service</h6>
                <ul>
                  <li><a href="about.html">Cha Ji Hyun</a></li>
                  <li><a href="blog.html">Lim Yeon Ji</a></li>
                </ul>
              </div>
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28">Shopping Service</h6>
                <ul>
                  <li><a href="contact.html">Lee Ok Seok</a></li>
                  <li><a href="#signup">Sung Jin Hee</a></li>
                </ul>
              </div>
              <div class="col-sm-4 footer-list-28 mt-5">
                <h6 class="footer-title-28">Member Service</h6>
                <ul>
                  <li><a href="#URL">Choi Woo Jae</a></li>
                  <li><a href="#URL">Lee Su Jin</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>


      <div class="midd-footer-28 align-center py-lg-4 py-3 mt-5">
        <div class="container">
          <p class="copy-footer-28 text-center"> &copy; 2021 With My Pet. All Rights Reserved.
           </p>
        </div>
      </div>
    </div>
      <!-- 로그인 시에만 웹소켓 연결  -->
  <input type="hidden" id="loginCheck" value="${login.member_name}">
  </footer>
 

  <!-- move top -->
  <button onclick="topFunction()" id="movetop" title="Go to top">
    &#10548;
  </button>
  <script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
      scrollFunction()
    };
    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("movetop").style.display = "block";
      } else {
        document.getElementById("movetop").style.display = "none";
      }
    }
    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    }
    
    var login = $('#loginCheck').val();
    var sender = $('#senNo').val();
    var socket = null;
    if(login != '') connectWS();
    function connectWS(){
    	var url = "ws://localhost:8080/replyEcho";
    	var ws = new WebSocket(url);
    	socket = ws;
    	// 커넥션 연결
    	ws.onopen = function(event){
    		console.log('info : connection opened'+event);
    	 // 메세지 왔을때 (알림 + 목록갱신)
    	 ws.onmessage = function (event){
    		 var myNo = '${login.member_number}';
    		 $.ajax({
   	  		  url: "receiveMsg.do",
   	  		    type: 'GET',
   	  		    async: false,
   	  		    data: {
   	  			    member_number: myNo
   	  			},
   	  			success : function(map) {
   	  				alert(map);
   	  			}
   	  		});
    		toastr.options = {
                  closeButton: true,
                  progressBar: true,
                  showMethod: 'slideDown',
                  timeOut: 8000
           };
           toastr.success('메시지 알림', event.data+' 님이 메시지를 보냈습니다!');
    	 };
    	};
    	ws.onclose = function(event) { 
    		console.log('info : connection closed.');
    		setTimeout(function(){ 
    			connectWS();
    		}, 1000);
    	};
    	ws.onerror = function(event) { console.log('error : '+event); };
    };
  </script>
  <!-- /move top -->
</section>

</body>
</html>