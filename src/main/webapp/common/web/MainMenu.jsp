<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                        <li class="active"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
                        <li><a href="shop.html">Shop page</a></li>
                        <li><a href="<c:url value='/gioi-thieu'/>">Giới thiệu</a></li>
                        <li><a href="<c:url value='/gio-hang'/>">Giỏ hàng</a></li>
                        <li><a href="<c:url value='/dat-hang'/>">Thanh toán</a></li>
					<!--<li><a href="#">Category</a></li> -->
					<li>
						<div style="position:relative;top:20px" class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">Category
							<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Lap top</a></li>
								<li><a href="#">Smart phone</a></li>
							</ul>
						</div>
					</li>
<!-- 					<li><a href="#">Giới thiệu</a></li> -->
<!-- 					<li><a href="#">Contact</a></li> -->
				</ul>
			</div>
		</div>
	</div>
</div>
