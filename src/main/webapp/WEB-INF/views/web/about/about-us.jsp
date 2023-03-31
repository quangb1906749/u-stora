<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ page import="com.myproject.Util.SecurityUtils"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Giới Thiệu</title>
</head>
<body>
	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>Giới Thiệu</h2>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">

				<div class="">
					<div class="product-content-right">
						<div class="product-breadcroumb">
							<a href="">Home</a> <a href="">Giới Thiệu</a>
						</div>

						<div class="single-sidebar">
                        <h2 class="sidebar-title">Ustora</h2>
                                <div class="image" style="width:500px;height:100px;"> 
                        			<img 
                        			 src="<c:url value='/template/web/img/logo.png'/>">
                   				 </div>   
                   				 
                   				 <p>Được thành lập từ tháng 2/2023</p>  
                   				 <p>Ustora là trang web bán điện thoại và laptop, người mua có thể xem những mẫu điện thoại và laptop mới nhất tối tân nhất.Chúng tôi luôn luôn cố gắng để mang đến cho khách hàng sự tôn trọng.Đặt khách hàng làm trung tâm trong mọi suy nghĩ và hành động của mình.</p>                
                        		<h2 class="sidebar-title">Chất lượng</h2>
                        		<div class="image" >
<!--                         			<img  -->
<%--                         			 src="<c:url value='/template/web/img/logo.png'/>"> --%>
<!--                    				 </div>  -->
                        		<p>Uy tín, trách nhiệm luôn đi đầu để đảm bảo chất lượng, đem đến cho khách hàng sự an tâm tuyệt đối khi mua sắm các sản phẩm công nghệ.</p>
                        		<h2 class="sidebar-title">Tin cậy</h2>
                        		<p>Chữ “tín” luôn chú trọng trong hoạt động phát triển thương hiệu, điểm tựa niềm tin vững chắc cho khách hàng </p>
                        		<h2 class="sidebar-title">Tầm nhìn</h2>
                        		<p>Cùng với sự phát triển của xã hội và thị trường công nghệ, Ustora đã, đang và sẽ nỗ lực không ngừng để trở thành điểm đến tin cậy của khách hàng</p>
                        		<h2 class="sidebar-title">Sứ mệnh</h2>
                        		<p> Ustora sẽ cung cấp tới mọi tầng lớp khách hàng trải nghiệm mua sắm tích cực, từ sản phẩm Kỹ thuật số chính hãng chất lượng cao, giá cả cạnh tranh đi kèm dịch vụ chăm sóc khách hàng thân thiện, được đảm bảo bởi uy tín của doanh nghiệp.</p>
                        
                        
                        </div>


						<!-- 						<div class="row"> -->
						<!-- 							<div class="col-sm-6"> -->
						<!-- 								<div class="product-images"> -->
<!-- 															<div class="product-main-img"> -->
<!-- 																<img -->
<%-- 																	src="<c:url value='/template/web/img/product/${ product.image }'/>" --%>
<!-- 																	alt=""> -->
<!-- 															</div> -->

						<!-- 								</div> -->
						<!-- 							</div> -->


						<!-- 									<div role="tabpanel"> -->
						<!-- 										<ul class="product-tab" role="tablist"> -->
						<!-- 											<li role="presentation" class="active"><a href="#home" -->
						<!-- 												aria-controls="home" role="tab" data-toggle="tab">Description</a></li> -->

						<!-- 										</ul> -->
						<!-- 										<div class="tab-content"> -->
						<!-- 											<div role="tabpanel" class="tab-pane fade in active" -->
						<!-- 												id="home"> -->
						<!-- 												<h2>Product Description</h2> -->
						<%-- 												<p>${ product.description }</p> --%>
						<!-- 											</div> -->

						<!-- 										</div> -->
						<!-- 									</div> -->

						<!-- 								</div> -->
					</div>
				</div>



			</div>
		</div>
	</div>

</div>

</body>
</html>