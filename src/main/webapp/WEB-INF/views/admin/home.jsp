<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <title>Trang chủ</title> -->

</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang
							chủ</a></li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<!-- 					<div class="col-xs-12"> -->

					<h2>Thống kế</h2>
					<div class="product-content-right">
						<div class="woocommerce">
							<form method="post" action="#">

								<div class="infobox infobox-green infobox-dark"
									style="margin: auto; width: 30%;">

									<div class="fa fa-shopping-cart">
										<span>${dashboard.totalProduct }</span>
									</div>

									<div class="infobox-data">
										<div class="infobox-content">
											<a class="product-total"
												style="color: white; font-size: 20px;"
												href="<c:url value='/quan-tri/san-pham/danh-sach?page=1&limit=9'/>">
												Sản phẩm </a>
										</div>
									</div>


								</div>
								
								<div class="infobox infobox-blue infobox-dark"
									style="margin: auto; width: 30%;">
									<div class="fa fa-user">
										<span class="amount">${dashboard.totalUser }</span>
									</div>

									<div class="infobox-data">
										<div class="infobox-content">
											<a class="user-total" style="color: white; font-size: 20px;"
												href="<c:url value='/quan-tri/nguoi-dung/danh-sach?page=1&limit=2'/>">
												Khách hàng </a>
										</div>
									</div>
								</div>

								<div class="infobox infobox-grey infobox-dark"
									style="margin: auto; width: 30%;">
									<div class="fa fa-tag">
										<span class="amount">${dashboard.totalOrder }</span>
									</div>

									<div class="infobox-data">
										<div class="infobox-content">
											<a class="order-total" style="color: white; font-size: 20px;"
												href="<c:url value='/quan-tri/don-hang/danh-sach?page=1&limit=2'/>">
												Đơn hàng </a>
										</div>
									</div>
								</div>

							</form>


						</div>
					</div>



				</div>
			</div>
		</div>
	</div>
	<!-- 	</div> -->
	<!-- /.main-content -->
</body>
</html>