<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>Login Aplikasi</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	{{ HTML::style('css/cloud-admin.css') }}
	{{ HTML::style('font-awesome/css/font-awesome.min.css') }}
	{{ HTML::style('js/bootstrap-daterangepicker/daterangepicker-bs3.css') }}
	{{ HTML::style('js/uniform/css/uniform.default.min.css') }}
	{{ HTML::style('css/animatecss/animate.min.css') }}
	{{ HTML::style('http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700') }}
</head>
<body class="login">	
	<!-- PAGE -->
	<section id="page">
			<!-- LOGIN -->
			<section id="login" class="visible">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="login-box-plain">
								<div class="row">
									<div class="col-md-4" style="width: 295px;">
										<div id="logo">
											<a href="//localhost:8000"><img src="img/logo/logo-alt.png" height="40" alt="logo name" /></a>
										</div>
									</div>
								</div>
								@if(Session::has('pesan_error'))
												<div class="alert alert-danger">{{ Session::get('pesan_error') }}</div>
											@endif
								<div class="divide-40"></div>
								{{Form::open(array('action' => 'LoginController@postLogin')) }}
								  <div class="form-group">
									<label for="exampleInputEmail1">Nama Pengguna</label>
									<i class="fa fa-user"></i>
									<input type="text" name="username" class="form-control" id="exampleInputEmail1" >
								  </div>
								  <div class="form-group"> 
									<label for="exampleInputPassword1">Kata Sandi</label>
									<i class="fa fa-lock"></i>
									<input type="password" name="password" class="form-control" id="exampleInputPassword1" >
								  </div>
								  <div class="form-actions">
									<label class="checkbox"> <input type="checkbox" class="uniform" value=""> Seingat Saya</label>
									<button type="submit" class="btn btn-danger">Masuk</button>
								  </div>
								{{Form::close() }}
								<div class="login-helpers">
									<a href="javascript:;" style="text-decoration: none" onclick="swapScreen('forgot');return false;">Lupa Kata Sandi?</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--/LOGIN -->
			
			<!-- FORGOT PASSWORD -->
			<section id="forgot">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="login-box-plain">
								<h2 class="bigintro">Atur Ulang Sandi</h2>
								<div class="divide-40"></div>
								<form role="form">
								  <div class="form-group">
									<label for="exampleInputEmail1">Masukan Email</label>
									<i class="fa fa-envelope"></i>
									<input type="email" class="form-control" id="exampleInputEmail1" >
								  </div>
								  <div class="form-actions">
									<button type="submit" class="btn btn-info">kirim saya email verifikasi</button>
								  </div>
								</form>
								<div class="login-helpers">
									<a href="javascript:;" style="text-decoration: none" onclick="swapScreen('login');return false;">Kembali ke Login</a> <br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- FORGOT PASSWORD -->
	</section>
	{{ HTML::script('js/jquery/jquery-2.0.3.min.js') }}
	{{ HTML::script('js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js') }}
	{{ HTML::script('bootstrap-dist/js/bootstrap.min.js') }}
	{{ HTML::script('js/uniform/jquery.uniform.min.js') }}
	{{ HTML::script('js/script.js') }}
	<script>
		jQuery(document).ready(function() {		
			App.setPage("login");  //Set current page
			App.init(); //Initialise plugins and elements
		});
	</script>
	<script type="text/javascript">
		function swapScreen(id) {
			jQuery('.visible').removeClass('visible animated fadeInUp');
			jQuery('#'+id).addClass('visible animated fadeInUp');
		}
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>