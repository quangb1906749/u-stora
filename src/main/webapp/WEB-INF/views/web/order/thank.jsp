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
    <title>Thanh toán</title>

</head>

<body>
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Đặt hàng</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
				<c:if test="${not empty message}">
						<div class="alert alert-${alert}">
  							${message}
						</div>
					</c:if>
					<c:if test="${model.paymentTypeCode.equals('chuyen-khoan')}">
						<div class="alert alert-info">
  							Mã hóa đơn là ${model.id}
						</div>
					</c:if>
                
				
                <div style="margin: auto; width: 75%;">
                    <div class="product-content-right">
                        <div class="woocommerce">
                            <security:authorize access="isAnonymous()">
                            	<h1 class="alert alert-warning" style="text-align: center;">BẠN CHƯA ĐĂNG NHẬP</h1>
                            	<h2 style="text-align: center;"><a href="<c:url value='/dang-nhap'/>">ĐĂNG NHẬP NGAY</a></h2>
                            </security:authorize>
                            <security:authorize access="isAuthenticated()">
                            	<form:form id="formSubmit" modelAttribute="model" class="checkout" name="checkout">
                                    <div id="customer_details" class="col2-set">
                                        <div class="col-1">
                                            <div class="woocommerce-billing-fields">
                                                <h3>Chi tiết đơn hàng</h3>
                                                <p id="billing_first_name_field"
                                                    class="form-row form-row-first validate-required">
                                                    <label class="" for="billing_first_name">Họ và tên <abbr
                                                            title="required" class="required">*</abbr>
                                                    </label>
                                                    <form:input type="text" placeholder="Họ và tên" path="fullName" 
                                                    value="<%=SecurityUtils.getPrincipal().getFullName()%>"
                                                    id="billing_first_name" name="billing_first_name"
                                                        class="input-text "/>
                                                </p>
                                                

                                                <p id="billing_email_field"
                                                    class="form-row form-row-first validate-required validate-email">
                                                    <label class="" for="billing_email">Email <abbr title="required"
                                                            class="required">*</abbr>
                                                    </label>
                                                    <form:input type="text" path="email" value="<%=SecurityUtils.getPrincipal().getEmail()%>"
                                                        placeholder="" id="billing_email" name="billing_email"
                                                        class="input-text "/>
                                                </p>
												<p id="billing_address_1_field"
                                                    class="form-row form-row-wide address-field validate-required">
                                                    <label class="" for="billing_address_1">Địa chỉ <abbr
                                                            title="required" class="required">*</abbr>
                                                    </label>
                                                    <form:textarea path="shipAddress" value="<%=SecurityUtils.getPrincipal().getAddress()%>"
                                                        placeholder="Address" id="billing_address_1"
                                                        name="billing_address_1" class="input-text "/>
                                                </p>
                                                <div class="clear"></div>
                                                <p id="billing_phone_field"
                                                    class="form-row form-row-last validate-required validate-phone">
                                                    <label class="" for="billing_phone">Số điện thoại <abbr
                                                            title="required" class="required">*</abbr>
                                                    </label>
                                                    <form:input type="text" value="<%=SecurityUtils.getPrincipal().getPhone()%>"
                                                        placeholder="" id="billing_phone" name="billing_phone"
                                                        class="input-text " path="shipPhone"/>
                                                </p>
                                                <div class="clear"></div>
                                                <form:hidden path="userId" id="userId" value="<%=SecurityUtils.getPrincipal().getId()%>" name="id"/>
                                                <div class="form-row place-order">

                                                    
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                	
                                	<div id="order_review" style="position: relative; margin-top:20px">
                                    <table class="shop_table">
                                        <thead>
                                            <tr>
                                                <th class="product-name">Sản phẩm</th>
                                                <th class="product-total">Tổng tiền</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="item" items="${Cart }">
                                        	<tr class="cart_item">
                                                <td class="product-name">
                                                    ${ item.value.product.name } <strong class="product-quantity">× ${item.value.quanty }</strong> </td>
                                                <td class="product-total">
                                                    <span class="amount">${item.value.totalPrice }₫</span> </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr class="order-total">
                                                <th>Tổng đơn hàng</th>
                                                <td><strong><span class="amount">${TotalPriceCart }₫</span></strong> </td>
                                            </tr>

                                        </tfoot>
                                    </table>


                                    <div id="payment">
                                        <ul class="payment_methods methods">
                                        	<c:forEach var="item" items="${paymentType }">
                                            <li class="payment_method_bacs">
                                            	<form:radiobutton path = "paymentTypeCode" value = "${item.paymentCode }" label = "${item.paymentName }" />
                                                <div class="payment_box payment_method_bacs">
                                                    <p>${item.paymentDescription }</p>
                                                </div>
                                            </li>
                                            </c:forEach>
<!--                                             <li class="payment_method_cheque"> -->
<!--                                                 <input type="radio" data-order_button_text="" value="tien-mat" name="payment_method" class="input-radio" id="payment_method_cheque"> -->
<!--                                                 <label for="payment_method_cheque">Trả tiền mặt</label> -->
<!--                                                 <div style="display:none;" class="payment_box payment_method_cheque"> -->
<!--                                                     <p>Trả tiền mặt cho nhân viên giao hàng khi nhận được hàng.</p> -->
<!--                                                 </div> -->
<!--                                             </li> -->
<!--                                             <li class="payment_method_paypal"> -->
<!--                                                 <input type="radio" data-order_button_text="Proceed to PayPal" value="paypal" name="payment_method" class="input-radio" id="payment_method_paypal"> -->
<!--                                                 <label for="payment_method_paypal">PayPal <img alt="PayPal Acceptance Mark" src="https://www.paypalobjects.com/webstatic/mktg/Logo/AM_mc_vs_ms_ae_UK.png"><a title="What is PayPal?" onclick="javascript:window.open('https://www.paypal.com/gb/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;" class="about_paypal" href="https://www.paypal.com/gb/webapps/mpp/paypal-popup">What is PayPal?</a> -->
<!--                                                 </label> -->
<!--                                                 <div style="display:none;" class="payment_box payment_method_paypal"> -->
<!--                                                     <p>Sử dụng thẻ ghi nợ của bạn nếu bạn không có tài khoản PayPal.</p> -->
<!--                                                 </div> -->
<!--                                             </li> -->
                                        </ul>

                                        <div class="form-row place-order">

                                            <input type="submit" value="Đặt hàng" data-value="Place order" value="Đặt hàng"
                                                        id="place_order" name="woocommerce_checkout_place_order"
                                                        class="button alt" onclick="checkoutOrder">


                                        </div>

                                        <div class="clear"></div>

                                    </div>
                                </div>
                                </form:form>
                            </security:authorize>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
    $('#place_order').click(function (e) {
    	e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
	    addNew(data);
    });
    function addNew(data) {
		$.ajax({
            url: '${orderAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${orderURL}?id="+result.id+"&message=order_success";
            },
            error: function (error) {
            	window.location.href = "${orderURL}?page=1&limit=2&message=error_system";
            }
        });
	}
// 	    $.ajax({
//             url: '${orderAPI}',
//             type: 'POST',
//             contentType: 'application/json',
//             data: JSON.stringify(data),
//             dataType: 'json',
//             success: function (result) {
//             	window.location.href = "${editProductURL}?id="+result.id+"&message=insert_success";
//             },
//             error: function (error) {
//             	window.location.href = "${productURL}?page=1&limit=2&message=error_system";
//             }
//             complete: function (result) {
//             	window.location.href = "${orderURL}?message=order_success";
//             },
//             error: function (error) {
//             	window.location.href = "${orderURL}?message=error_system";
//             },
//         });
    
    </script>

</body>

</html>