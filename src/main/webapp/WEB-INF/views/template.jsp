<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Star Admin Free Bootstrap Admin Dashboard Template</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.png" />
</head>

<body>
	<div class="container-scroller">

		<tiles:insertAttribute name="header"></tiles:insertAttribute>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">

			<tiles:insertAttribute name="menu"></tiles:insertAttribute>
			<!-- content-wrapper ends -->
			<tiles:insertAttribute name="body"></tiles:insertAttribute>

		</div>
		<!-- main-panel ends -->
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>
	<!-- page-body-wrapper ends -->
	 
	<!-- container-scroller -->
	
	<!-- plugins:js -->
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor.bundle.base.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script
		src="${pageContext.request.contextPath}/resources/js/off-canvas.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script
		src="${pageContext.request.contextPath}/resources/js/dashboard.js"></script>
	<!-- End custom js for this page-->
</body>

</html>