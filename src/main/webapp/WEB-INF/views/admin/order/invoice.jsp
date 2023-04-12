<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="orderAPI" value="/api/order"/>
<c:url var="orderURL" value="/quan-tri/don-hang/danh-sach"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Chi tiết đơn hàng</title>
	</head>

	<body>
		<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="<c:url value='/quan-tri/trang-chu'/>">Trang chủ</a>
							</li>

							<li>
								<a href="<c:url value='/quan-tri/don-hang/danh-sach?page=1&limit=2'/>">Danh sách</a>
							</li>
							<li class="active">Chi tiết đơn hàng</li>
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>

					<div class="page-content">
						<div class="ace-settings-container" id="ace-settings-container">
							<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
								<i class="ace-icon fa fa-cog bigger-130"></i>
							</div>

							<div class="ace-settings-box clearfix" id="ace-settings-box">
								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<div class="pull-left">
											<select id="skin-colorpicker" class="hide">
												<option data-skin="no-skin" value="#438EB9">#438EB9</option>
												<option data-skin="skin-1" value="#222A2D">#222A2D</option>
												<option data-skin="skin-2" value="#C6487E">#C6487E</option>
												<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
											</select>
										</div>
										<span>&nbsp; Choose Skin</span>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
										<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
										<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
										<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
										<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
										<label class="lbl" for="ace-settings-add-container">
											Inside
											<b>.container</b>
										</label>
									</div>
								</div><!-- /.pull-left -->

								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
										<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
										<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
										<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
									</div>
								</div><!-- /.pull-left -->
							</div><!-- /.ace-settings-box -->
						</div><!-- /.ace-settings-container -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="space-6"></div>

								<div class="row">
									<div class="col-sm-10 col-sm-offset-1">
										<div class="widget-box transparent">
											<div class="widget-header widget-header-large">
												<h3 class="widget-title grey lighter">
													<i class="ace-icon fa fa-leaf green"></i>
													Chi Tiết Đơn Hàng
												</h3>

												<div class="widget-toolbar no-border invoice-info">
													<span class="invoice-info-label">Mã ĐH:</span>
													<span class="red">#${model.id}</span>

													<br />
													<span class="invoice-info-label">Ngày đặt hàng:</span>
													<span class="blue">${model.createdDate}</span>
												</div>

												<div class="widget-toolbar hidden-480">
													<a href="#">
														<i class="ace-icon fa fa-print"></i>
													</a>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main padding-24">
													<div class="row">
														<div class="col-sm-6">
															<div class="row">
																<div class="col-xs-11 label label-lg label-info arrowed-in arrowed-right">
																	<b>Thông Tin Khách Hàng</b>
																</div>
															</div>

															<div>
																<ul class="list-unstyled spaced">
																	<li>
																		<i class="ace-icon fa fa-caret-right blue"></i>Tên KH: ${model.fullName}
																	</li>

<!-- 																	<li> -->
<!-- 																		<i class="ace-icon fa fa-caret-right blue"></i>Zip Code -->
<!-- 																	</li> -->

																	<li>
																		<i class="ace-icon fa fa-caret-right blue"></i>Địa Chỉ: ${model.shipAddress}
																	</li>

																	<li>
																		<i class="ace-icon fa fa-caret-right blue"></i>
																			SĐT:
																		<b class="red">${model.shipPhone}</b>
																	</li>

																	<li class="divider"></li>

<!-- 																	<li> -->
<!-- 																		<i class="ace-icon fa fa-caret-right blue"></i> -->
<!-- 																		Paymant Info -->
<!-- 																	</li> -->
																</ul>
															</div>
														</div><!-- /.col -->

														<div class="col-sm-6">
															<div class="row">
																<div class="col-xs-11 label label-lg label-success arrowed-in arrowed-right">
																	<b>Thông Tin Đơn Hàng</b>
																</div>
															</div>

															<div>
																<ul class="list-unstyled  spaced">
																	<li>
																		<i class="ace-icon fa fa-caret-right green"></i>Mã Đơn Hàng: ${model.id}
																	</li>

																	<li>
																		<i class="ace-icon fa fa-caret-right green"></i>Ngày Đặt: ${model.createdDate}
																	</li>

																	<li>
																		<i class="ace-icon fa fa-caret-right green"></i>Trang Thái: ${model.shipState}
																	</li>

																	<li class="divider"></li>

																	<li>
																		<i class="ace-icon fa fa-caret-right green"></i>
																		Ghi Chú:
																	</li>
																</ul>
															</div>
														</div><!-- /.col -->
													</div><!-- /.row -->

													<div class="space"></div>

													<div>
														<table class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th class="center">STT</th>
																	<th class="hidden-xs">Tên Sản Phẩm</th>
																	<th>Số lượng</th>
																	<th class="hidden-480">Giá</th>
																	<th>Thành Tiền</th>
																</tr>
															</thead>

															<tbody>
																<c:forEach var="item" items="${model.listOrderDetail}" varStatus="loop">
																<tr>
																	<td class="center">${loop.index + 1}</td>
																	
																	<td class="hidden-xs">
																		${item.productName}
																	</td>

																	<td>
																		${item.quantity}
																	</td>
																	
																	<td class="hidden-480">${item.productPrice}</td>
																	<td>${item.totalPrice}</td>
																</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>

													<div class="hr hr8 hr-double hr-dotted"></div>

													<div class="row">
														<div class="col-sm-5 pull-right">
															<h4 class="pull-right">
																Tổng Đơn Hàng :
																<span class="red">${model.orderTotalPrice }</span>
															</h4>
														</div>
														<div class="col-sm-7 pull-left"> Extra Information </div>
													</div>

													<div class="space-6"></div>
													<div class="well">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div>
	</body>
</html>