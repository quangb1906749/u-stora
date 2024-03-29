<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title><dec:title default="Ustora" /></title>

<!-- Google Fonts -->
<link
	href="<c:url value="http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600"/>"
	rel='stylesheet' type='text/css'>
<link
	href="<c:url value="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300"/>"
	rel='stylesheet' type='text/css'>
<link
	href="<c:url value="http://fonts.googleapis.com/css?family=Raleway:400,100"/>"
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="<c:url value="/template/web/css/bootstrap.min.css"/>">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value="/template/web/css/font-awesome.min.css"/>">

<!-- Custom CSS -->
<link rel="stylesheet"
	href="<c:url value="/template/web/css/owl.carousel.css"/>">
<link rel="stylesheet" href="<c:url value="/template/web/style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/template/web/css/responsive.css"/>">

<!-- <link rel="stylesheet" -->
<%-- 	href="<c:url value="/template/admin/assets/css/bootstrap.min.css"/>" /> --%>
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- <script type='text/javascript' -->
<%-- 	src='<c:url value="/template/admin/js/jquery-2.2.3.min.js" />'></script> --%>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->

<link rel="stylesheet" href="<c:url value='/template/admin/assets/css/bootstrap.min.css' />" />
<link rel="stylesheet" href="<c:url value='/template/admin/font-awesome/4.5.0/css/font-awesome.min.css' />" />
<link rel="stylesheet" href="<c:url value='/template/admin/assets/css/ace.min.css' />" class="ace-main-stylesheet" id="main-ace-style" />
<script src="<c:url value='/template/admin/assets/js/ace-extra.min.js' />"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type='text/javascript' src='<c:url value="/template/admin/js/jquery-2.2.3.min.js" />'></script>
<script src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js' />"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- sweetalert -->
<script src="<c:url value='/template/admin/sweetalert/sweetalert2.min.js' />"></script>
<link rel="stylesheet" href="<c:url value='/template/admin/sweetalert/sweetalert2.min.css' />" />

<dec:head></dec:head>
  <head>
  	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><dec:title default="Ustora"/></title>
    <link rel="icon" type="image/x-icon" href="<c:url value="/template/web/img/favicon.ico"/>">
    
    <!-- Google Fonts -->
    <link href="<c:url value="http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600"/>" rel='stylesheet' type='text/css'>
    <link href="<c:url value="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300"/>" rel='stylesheet' type='text/css'>
    <link href="<c:url value="http://fonts.googleapis.com/css?family=Raleway:400,100"/>" rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<c:url value="/template/web/css/bootstrap.min.css"/>">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<c:url value="/template/web/css/font-awesome.min.css"/>">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/template/web/css/owl.carousel.css"/>">
    <link rel="stylesheet" href="<c:url value="/template/web/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/template/web/css/responsive.css"/>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <dec:head></dec:head>
    <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/bootstrap.min.css' />" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="<c:url value='/template/admin/paging/jquery.twbsPagination.js' />"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
    <script src="<c:url value='/template/admin/assets/js/bootstrap.min.js' />"></script>

</head>
<body>

	<%@ include file="/common/web/header.jsp"%>
	<!-- End header area -->

	<!-- Site Branding Area -->
	<%@ include file="/common/web/SiteBrandingArea.jsp"%>

	<!-- mainmenu-area -->
<%--     <%@ include file="/common/web/MainMenu.jsp" %> --%>
    
    <dec:body/>
    
<!--     Footer -->
	<%@ include file="/common/web/footer.jsp" %>
   
<!--     Latest jQuery form server -->
<%--     <script src="<c:url value="https://code.jquery.com/jquery.min.js"/>"></script> --%>
    
<!--     Bootstrap JS form CDN -->
    <script src="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"/>"></script>
    
<!--     jQuery sticky menu -->
    <script src="<c:url value="/template/web/js/owl.carousel.min.js"/>"></script>
    <script src="<c:url value="/template/web/js/jquery.sticky.js"/>"></script>
    
<!--     jQuery easing -->
    <script src="<c:url value="/template/web/js/jquery.easing.1.3.min.js"/>"></script>
    
<!--     Main Script -->
    <script src="<c:url value="/template/web/js/main.js"/>"></script>
    
<!--     Slider -->
    <script type="text/javascript" src="<c:url value="/template/web/js/bxslider.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/template/web/js/script.slider.js"/>"></script>
	<dec:getProperty property="page.script"></dec:getProperty>
</body>
</html>