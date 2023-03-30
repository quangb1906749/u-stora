<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<title>Trang chủ</title>

</head>

<body>
	<div class="slider-area">
		<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">

				<c:forEach var="item" items="${slides.listResult}">
					<li><img
						src="<c:url value='/template/web/img/slides/${ item.img }'/>"
						alt="Slide">
						<div class="caption-group">
							<h2 class="caption title">${ item.caption }</h2>
							<h4 class="caption subtitle">${ item.content }</h4>
							<a class="caption button-radius" href="#"><span class="icon"></span>Shop
								now</a>
						</div></li>
				</c:forEach>
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
										<img style="width:300px;height:300px;"
											src="<c:url value='/template/web/img/product/${ product.image }'/>"
											alt="">
									</div>
									<h2>
										<a href="single-product.html">${ product.name }</a>
									</h2>
									<div class="product-carousel-price">
										<ins>${ product.price }₫</ins>
									</div>

									<a href="<c:url value="/AddCart/${product.id }"/>" class="add-to-cart-link"><i
										class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
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

</body>

</html>