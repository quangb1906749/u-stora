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

	<div class="maincontent-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="latest-product">
						<h2 class="section-title">Products</h2>
						<div class="product-carousel">

							<c:forEach var="product" items="${model.listResult}"
								varStatus="home">
								<div class="single-product">
									<div class="product-f-image">
										<img
											src="<c:url value='/template/web/img/product/${ product.image }'/>"
											alt="">
										<div class="product-hover">
											<a href="single-product.html" class="view-details-link"><i
												class="fa fa-link"></i> See details</a>
										</div>
									</div>

									<h2>${ product.name }</h2>

									<div class="product-carousel-price">
										<ins>${ product.price }</ins>
									</div>
									<a href="<c:url value="/AddCart/${product.id }"/>" class="add-to-cart-link"><i
										class="fa fa-shopping-cart"></i> Add to cart</a>
								</div>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- End main content area -->

	<!--	<div class="product-widget-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top Sellers</h2>
						<a href="" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="<c:url value='/template/web/img/product-thumb-1.jpg'/>"
								alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="<c:url value='/template/web/img/product-thumb-2.jpg'/>"
								alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Apple new mac book 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="<c:url value='/template/web/img/product-thumb-3.jpg'/>"
								alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Recently Viewed</h2>
						<a href="#" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="<c:url value='/template/web/img/product-thumb-4.jpg'/>"
								alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="<c:url value='/template/web/img/product-thumb-1.jpg'/>"
								alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony Smart Air Condtion</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="<c:url value='/template/web/img/product-thumb-2.jpg'/>"
								alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top New</h2>
						<a href="#" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="<c:url value='/template/web/img/product-thumb-3.jpg'/>"
								alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="<c:url value='/template/web/img/product-thumb-4.jpg'/>"
								alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="<c:url value='/template/web/img/product-thumb-1.jpg'/>"
								alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
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