<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.myproject.Util.SecurityUtils" %>
<div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li><a href="#"><i class="fa fa-user"></i> Tài khoản</a></li>
                            <li><a href="<c:url value='/gio-hang'/>"><i class="fa fa-user"></i> Giỏ hàng</a></li>
                            <li><a href="<c:url value='/dat-hang'/>"><i class="fa fa-user"></i> Thanh toán</a></li>
                            <security:authorize access = "isAnonymous()">
								<li><a href="<c:url value='/dang-nhap'/>"><i class="fa fa-user"></i> Đăng nhập</a></li>
							</security:authorize>
							<security:authorize access = "isAuthenticated()">
								<li class="nav-item"><a class="nav-link" href="#">Wellcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
								<li class="nav-item"><a class="nav-link" href="<c:url value='/thoat'/>">Thoát</a></li>
							</security:authorize>
                        </ul>
                    </div>
                </div>
                <!--  
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">currency :</span><span class="value">USD </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">GBP</a></li>
                                </ul>
                            </li>

                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">language :</span><span class="value">English </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">English</a></li>
                                    <li><a href="#">French</a></li>
                                    <li><a href="#">German</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                -->
            </div>
        </div>
    </div>