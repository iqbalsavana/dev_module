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
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
	<style>
		.clock{
			width: 300px;
			font-size: 50px;
		}
		.day{
			width: 294px;
			font-size: 15px;
		}
	</style>
</head>
<body>	
	<?PHP
		$today		= date("d M Y");
		$day		= date("N");
		if($day == 1){$showday = 'Senin';}elseif($day == 2){$showday = 'Selasa';}elseif($day == 3){$showday = 'Rabu';}elseif($day == 4){$showday = 'Kamis';}elseif($day == 5){$showday = 'Jumat';}elseif($day == 6){$showday = 'Sabtu';}elseif($day == 7){$showday = 'Minggu';}
		
		
	?>
	
	<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
						<!-- PAGE HEADER-->
						<div class="row">
							<div class="col-sm-12">
								<div class="page-header" style="height: 261px;">
									<div class="col-sm-5">
										<div class="clearfix">
											<h3 class="content-title pull-left">MODUL DEPARTEMENT </h3>
										</div>
										<div class="description">Menu yang tersedia untuk beberapa departement</div>
									</div>
									<div class="col-sm-4"><br>
										<div class="day" style="margin-left: 68px;"><?PHP echo $showday.',' .$today?></div>
										<div class="clock">
											<div id="showtime"></div>
										</div>
									</div>
									<div class="col-sm-3" style="top: 10px;">
										<a href="javascript:;" onclick="location.href='/about'" style="text-decoration: none">About Application</a>
									</div>
								</div>
							</div>
							
						</div>
						<!-- /PAGE HEADER -->
						@if ($homeList->count())
							@foreach ($homeList as $homes)
							<div class="row">
								<div class="col-sm-12">
									<div class="col-md-2">
										<label>{{ $homes->mod_dept_nama }}</label>
									</div>
									<div class="col-md-2">
										<a class="btn btn-primary btn-icon input-block-level" href="javascript:;" onclick="location.href='/dept/{{ $homes->mod_dept_kode }}'">
											<i class="fa fa-user"></i>
											<div>{{ $homes->mod_nama }}</div>
										</a>
									</div>
								</div>
							</div>
							@endforeach
						@else
						There are no books
						@endif
					</div>
				</div>
			</div>
	<!-- /JAVASCRIPTS -->
	{{ HTML::script('js/jquery/jquery-2.0.3.min.js') }}
	<script>
	
  var myVar=setInterval(function(){myTimer()},1000);

	function myTimer() {
		var d = new Date();
		document.getElementById("showtime").innerHTML = d.toLocaleTimeString();
	}
</script>
</body>
</html>