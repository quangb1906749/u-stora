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
                <div class="col-md-4">
                </div>
				
                <div class="col-md-8">
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

                                                <p id="billing_email_field"
                                                    class="form-row form-row-first validate-required validate-email">
                                                    <label class="" for="billing_email">Email <abbr title="required"
                                                            class="required">*</abbr>
                                                    </label>
                                                    <form:input type="text" path="email" value="<%=SecurityUtils.getPrincipal().getEmail()%>"
                                                        placeholder="" id="billing_email" name="billing_email"
                                                        class="input-text "/>
                                                </p>

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

                                                    <input type="submit" value="Đặt hàng" data-value="Place order" value="Đặt hàng"
                                                        id="place_order" name="woocommerce_checkout_place_order"
                                                        class="button alt" onclick="checkoutOrder">
                                                    
                                                </div>
                                            </div>
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
	    $.ajax({
            url: '${orderAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            complete: function (result) {
            	window.location.href = "${orderURL}?message=order_success";
            },
//             error: function (error) {
//             	window.location.href = "${orderURL}?message=error_system";
//             },
        });
    });
    </script>

</body>

</html>