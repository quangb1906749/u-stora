<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="userURL" value="/quan-tri/nguoi-dung/danh-sach" />
<c:url var="editUserURL" value="/quan-tri/nguoi-dung/chinh-sua" />
<c:url var="userAPI" value="/api/user" />
<html>
<head>
<c:if test="${not empty model.id}">
	<title>Cập nhật thông tin người dùng</title>
</c:if>
<c:if test="${empty model.id}">
	<title>Thêm người dùng</title>
</c:if>
<style>
.birthday {
	-webkit-text-size-adjust: 100%;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	box-sizing: border-box;
	font: inherit;
	margin: 0;
	position: relative;
	min-height: 1px;
	float: left;
	display: block;
	height: 34px;
	line-height: 1.42857143;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
	border-radius: 0 !important;
	color: #858585;
	border: 1px solid #d5d5d5;
	padding: 5px 4px 6px;
	font-size: 14px;
	font-family: inherit;
	box-shadow: none !important;
	transition-duration: .1s;
	border-color: #b5b5b5;
	background: #FFF;
	width: 480px;
}
</style>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>

				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a
						href="<c:url value='/quan-tri/trang-chu'/>">Trang chủ</a></li>

					<li><a
						href="<c:url value='/quan-tri/nguoi-dung/danh-sach?page=1&limit=2'/>">Danh
							sách</a></li>
					<li class="active"><c:if test="${not empty model.id}">
							Cập nhật thông tin người dùng
						</c:if> <c:if test="${empty model.id}">
							Thêm người dùng
						</c:if></li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<c:if test="${not empty message}">
							<div class="alert alert-${alert}">${message}</div>
						</c:if>
						<form:form class="form-horizontal" role="form" id="formSubmit"
							modelAttribute="model">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1">Tên tài khoản</label>
								<div class="col-sm-9">
									<form:input path="userName" cssClass="col-xs-10 col-sm-5" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1">Mật khẩu</label>
								<div class="col-sm-9">
									<form:input path="password" cssClass="col-xs-10 col-sm-5" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1">Họ và tên</label>
								<div class="col-sm-9">
									<form:input path="fullName" cssClass="col-xs-10 col-sm-5" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1">Giới tính</label>
								<div class="col-sm-9">
									<form:input path="gender" cssClass="col-xs-10 col-sm-5" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
<<<<<<< HEAD
									for="form-field-1">Ngày sinh</label> 
								<div class="col-sm-9">
									<form:input type="date" path="birthday"
										cssClass="col-xs-10 col-sm-5" />
									
=======
									for="form-field-1">Ngày sinh</label>
								<div class="col-sm-9">
									<form:input type="date" path="birthday" cssClass="col-xs-10 col-sm-5" />
								</div>
							</div>
>>>>>>> 06a89f218ff407e1c955a28d79c3fe75038c23a3
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">Số điện thoại</label>
										<div class="col-sm-9">
											<form:input path="phone" cssClass="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">Email</label>
										<div class="col-sm-9">
											<form:input path="email" cssClass="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">Địa chỉ</label>
										<div class="col-sm-9">
											<form:input path="address" cssClass="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">Trạng thái</label>
										<div class="col-sm-9">
											<form:input path="status" cssClass="col-xs-10 col-sm-5" />
										</div>
									</div>

									<form:hidden path="id" id="newId" />
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<c:if test="${not empty model.id}">
												<button class="btn btn-info" type="button"
													id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i> Cập nhật
												</button>
											</c:if>
											<c:if test="${empty model.id}">
												<button class="btn btn-info" type="button"
													id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i> Thêm
												</button>
											</c:if>
											<!-- admin usercontroller -->
											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i> Hủy
											</button>
										</div>
									</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--[if !IE]> -->
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

		function updateNew(data) {
			$.ajax({
				url : '${userAPI}',
				type : 'PUT',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : 'json',
				success : function(result) {
					window.location.href = "${editUserURL}?id=" + result.id
							+ "&message=update_success";
				},
				error : function(error) {
					window.location.href = "${editUserURL}?id=" + result.id
							+ "&message=error_system";
				}
			});
		}
	</script>
</body>
</html>
