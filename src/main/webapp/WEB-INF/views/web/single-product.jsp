<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Single product</title>
</head>
<body>

<div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shop</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>



 							<c:forEach var="product" items="${model.listResult}" 
 								varStatus="home"> 
 								<div class="single-product"> 
 									<div class="product-f-image"> 
 										<img 
 											src="<c:url value='/template/web/img/product/${ product.image }'/>" 
 											alt=""> 
 										<div class="product-hover"> 
 											<a href="single-product.html" class="view-details-link"><i 
 												class="fa fa-link"></i> See details</a> 
 										</div> 
 									</div> 

 									<h2>${ product.name }</h2> 

 									<div class="product-carousel-price"> 
 										<ins>${ product.price }</ins> 
 									</div> 
 									<a href="#" class="add-to-cart-link"><i 
 										class="fa fa-shopping-cart"></i> Add to cart</a> 
 								</div> 
 							</c:forEach> 

	
	
	
	
	
	
	<div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Search Products</h2>
                        <form action="">
                            <input type="text" placeholder="Search products...">
                            <input type="submit" value="Search">
                        </form>
                    </div>
                    
<!--                     <div class="single-sidebar"> -->
<!--                         <h2 class="sidebar-title">Products</h2> -->
<!--                         <div class="thubmnail-recent"> -->
<!--                             <img src="img/product-thumb-1.jpg" class="recent-thumb" alt=""> -->
<!--                             <h2><a href="">Sony Smart TV - 2015</a></h2> -->
<!--                             <div class="product-sidebar-price"> -->
<!--                                 <ins>$700.00</ins> <del>$100.00</del> -->
<!--                             </div>                              -->
<!--                         </div> -->
<!--                     </div> -->
                    
<!--                     <div class="single-sidebar"> -->
<!--                         <h2 class="sidebar-title">Recent Posts</h2> -->
<!--                         <ul> -->
<!--                             <li><a href="">Sony Smart TV - 2015</a></li> -->
<!--                             <li><a href="">Sony Smart TV - 2015</a></li> -->
<!--                             <li><a href="">Sony Smart TV - 2015</a></li> -->
<!--                             <li><a href="">Sony Smart TV - 2015</a></li> -->
<!--                             <li><a href="">Sony Smart TV - 2015</a></li> -->
<!--                         </ul> -->
<!--                     </div> -->
                    
                </div>
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="product-breadcroumb">
                            <a href="">Home</a>
                            <a href="">Category Name</a>
                            <a href="">Sony Smart TV - 2015</a>
                        </div>
                        
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src="img/product-2.jpg" alt="">
                                    </div>
                                    
                                    <div class="product-gallery">
                                        <img src="img/product-thumb-1.jpg" alt="">
                                        <img src="img/product-thumb-2.jpg" alt="">
                                        <img src="img/product-thumb-3.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name">Sony Smart TV - 2015</h2>
                                    <div class="product-inner-price">
                                        <ins>$700.00</ins> <del>$100.00</del>
                                    </div>    
                                    
                                    <form action="" class="cart">
                                        <div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                        </div>
                                        <button class="add_to_cart_button" type="submit">Add to cart</button>
                                    </form>   
                                    
                                    <div class="product-inner-category">
                                        <p>Category: <a href="">Summer</a>. Tags: <a href="">awesome</a>, <a href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>. </p>
                                    </div> 
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Product Description</h2>  
                                                <p>The customer is very important, the customer will be followed by the customer. For the sad, diam in the consecutio aculis, is pure jaculis mauris, an easy investment before the ligula but none. Every weekend there is no smile, that's the biggest of the trucks. Smartphones There is no better way to get to that base. Each of the great bows, flatters which of the smart vehicles, feugia pregnant diam. Not even a dirty trick. Someone flatters the player, and the members of the fans. Some people need a lot of people. In a variety of ways, you should always drink a pill and drink.</p>

                                                <p>Mauris invests the life of the pregnant cartoon. Mauris in fringilla ex. There is nothing easy. Even the chocolate chips that are easy to use. In the case of the pulvinar, it will not be pursued. Now some pregnant pure, I did not expect the salad layer on. Free membership or membership.
                                                </p>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <h2>Reviews</h2>
                                                <div class="submit-review">
                                                    <p><label for="name">Name</label> <input name="name" type="text"></p>
                                                    <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                    <div class="rating-chooser">
                                                        <p>Your rating</p>

                                                        <div class="rating-wrap-post">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p><label for="review">Your review</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                    <p><input type="submit" value="Submit"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        
                        
<!--                         <div class="related-products-wrapper"> -->
<!--                             <h2 class="related-products-title">Related Products</h2> -->
<!--                             <div class="related-products-carousel"> -->
<!--                                 <div class="single-product"> -->
<!--                                     <div class="product-f-image"> -->
<!--                                         <img src="img/product-1.jpg" alt=""> -->
<!--                                         <div class="product-hover"> -->
<!--                                             <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a> -->
<!--                                             <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a> -->
<!--                                         </div> -->
<!--                                     </div> -->

<!--                                     <h2><a href="">Sony Smart TV - 2015</a></h2> -->

<!--                                     <div class="product-carousel-price"> -->
<!--                                         <ins>$700.00</ins> <del>$100.00</del> -->
<!--                                     </div>  -->
<!--                                 </div> -->
<!--                                 <div class="single-product"> -->
<!--                                     <div class="product-f-image"> -->
<!--                                         <img src="img/product-2.jpg" alt=""> -->
<!--                                         <div class="product-hover"> -->
<!--                                             <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a> -->
<!--                                             <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a> -->
<!--                                         </div> -->
<!--                                     </div> -->

<!--                                     <h2><a href="">Apple new mac book 2015 March :P</a></h2> -->
<!--                                     <div class="product-carousel-price"> -->
<!--                                         <ins>$899.00</ins> <del>$999.00</del> -->
<!--                                     </div>  -->
<!--                                 </div> -->
<!--                                 <div class="single-product"> -->
<!--                                     <div class="product-f-image"> -->
<!--                                         <img src="img/product-3.jpg" alt=""> -->
<!--                                         <div class="product-hover"> -->
<!--                                             <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a> -->
<!--                                             <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a> -->
<!--                                         </div> -->
<!--                                     </div> -->

<!--                                     <h2><a href="">Apple new i phone 6</a></h2> -->

<!--                                     <div class="product-carousel-price"> -->
<!--                                         <ins>$400.00</ins> <del>$425.00</del> -->
<!--                                     </div>                                  -->
<!--                                 </div> -->
<!--                                 <div class="single-product"> -->
<!--                                     <div class="product-f-image"> -->
<!--                                         <img src="img/product-4.jpg" alt=""> -->
<!--                                         <div class="product-hover"> -->
<!--                                             <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a> -->
<!--                                             <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a> -->
<!--                                         </div> -->
<!--                                     </div> -->

<!--                                     <h2><a href="">Sony playstation microsoft</a></h2> -->

<!--                                     <div class="product-carousel-price"> -->
<!--                                         <ins>$200.00</ins> <del>$225.00</del> -->
<!--                                     </div>                             -->
<!--                                 </div> -->
<!--                                 <div class="single-product"> -->
<!--                                     <div class="product-f-image"> -->
<!--                                         <img src="img/product-5.jpg" alt=""> -->
<!--                                         <div class="product-hover"> -->
<!--                                             <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a> -->
<!--                                             <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a> -->
<!--                                         </div> -->
<!--                                     </div> -->

<!--                                     <h2><a href="">Sony Smart Air Condtion</a></h2> -->

<!--                                     <div class="product-carousel-price"> -->
<!--                                         <ins>$1200.00</ins> <del>$1355.00</del> -->
<!--                                     </div>                                  -->
<!--                                 </div> -->
<!--                                 <div class="single-product"> -->
<!--                                     <div class="product-f-image"> -->
<!--                                         <img src="img/product-6.jpg" alt=""> -->
<!--                                         <div class="product-hover"> -->
<!--                                             <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a> -->
<!--                                             <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a> -->
<!--                                         </div> -->
<!--                                     </div> -->

<!--                                     <h2><a href="">Samsung gallaxy note 4</a></h2> -->

<!--                                     <div class="product-carousel-price"> -->
<!--                                         <ins>$400.00</ins> -->
<!--                                     </div>                             -->
<!--                                 </div>                                     -->
<!--                             </div> -->
<!--                         </div> -->
                    </div>                    
                </div>
            </div>
        </div>
    </div>

</body>
</html>