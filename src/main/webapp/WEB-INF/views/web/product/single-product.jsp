<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ page import="com.myproject.Util.SecurityUtils"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>

</head>

<body>
	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>Chi tiết sản phẩm</h2>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<!-- 				<div class="col-md-4"> -->
				<!-- 										<div class="single-sidebar"> -->
				<!-- 											<h2 class="sidebar-title">Search Products</h2> -->
				<!-- 											<form action=""> -->
				<!-- 												<input type="text" placeholder="Search products..."> <input -->
				<!-- 													type="submit" value="Search"> -->
				<!-- 											</form> -->
				<!-- 										</div> -->




				<!-- 				</div> -->
				<div class="">
					<div class="product-content-right">
						<div class="product-breadcroumb">
							<a href="">Home</a> <a href="">Category Name</a> <a href="">${ product.categoryName }</a>
						</div>

						<div class="row">
							<div class="col-sm-6">
								<div class="product-images">
									<div class="product-main-img">
										<img
											src="<c:url value='/template/web/img/product/${ product.image }'/>"
											alt="">
									</div>

								</div>
							</div>

							<div class="col-sm-6">
								<div class="product-inner">
									<h2 class="product-name">${ product.name }</h2>
									<div class="product-inner-price">
										<ins>${ product.price }₫</ins>
									</div>

									<form action="<c:url value="/AddCart/${product.id }"/>" class="cart">
										<div class="quantity">
											<input type="number" size="4" class="input-text qty text"
												title="Qty" value="1" name="quantity" min="1" step="1">
										</div>
										<button class="add_to_cart_button" type="submit">Add
											to cart</button>
									</form>

									<div class="product-inner-category">
										<p>
											Category: <a href="">Summer</a>. Tags: <a href="">awesome</a>,
											<a href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>.
										</p>
									</div>

									<div role="tabpanel">
										<ul class="product-tab" role="tablist">
											<li role="presentation" class="active"><a href="#home"
												aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
											<li role="presentation"><a href="#profile"
												aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
										</ul>
										<div class="tab-content">
											<div role="tabpanel" class="tab-pane fade in active"
												id="home">
												<h2>Product Description</h2>
												<p>${ product.description }</p>

												<p>${ product.shortDescription }</p>
											</div>
											<div role="tabpanel" class="tab-pane fade" id="profile">
												<!-- 													<h2>Reviews</h2> -->
												<!-- 													<div class="submit-review"> -->
												<!-- 																											<p> -->
												<!-- 																												<label for="name">Name</label> <input name="name" -->
												<!-- 																													type="text"> -->
												<!-- 																											</p> -->
												<!-- 																											<p> -->
												<!-- 																												<label for="email">Email</label> <input name="email" -->
												<!-- 																													type="email"> -->
												<!-- 																											</p> -->
												<%-- 														<security:authorize access="isAnonymous()"> --%>
												<!-- 															<h1 class="alert alert-warning" -->
												<!-- 																style="text-align: center;">BẠN CHƯA ĐĂNG NHẬP</h1> -->
												<!-- 															<h2 style="text-align: center;"> -->
												<%-- 																<a href="<c:url value='/dang-nhap'/>">ĐĂNG NHẬP NGAY</a> --%>
												<!-- 															</h2> -->
												<%-- 														</security:authorize> --%>
												<%-- 														<security:authorize access="isAuthenticated()"> --%>
												<%-- 															<form:form id="formSubmit" action="${orderURL }" --%>
												<%-- 																method="POST" modelAttribute="order" class="checkout" --%>
												<%-- 																name="checkout"> --%>
												<!-- 																<div id="customer_details" class="col2-set"> -->
												<!-- 																	<div class="col-1"> -->
												<!-- 																		<div class="woocommerce-billing-fields"> -->
												<!-- 																			<h3>Chi tiết đơn hàng</h3> -->
												<!-- 																			<p id="billing_first_name_field" -->
												<!-- 																				class="form-row form-row-first validate-required"> -->
												<!-- 																				<label class="" for="billing_first_name">Họ -->
												<!-- 																					và tên <abbr title="required" class="required">*</abbr> -->
												<!-- 																				</label> -->
												<%-- 																				<form:input type="text" placeholder="Họ và tên" --%>
												<%-- 																					path="fullName" --%>
												<%-- 																					value="<%=SecurityUtils.getPrincipal().getFullName()%>" --%>
												<%-- 																					id="billing_first_name" name="billing_first_name" --%>
												<%-- 																					class="input-text " /> --%>
												<!-- 																			</p> -->

												<!-- 																			<div class="clear"></div> -->

												<!-- 																			<p id="billing_email_field" -->
												<!-- 																				class="form-row form-row-first validate-required validate-email"> -->
												<!-- 																				<label class="" for="billing_email">Email <abbr -->
												<!-- 																					title="required" class="required">*</abbr> -->
												<!-- 																				</label> -->
												<%-- 																				<form:input type="text" path="email" --%>
												<%-- 																					value="<%=SecurityUtils.getPrincipal().getEmail()%>" --%>
												<%-- 																					placeholder="" id="billing_email" --%>
												<%-- 																					name="billing_email" class="input-text " /> --%>
												<!-- 																			</p> -->
												<!-- 																			<div class="rating-chooser"> -->
												<!-- 																				<p>Your rating</p> -->

												<!-- 																				<div class="rating-wrap-post"> -->
												<!-- 																					<i class="fa fa-star"></i> <i class="fa fa-star"></i> -->
												<!-- 																					<i class="fa fa-star"></i> <i class="fa fa-star"></i> -->
												<!-- 																					<i class="fa fa-star"></i> -->
												<!-- 																				</div> -->
												<!-- 																			</div> -->

												<!-- 																			<p> -->
												<!-- 																				<label for="review">Your review</label> -->
												<!-- 																				<textarea name="review" id="" cols="30" rows="10"></textarea> -->
												<!-- 																			</p> -->


												<!-- 																			<div class="clear"></div> -->
												<%-- 																			<form:hidden path="userId" id="userId" --%>
												<%-- 																				value="<%=SecurityUtils.getPrincipal().getId()%>" --%>
												<%-- 																				name="id" /> --%>
												<!-- 																			<div class="form-row place-order"> -->

												<%-- 																				<a href="<c:url value="/AddCart/${product.id }"/>" --%>
												<!-- 																					class="add-to-cart-link"><i -->
												<!-- 																					class="fa fa-shopping-cart"></i> Thêm vào giỏ </a> -->

												<!-- 																			</div> -->
												<!-- 																		</div> -->
												<!-- 																	</div> -->
												<!-- 																</div> -->

												<%-- 															</form:form> --%>
												<%-- 														</security:authorize> --%>
												<h2>Reviews</h2>
												<div class="submit-review">
													<p>
														<label for="name">Name</label> <input name="name"
															type="text">
													</p>
													<p>
														<label for="email">Email</label> <input name="email"
															type="email">
													</p>
													<div class="rating-chooser">
														<p>Your rating</p>

														<div class="rating-wrap-post">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
													</div>
													<p>
														<label for="review">Your review</label>
														<textarea name="review" id="" cols="30" rows="10"></textarea>
													</p>
													<p>
														<input type="submit" value="Submit">
													</p>


												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>



					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>






