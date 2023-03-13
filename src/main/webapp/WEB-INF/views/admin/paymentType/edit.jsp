<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="paymentTypeURL" value="/quan-tri/phuong-thuc-thanh-toan/danh-sach"/>
<c:url var="editPaymentTypeURL" value="/quan-tri/phuong-thuc-thanh-toan/chinh-sua"/>
<c:url var="paymentTypeAPI" value="/api/paymentType"/>
<html>
<head>
<title>Chỉnh sửa phương thức thanh toán</title>
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
				<li><i class="ace-icon fa fa-home home-icon"></i> <a href="<c:url value='/quan-tri/trang-chu'/>">Home</a>
				</li>

				<li><a href="<c:url value='/quan-tri/phuong-thuc-thanh-toan/danh-sach?page=1&limit=2'/>">Forms</a></li>
				<li class="active">Form Elements</li>
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
					<form:form class="form-horizontal" paymentType="form" id="formSubmit" modelAttribute="model">
						<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tên phương thức thanh toán</label>
								<div class="col-sm-9">
									<form:input path="paymentName" cssClass="col-xs-10 col-sm-5"/>
								</div>
						</div>
						<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Code</label>
								<div class="col-sm-9">
									<form:input path="paymentCode" cssClass="col-xs-10 col-sm-5"/>
								</div>
						</div>
						<form:hidden path="id" id="paymentTypeId"/>
						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
											<c:if test="${not empty model.id}">
												<button class="btn btn-info" type="button" id="btnAddOrUpdatePaymentType">
													<i class="ace-icon fa fa-check bigger-110"></i>
													Cập nhật
												</button>
											</c:if>
											<c:if test="${empty model.id}">
												<button class="btn btn-info" type="button" id="btnAddOrUpdatePaymentType">
													<i class="ace-icon fa fa-check bigger-110"></i>
													Thêm
												</button>
											</c:if>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Hủy
											</button>
							</div>		
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>	

<script>
	$('#btnAddOrUpdatePaymentType').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
	    var id = $('#paymentTypeId').val();
	    if (id == "") {
	    	addPaymentType(data);
	    } else {
	    	updatePaymentType(data);
	    }
	});
	
	function addPaymentType(data) {
		$.ajax({
            url: '${paymentTypeAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editPaymentTypeURL}?id="+result.id+"&message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${paymentTypeURL}?page=1&limit=2&message=error_system";
            }
        });
	}
	
	function updatePaymentType(data) {
		$.ajax({
            url: '${paymentTypeAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editPaymentTypeURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
            	window.location.href = "${editPaymentTypeURL}?id="+result.id+"&message=error_system";
            }
        });
	}
</script>
</body>
</html>
