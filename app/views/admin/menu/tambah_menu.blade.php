{{ HTML::style('../css/cloud-admin.css') }}
{{ HTML::style('../css/themes/default.css', array('id' => 'skin-switcher')) }}
{{ HTML::style('../css/responsive.css') }}
{{ HTML::style('http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700') }}
<div class="row">
	<div class="col-md-12">
		<div class="box border inverse">
			<div class="box-title">
				<h4><i class="fa fa-bars"></i>Form controls</h4>
			</div>
				<div class="box-body big">
					<h3 class="form-title">Supported controls</h3>
						<form class="form-horizontal" role="form">
						  <div class="form-group">
							<label class="col-sm-3 control-label">Inputs</label>
								<div class="col-sm-9">
								  <input type="text" class="form-control" placeholder="Text input">
								</div>
							</div>					 
						</form>
				</div>
		</div>
	</div>
</div>
{{ HTML::script('../js/script.js') }}