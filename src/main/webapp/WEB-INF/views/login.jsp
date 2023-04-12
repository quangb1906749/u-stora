<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
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
						<h3 style="color: #478FCA!important;">Đăng nhập</h3>
						
						
						<hr class="soft" />
						<c:if test="${param.incorrectAccount != null}">
							<div class="alert alert-danger" style="margin: auto; width: 50%;">	
								Không đúng mật khẩu hoặc tên đăng nhập.
							</div>
							<br>
						</c:if>
						<c:if test="${param.accessDenied != null}">
							<div class="alert alert-danger" style="margin: auto; width: 50%;">	
								Rất tiết! Bạn không có quyền truy cập.
							</div>
							<br>
						</c:if>
						
						<div>
							<div class="well" style="margin: auto; width: 50%;">
								<div class="logo">
                        			<h1 style="margin: auto; width: 50%;"><a href="/trang-chu"><img src="<c:url value="/template/web/img/logo.png"/>"></a></h1>
                    			</div>
<!-- 								<h5 >Mời nhập tài khoản</h5> -->
								<hr style="color:blue; margin-bottom:-5px">
								<br/>
								<form action="j_spring_security_check" id="formLogin" method="post" style="margin: auto; width: 50%;">
									
									<div class="control-group">
										<label class="control-label" for="inputEmail">Tên đăng nhập</label>
										<div class="controls">
											<input type="text" id="userName" name="j_username" placeholder="Tên đăng nhập">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail" style="margin-top: 10px;">Mật khẩu</label>
										<div class="controls">
											<input type="password" id="password" name="j_password" placeholder="Mật khẩu">
										</div>
									</div>
									<button type="submit" class="btn btn-info" style="margin-top: 10px;">Đăng nhập</button>
								</form>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>