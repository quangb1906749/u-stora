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
						<h3>Register</h3>
						<hr class="soft" />

						<div class="col-sm-8">
							<div class="well">
								<h5>CREATE YOUR ACCOUNT</h5>
								<br /> Enter your e-mail address to create an account.<br />
								<form:form id="formSubmit" action="/dang-ky" method="POST"
									modelAttribute="user">
									<div class="control-group">
										<label class="control-label" for="inputEmail">E-mail
											address</label>
										<div class="controls">
											<form:input type="text" path="email" class="span3"
												placeholder="Email" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Username</label>
										<div class="controls">
											<form:input type="text" path="userName" class="span3"
												placeholder="Username" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Password</label>
										<div class="controls">
											<form:input type="password" path="password" class="span3"
												placeholder="Password" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Fullname</label>
										<div class="controls">
											<form:input type="text" path="fullName" class="span3"
												placeholder="Fullname" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Birthday</label>
										<div class="controls">
											<form:input type="date" path="birthday" class="span3"
												placeholder="mm/dd/yyyy" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Address</label>
										<div class="controls">
											<form:input type="text" path="address" class="span3"
												placeholder="Address" />
										</div>
									</div>
									<form:hidden path="id" id="newId" />
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<!-- admin usercontroller -->
											<c:if test="${empty model.id}">
												<button class="btn btn-info" type="button"
													id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i> Thêm
												</button>
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
			$
					.ajax({
						url : '${userAPI}',
						type : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${editUserURL}?id="
									+ result.id + "&message=insert_success";
						},
						error : function(error) {
							window.location.href = "${userURL}?page=1&limit=2&message=error_system";
						}
					});
		}
	</script>
</body>
</html>