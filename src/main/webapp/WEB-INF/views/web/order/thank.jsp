<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ page import="com.myproject.Util.SecurityUtils" %>
<c:url var="orderURL" value="/dat-hang"/>
<c:url var="orderAPI" value="/dat-hang"/>
<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">
    <title>Đặt hàng thành công</title>
	<style>
	.nut-dat-hang{
		 -webkit-text-size-adjust: 100%;
    	-webkit-tap-highlight-color: rgba(0,0,0,0);
    box-sizing: border-box;
    margin: 0;
    font: inherit;
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
    -webkit-appearance: button;
    cursor: pointer;
    background: none repeat scroll 0 0 #5a88ca;
    border: medium none;
    color: #fff;
    padding: 11px 20px;
    text-transform: uppercase;
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
	                        <li><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
	                        
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
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>CẢM ƠN BẠN ĐÃ ĐẶT HÀNG</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div style="margin: auto; width: 75%;">
					Cảm ơn bạn. Đơn hàng của bạn đã được nhận.
					
					<table style="width:100%; margin-top:15px">
					  <tr>
						<th>Mã Đơn Hàng</th>
						<th>Thời Gian</th>
						<th>Email</th>
						<th>Tổng Cộng</th>
						<th>Phương Thức Thanh Toán</th>
					  </tr>
					  <tr>
						<td>${model.id }</td>
						<td>${model.createdDate }</td>
						<td>${model.email}</td>
						<td>${model.orderTotalPrice}đ</td>
						<td>${model.paymentTypeName}</td>
					  </tr>
					</table>
					<hr>
					${model.paymentDescription }
					<hr>
					<c:if test="${model.paymentTypeCode.equals('chuyen-khoan')}">
						<h1>Thông Tin Chuyển Khoản Ngân Hàng</h1>
						<h3>Nguyễn Thanh Quang</h3>
						<table style="width:100%; margin-top:15px">
						  <tr>
							<th>Ngân Hàng</th>
							<th>Số Tài Khoản</th>
						  </tr>
						  <tr>
							<td>Agribank</td>
							<td>012345678910</td>
							
						  </tr>
						</table>
					</c:if>					
					<h2 style="margin-top:20px">Chi Tiết Đơn Hàng</h2>
					<table class="shop_table">
                                        <thead>
                                            <tr>
                                                <th class="product-name">Sản Phẩm</th>
                                                <th class="product-total">Tổng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach var="item" items="${model.listOrderDetail}" varStatus="loop">
                                            <tr class="cart_item">
                                                <td class="product-name">
                                                    ${item.productName} <strong class="product-quantity">× ${item.quantity}</strong> </td>
                                                <td class="product-total">
                                                    <span class="amount">${item.totalPrice}đ</span> </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr class="order-total">
                                                <th>Tổng Đơn Hàng</th>
                                                <td><strong><span class="amount">${model.orderTotalPrice}đ</span></strong> </td>
                                            </tr>
                                        </tfoot>
                                    </table>
					<h2 style="margin-top:20px">Địa Chỉ Thanh Toán</h2>
					<div class="create-account">
                            <p>${model.fullName}</p>
                            <p>${model.shipAddress}</p>
							<p>${model.shipPhone}</p>
							<p>${model.email}</p>
                        <div class="clear"></div>
					</div>
					<a href="<c:url value='/trang-chu'/>" class="nut-dat-hang">Tiếp tục mua sắm</a>
                </div>
            </div>
        </div>
    </div>

</body>

</html>