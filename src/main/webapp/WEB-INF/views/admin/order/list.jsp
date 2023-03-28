<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="orderAPI" value="/api/order"/>
<c:url var="orderURL" value="/quan-tri/don-hang/danh-sach"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Danh sách đơn hàng</title>
	</head>

	<body>
		<div class="main-content">
		<form action="<c:url value='/quan-tri/don-hang/danh-sach'/>" id="formSubmit" method="get">
			
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Trang chủ</a>
							</li>
						</ul>
						<!-- /.breadcrumb -->
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<c:if test="${not empty message}">
									<div class="alert alert-${alert}">
			  							${message}
									</div>
								</c:if>
								<div class="widget-box table-filter">
									<div class="table-btn-controls">
										<div class="pull-right tableTools-container">
											<div class="dt-buttons btn-overlap btn-group">
												<button id="btnDelete" type="button" onclick="warningBeforeDelete()"
														class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa bài viết'>
																<span>
																	<i class="fa fa-trash-o bigger-110 pink"></i>
																</span>
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th><input type="checkbox" id="checkAll"></th>
														<th>Mã đơn hàng</th>
														<th>Ngày đặt hàng</th>
														<th>Khách hàng</th>
														<th>Địa chỉ giao hàng</th>
														<th>Số điện thoại nhận hàng</th>
														<th>Tổng đơn hàng</th>
														<th>Trạng thái</th>
														<th>Cập nhật</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="item" items="${model.listResult}">
														<tr>
															<td><input type="checkbox" id="checkbox_${item.id}" value="${item.id}"></td>
															<td>${item.id}</td>
															<td>${item.createdDate }</td>
															<td>${item.fullName}</td>
															<td>${item.shipAddress}</td>
															<td>${item.shipPhone }</td>
															<td>${item.orderTotalPrice}</td>
															<td>
																<select id="shipState-${item.id }">
															  	 	<option value="" label="Mới"/>
															  	 	<option value="Đã xác nhận" <c:if test="${item.shipState.equals('Đã xác nhận') }">selected</c:if> label="Đã xác nhận"/>
															  	 	<option value="Đang giao" <c:if test="${item.shipState.equals('Đang giao') }">selected</c:if> label="Đang giao"/>
															  	 	<option value="Đã nhận" <c:if test="${item.shipState.equals('Đã nhận') }">selected</c:if> label="Đã nhận"/>
															  	 	<option value="Đã hủy" <c:if test="${item.shipState.equals('Đã hủy') }">selected</c:if> label="Đã hủy"/>
							  	 								</select>
							  	 							
															</td>
															<td>
																<a data-id="${item.id }" data-userId="${item.userId }"
																data-shipAddress="${item.shipAddress}" 
																data-shipPhone="${item.shipPhone }"
																data-orderTotalPrice="${item.orderTotalPrice}"
																data-orderTotalQuantity="${item.orderTotalQuantity }"
																class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
																   title="Cập nhật trạng thái đơn hàng" id="btnUpdateShipState"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																</a>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<ul class="pagination" id="pagination"></ul>	
											<input type="hidden" value="" id="page" name="page"/>
											<input type="hidden" value="" id="limit" name="limit"/>									
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</form>
		</div>
		<!-- /.main-content -->
		<script>
			var totalPages = ${model.totalPage};
			var currentPage = ${model.page};
			$(function () {
		        window.pagObj = $('#pagination').twbsPagination({
		            totalPages: totalPages,
		            visiblePages: 10,
		            startPage: currentPage,
		            onPageClick: function (event, page) {
		            	if (currentPage != page) {
		            		$('#limit').val(2);
							$('#page').val(page);
							$('#formSubmit').submit();
						}
		            }
		        });
		    });
			
			function warningBeforeDelete() {
					swal({
					  title: "Xác nhận xóa",
					  text: "Bạn có chắc chắn muốn xóa hay không",
					  type: "warning",
					  showCancelButton: true,
					  confirmButtonClass: "btn-success",
					  cancelButtonClass: "btn-danger",
					  confirmButtonText: "Xác nhận",
					  cancelButtonText: "Hủy bỏ",
					}).then(function(isConfirm) {
					  if (isConfirm) {
							var ids = $('tbody input[type=checkbox]:checked').map(function () {
					            return $(this).val();
					        }).get();
							deleteOrder(ids);
					  }
					});
			} 
			function deleteOrder(data) {
		        $.ajax({
		            url: '${orderAPI}',
		            type: 'DELETE',
		            contentType: 'application/json',
		            data: JSON.stringify(data),
		            success: function (result) {
		                window.location.href = "${orderURL}?page=1&limit=2&message=delete_success";
		            },
		            error: function (error) {
		            	window.location.href = "${orderURL}?page=1&limit=2&message=error_system";
		            }
		        });
		    }
			$('.btn-edit').click(function (e) {
			    e.preventDefault();
			    var id = $(this).data("id");
			    var userId = $(this).attr("data-userId");
			    var shipAddress = $(this).attr("data-shipAddress");
			    var shipPhone = $(this).attr("data-shipPhone");
			    var orderTotalPrice = $(this).attr("data-orderTotalPrice");
			    var orderTotalQuantity = $(this).attr("data-orderTotalQuantity");
			    var data = {};
			    var shipState = $('#shipState-'+id).val();
			    data["id"] = id;
			    data["userId"] = userId;
			    data["shipAddress"] = shipAddress;
			    data["shipPhone"] = shipPhone;
			    data["orderTotalPrice"] = orderTotalPrice;
			    data["orderTotalQuantity"] = orderTotalQuantity;
			    data["shipState"] = shipState;
			    updateOrder(data);
			});
			
			
			function updateOrder(data) {
				$.ajax({
		            url: '${orderAPI}',
		            type: 'PUT',
		            contentType: 'application/json',
		            data: JSON.stringify(data),
		            dataType: 'json',
		            success: function (result) {
		            	window.location.href = "${orderURL}?page=1&limit=2&message=update_success";
		            },
		            error: function (error) {
		            	window.location.href = "${orderURL}?page=1&limit=2&message=error_system";
		            }
		        });
			}
		</script>
	</body>
</html>