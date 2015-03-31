<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>.:: Aplikasi .. ::.</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	{{ HTML::style('../css/cloud-admin.css') }}
	{{ HTML::style('../css/themes/default.css') }}
	{{ HTML::style('../css/responsive.css') }}
	{{ HTML::style('../font-awesome/css/font-awesome.min.css') }}
	{{ HTML::style('../js/bootstrap-daterangepicker/daterangepicker-bs3.css') }}
	{{ HTML::style('../js/datatables/media/css/jquery.dataTables.min.css') }}
	{{ HTML::style('../js/datatables/media/assets/css/datatables.min.css') }}
	{{ HTML::style('../js/datatables/extras/TableTools/media/css/TableTools.min.css') }}
	{{ HTML::style('../plugins/fancybox/source/jquery.fancybox.css?v=2.1.5') }}
	<!-- FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
</head>
<body>
	@include('header')
	<!-- PAGE -->
	<section id="page">
		@include('sidebar')
		<div id="main-content">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
						@yield('main')
					</div>
				</div>
			</div>
		</div>
	</section>
	{{ HTML::script('../js/jquery/jquery-2.0.3.min.js') }}
	{{ HTML::script('../js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js') }}
	{{ HTML::script('../bootstrap-dist/js/bootstrap.min.js') }}
	{{ HTML::script('../js/bootstrap-daterangepicker/moment.min.js') }}
	{{ HTML::script('../js/bootstrap-daterangepicker/daterangepicker.min.js') }}
	{{ HTML::script('../js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js') }}
	{{ HTML::script('../js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js') }}
	{{ HTML::script('../js/datatables/media/js/jquery.dataTables.min.js') }}
	{{ HTML::script('../js/datatables/media/assets/js/datatables.min.js') }}
	{{ HTML::script('../js/datatables/extras/TableTools/media/js/TableTools.min.js') }}
	{{ HTML::script('../js/datatables/extras/TableTools/media/js/ZeroClipboard.min.js') }}
	{{ HTML::script('../js/jQuery-Cookie/jquery.cookie.min.js') }}
	{{ HTML::script('../plugins/fancybox/source/jquery.fancybox.js?v=2.1.5') }}
	{{ HTML::script('../js/script.js') }}
	{{ HTML::script('../js/custom.js') }}
	<!-- /JAVASCRIPTS -->
</body>
</html>