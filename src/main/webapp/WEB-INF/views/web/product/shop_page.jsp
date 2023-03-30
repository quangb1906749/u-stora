<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Trang sản phẩm</title>
</head>
<body>
	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>TRANG SẢN PHẨM</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="latest-product">
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
				

			</div>
			<ul class="pagination" id="pagination"></ul>
				<input type="hidden" value="" id="page" name="page" /> <input
					type="hidden" value="" id="limit" name="limit" />
		</div>
	</div>
	<content tag="script">
	<script>
		<script>
		var totalPages = ${	model.totalPage	};
		var currentPage = ${ model.page };
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 10,
				startPage : currentPage,
				onPageClick : function(event, page) {
					if (currentPage != page) {
						$('#limit').val(9);
						$('#page').val(page);
						$('#formSubmit').submit();
					}
				}
			});
		});
	</script>
	</content>
</body>
</html>