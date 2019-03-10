<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light">
		<a class="navbar-brand" href="#">놀자</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">내
						주변 <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">지역</a></li>
				<li class="nav-item"><a class="nav-link" href="#">숙소 검색</a></li>
				<li class="nav-item"><a class="nav-link" href="#">기획전</a></li>
				<li class="nav-item"><a class="nav-link" href="#">캐스트</a></li>
			</ul>

			<!-- 회원가입, 로그인  -->
			<ul class="navbar-nav mr-right">
				<c:if test = "${user == null}">
					<li class="nav-item"><a class="nav-link" href="joinForm.jsp">회원가입</a></li>
					<li class="nav-item"><a class="nav-link" href="loginForm.jsp">로그인</a></li>
				</c:if>
				<c:if test = "${user != null}">
					<li class="nav-link">${user}님, 환영합니다 </li>
					<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link" href="logout.do">로그아웃</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
	
	<article>
		<section>
			<img
				src="http://blogfiles.naver.net/MjAxNzAxMDZfMjY3/MDAxNDgzNjk2MzA2NTQ1.MPWchLB0FB6phlhCJMHoi86t5yNYzhpJCBz90vjmqCkg.C22okUip9Dgxphm2Lw0P59lexCusweVX5mo2u2NCzw8g.JPEG.byhoneyeun/%C4%AB%C4%AB%BF%C0%C7%C1%B7%BB%C1%EE__%B9%E8%B0%E6%C8%AD%B8%E9_%B9%D9%C0%CC%C0%BA.jpg"
				height="500px" width="100%" alt="Responsive image">
		</section>

		<section>
			<div class="myposition-cnt">
				<i class="icon-comm icon-myposition"></i> <strong>부산광역시</strong>
			</div>
			<div class="card-group">
				<div class="card">
					<img src="https://image.flaticon.com/icons/svg/865/865779.svg" 
					width="100"; height="100" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title" style="text-align: center">모텔</h5>
					</div>
				</div>
				<div class="card">
					<img src="https://image.flaticon.com/icons/svg/201/201426.svg"
					width="100"; height="100"  class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title" style="text-align: center">호텔 /리조트</h5>
					</div>
				</div>
				<div class="card">
					<img src="https://image.flaticon.com/icons/svg/75/75050.svg" 
					width="100"; height="100" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title" style="text-align: center">펜션 / 풀빌라</h5>
					</div>
				</div>
				<div class="card">
				<a href="getAccomList.do">
					<img src="https://image.flaticon.com/icons/svg/1462/1462784.svg"
					width="100"; height="100" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title" style="text-align: center">게스트 하우스</h5>
					</div>
				</a>
				</div>
			</div>
		</section>

	</article>

	<div>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel" >
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="data:image/jpeg;base64,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"
						class="d-block w-100" alt="..." width="600"; height="500">
				</div>
				<div class="carousel-item">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKEfKqDEncbuT1u0Hd-MzaSfYHYANjLxfXbuNAVLJ-vGnvNC4z"
						class="d-block w-100" alt="..." width="600"; height="500">
				</div>
				<div class="carousel-item">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXKIzF5R3LNuPY1XJglDEW1aK9IB3Q-_0k4JcmqoiAqtKC-XDElA"
						class="d-block w-100" alt="..." width="600"; height="500">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide=" next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
</body>
</html>