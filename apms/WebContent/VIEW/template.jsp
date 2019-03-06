<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
	<!-- 메타태그 설정 -->
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
<title>apms</title>
	<!-- 폰트 및 아이콘 설정 -->
	<!-- https://fontawesome.com/icons?d=gallery -->
	<link href="${path}/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- CSS Style 설정 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<link rel="stylesheet" href="${path}/bootstrap/css/sb-admin-2.min.css" >
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<!-- CSS Style은 순서대로 적용되기 때문에 Custom CSS는 여기 하단으로 추가해주세요. -->
	<link rel="stylesheet" href="${path}/CSS/custom.css" >
<style type="text/css">
	
</style>
<!-- bootstrap에서 사용한 jquery -->
<script src="${path}/bootstrap/vendor/jquery/jquery.min.js" type="text/javascript"></script>
<!-- jquery ui -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- bpopup js(http://dinbror.dk/bpopup/) -->
<script src="${path}/JS/bpopup/jquery.bpopup.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready( function(){

	});

</script>
</head>
<body>
	
	
	
	<!-- Script 설정(jquery) -->
	<script src="${path}/bootstrap/js/sb-admin-2.min.js" type="text/javascript"></script>
	
	<!-- Script 설정(bootstrap) -->
	<script src="${path}/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
	
	<!-- Core plugin JavaScript-->
    <script src="${path}/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>
	
	<!-- Page level plugins -->
  	<script src="${path}/bootstrap/vendor/chart.js/Chart.min.js"></script>

  	<!-- Page level custom scripts -->
  	<script src="${path}/bootstrap/js/demo/chart-area-demo.js"></script>
  	<script src="${path}/bootstrap/js/demo/chart-pie-demo.js"></script>
</body>
</html>