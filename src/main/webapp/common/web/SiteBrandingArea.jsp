<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="/trang-chu"><img src="<c:url value="/template/web/img/logo.png"/>"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="<c:url value='/gio-hang'/>">Giỏ hàng - <span class="cart-amunt">${TotalPriceCart }₫</span> <i class="fa fa-shopping-cart"></i> <span class="product-count">${TotalQuantyCart }</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->