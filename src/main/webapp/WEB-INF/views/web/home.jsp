<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<title>Trang chủ</title>

<style>
#slides li {
	display: none;
}

#slides li.active {
	display: block;
}
</style>

</head>

<body>
	<div class="mainmenu-area">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<div class="navbar-collapse collapse">
	                    <ul class="nav navbar-nav">
	                        <li class="active"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
	                        
	                        <li><a href="<c:url value='/cua-hang?page=1&limit=6'/>">Cửa hàng</a></li>
	                        <li><a href="<c:url value='/gioi-thieu'/>">Giới thiệu</a></li>
	                        <li><a href="<c:url value='/gio-hang'/>">Giỏ hàng</a></li>
	                        <li><a href="<c:url value='/dat-hang'/>">Thanh toán</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="slider-area">
		<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
				<ul id="slides">
					<c:forEach var="item" items="${slides.listResult}">

						<li class="active"><img
							src="<c:url value='/template/web/img/slides/${ item.img }'/>"
							alt="Slide">
							<div class="caption-group active">
								<h2 class="caption title">${ item.caption }</h2>
								<h4 class="caption subtitle">${ item.content }</h4>
								<a class="caption button-radius"
								href="<c:url value='/cua-hang?page=1&limit=6'/>	"><span class="icon"></span>Shop now</a>
							</div></li>
					</c:forEach>
				</ul>
			</ul>
		</div>
		<!-- ./Slider -->
	</div>
	<!-- End slider area -->

	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<!-- 				<div class="col-sm-12"> -->
				<div class="latest-product">
					<h2 class="section-title">Products</h2>
					<c:forEach var="product" items="${model.listResult}"
						varStatus="home">
						<div class="col-md-4 col-sm-8">
							<!-- khác biệt -->
							<div class="single-shop-product">
								<div style="" class="product-upper">
									<img style="width: 300px; height: 300px;"
										src="<c:url value='/template/web/img/product/${ product.image }'/>"
										alt="">
								</div>
								<h2>
									<a href="<c:url value='/chi-tiet-san-pham/${ product.id }'/>">${ product.name }</a>
								</h2>
								<div class="product-carousel-price">
									<ins>${ product.price }₫</ins>
								</div>

								<a href="<c:url value="/AddCart/${product.id }"/>"
									class="add-to-cart-link"><i class="fa fa-shopping-cart"></i>
									Thêm vào giỏ</a>
							</div>
						</div>
					</c:forEach>



				</div>
				<!-- 				</div> -->
			</div>
		</div>
	</div>


	<!-- End product widget area -->

	<div class="brands-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="brand-wrapper">
						<div class="brand-list">
							<img src="<c:url value='/template/web/img/brand1.png'/>" alt="">
							<img src="<c:url value='/template/web/img/brand2.png'/>" alt="">
							<img src="<c:url value='/template/web/img/brand3.png'/>" alt="">
							<img src="<c:url value='/template/web/img/brand4.png'/>" alt="">
							<img src="<c:url value='/template/web/img/brand5.png'/>" alt="">
							<img src="<c:url value='/template/web/img/brand6.png'/>" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End brands area -->

	<script>
		var slideIndex = 0;
		var slides = document.getElementById("slides").getElementsByTagName(
				"li");

		function showSlides() {
			// Ẩn slide hiện tại
			slides[slideIndex].classList.remove("active");

			// Tính slide tiếp theo
			slideIndex = (slideIndex + 1) % slides.length;

			// Hiển thị slide tiếp theo
			slides[slideIndex].classList.add("active");
		}

		// Thực hiện chuyển đổi slide tự động mỗi 3 giây
		setInterval(showSlides, 3000);
	</script>


</body>

</html>