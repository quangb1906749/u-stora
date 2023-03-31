<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <title>Trang chủ</title> -->
<style>
.ten-danh-muc {
	width: 200px;
	height: 150px;
	color: black;
	justify-content: center;
	font-size: 20px;
}

#khung-hien-thi {
	display: flex;
	flex: 100;
	flex-direction: row;
}
</style>
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
			<div class="page-content" id="khung-hien-thi">
				<div class="row">
					<!-- 					<div class="col-xs-12"> -->

					<h2>Thống kế</h2>
					<div class="product-content-right">
						<div class="woocommerce">
							<form method="post" action="#">
								<div class="ten-danh-muc"
									style="background: lightblue; flex: 30%">
									<a class="product-total" style="color: black;"
										href="<c:url value='/quan-tri/san-pham/danh-sach?page=1&limit=9'/>">
										Sản phẩm </a>
									<p class="product-total">
										<span class="amount">${dashboard.totalProduct }</span>
									</p>

								</div>
								<div style="width: 200px; height: 10px; background: white;">

								</div>
								<div class="ten-danh-muc" style="background: coral;">
									<a class="user-total" style="color: black;"
										href="<c:url value='/quan-tri/nguoi-dung/danh-sach?page=1&limit=2'/>">
										Khách hàng </a>
									<p class="user-total">
										<span class="amount">${dashboard.totalUser }</span>
									</p>
								</div>
								<div style="width: 200px; height: 10px; background: white;"></div>

								<div class="ten-danh-muc" style="background: lightgreen;">
									<a class="order-total" style="color: black;"
										href="<c:url value='/quan-tri/don-hang/danh-sach?page=1&limit=2'/>">
										Đơn hàng </a>
									<p class="order-total">
										<span class="amount">${dashboard.totalOrder }</span>
									</p>
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