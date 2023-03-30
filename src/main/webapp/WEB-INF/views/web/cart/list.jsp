<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<title>Giỏ hàng</title>
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
    position: absolute;
    right: 12%;
	}
</style>

</head>

<body>
	<div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Giỏ Hàng</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div>
                    <div class="product-content-right">
                        <div class="woocommerce">
                            <form method="post" action="#">
                                <table cellspacing="0" class="shop_table cart">
                                    <thead>
                                        <tr>
                                            
                                            <th class="product-thumbnail">Hình Ảnh</th>
                                            <th class="product-name">Sản Phẩm</th>
                                            <th class="product-price">Giá</th>
                                            <th class="product-quantity">Số lượng</th>
											<th class="qroduct-quantity">Chỉnh sửa</th>
											<th class="product-remove">Xóa</th>
                                            <th class="product-subtotal">Tổng tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="item" items="${Cart }">
                                        <tr class="cart_item">
                                            

                                            <td class="product-thumbnail">
                                                <a href="single-product.html"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="<c:url value='/template/web/img/product/${ item.value.product.image }'/>"></a>
                                            </td>

                                            <td class="product-name">
                                                <a href="single-product.html">${ item.value.product.name }</a> 
                                            </td>

                                            <td class="product-price">
                                                <span class="amount">${ item.value.product.price }₫</span> 
                                            </td>

                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                    <input type="number" size="4" class="input-text qty text" id="quanty-cart-${item.key }" title="Qty" value="${item.value.quanty }" min="0" step="1">
                                                </div>
                                            </td>
											
											<td class="product-quantity">
												<input type="button" data-id="${item.key }" class="button edit-cart" value="📝">
											</td>
											
											<td class="product-remove">
                                                <a title="Remove this item" class="remove" href="<c:url value="/DeleteCart/${item.key }" />">×</a> 
                                            </td>

                                            <td class="product-subtotal">
                                                <span class="amount">${item.value.totalPrice }₫</span> 
                                            </td>
                                        </tr>
                                        </c:forEach>
										
                                        <tr>
                                            <td class="actions" colspan="6">
                                                <!--
												<div class="coupon">
                                                    <label for="coupon_code">Coupon:</label>
                                                    <input type="text" placeholder="Coupon code" value="" id="coupon_code" class="input-text" name="coupon_code">
                                                    <input type="submit" value="Apply Coupon" name="apply_coupon" class="button">
                                                </div>
												
                                                <input type="submit" value="Update Cart" name="update_cart" class="button">
												
                                                <input type="submit" value="Checkout" name="proceed" class="checkout-button button alt wc-forward">
												-->
                                            </td>
											<td class="product-subtotal">
                                                <span class="amount">${TotalPriceCart }₫</span> 
                                            </td>
                                        </tr>
                                    </tbody>
									
                                </table>
									<a href="<c:url value='/dat-hang'/>" class="nut-dat-hang">Thanh toán</a>
<!-- 									<button onclick="myFunction()">Replace document</button> -->
<!-- 									<input onclick="checkout()" type="submit"value="Đặt hàng" name="proceed"  class="checkout-button button alt wc-forward" style="position: absolute;right:12%;"> -->
                            </form>

                            
                        </div>                        
                    </div>                    
                </div>
            </div>
        </div>
    </div>

<content tag="script">
	<script>
	$(".edit-cart").on("click", function(){
		var id = $(this).data("id");
		var quanty = $("#quanty-cart-"+id).val();
		window.location = "EditCart/"+id+"/"+quanty;
	});
	</script>
	
</content>
</body>
</html>