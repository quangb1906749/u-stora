<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
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
	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="row">

					<div class="span9">
						<ul class="breadcrumb">
							<li><a href="index.html">Home</a> <span class="divider">/</span></li>

							<li class="active">Register</li>
						</ul>
						<h3>Đăng ký tài khoản</h3>
						<hr class="soft" />

						<div class="col-sm-8">

							<div class="well">
								<h5>TẠO TÀI KHOẢN</h5>
								<br />
								<form:form id="formSubmit" action="/dang-ky" method="POST"
									modelAttribute="user">
									<div class="control-group">
										<label class="control-label" for="inputEmail">Địa chỉ
											email</label>
										<div class="controls">
											<form:input type="text" path="email" class="span3"
												placeholder="" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Tên đăng
											nhập</label>
										<div class="controls">
											<form:input type="text" path="userName" class="span3"
												placeholder="" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Mật khẩu</label>
										<div class="controls">
											<form:input type="password" path="password" class="span3"
												placeholder="" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Họ tên</label>
										<div class="controls">
											<form:input type="text" path="fullName" class="span3"
												placeholder="Nhập đầy đủ họ tên" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Năm sinh</label>
										<div class="controls">
											<form:input type="date" path="birthday" class="span3"
												placeholder="" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Địa chỉ</label>
										<div class="controls">
											<form:input type="text" path="address" class="span3"
												placeholder="Nhập địa chỉ " />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Số điện
											thoại</label>
										<div class="controls">
											<form:input type="text" path="phone" class="span3"
												placeholder="" />
										</div>
									</div>
									<br />
									<form:hidden path="id" id="newId" />
									<div class="clearfix form-actions">
										<c:if test="${not empty message}">
											<div class="alert alert-${alert}"
												style="margin: auto; width: 50%;">${message }</div>
											<br>
										</c:if>

										<div class="col-md-offset-3 col-md-9">
											<!-- admin usercontroller -->
											<c:if test="${empty model.id}">
												<button class="btn btn-info" type="button"
													id="btnAddOrUpdateNew">Đăng ký</button>
											</c:if>
										</div>
										<!-- 									<div class="controls"> -->
										<!-- 										<button type="submit" id="btnAddOrUpdateNew" class="btn block">Create Your	Account</button> -->
										<!-- 									</div> -->
									</div>
								</form:form>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script
		src="<c:url value='/template/admin/js/2.1.4/jquery-2.1.4.min.js' />"></script>
	<script>
		$('#btnAddOrUpdateNew').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
			});
			var id = $('#newId').val();
			if (id == "") {
				addNew(data);
			} else {
				updateNew(data);
			}
		});

		function addNew(data) {
			$.ajax({
				url : '${userAPI}',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : 'json',

			});

		}
	</script>
</body>
</html>