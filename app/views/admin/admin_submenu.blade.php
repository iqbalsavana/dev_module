						@extends('layouts')
						@section('main')
						<!-- PAGE HEADER-->
						<div class="row">
							<div class="col-sm-12">
								<div class="page-header">
									<!-- STYLER -->
									
									<!-- /STYLER -->
									<!-- BREADCRUMBS -->
									<ul class="breadcrumb">
										<li>
											<i class="fa fa-home"></i>
											<a href="/home">Menu Utama</a>
										</li>
										<li>Menu</li>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">Menu</h3>
									</div>
									<div class="description">Halaman Ini untuk pengaturan menu diantaranya penambahan, penghapusan dan perubahan nama menu</div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						
						<!-- BODY PAGE -->
						
						<div class="row">
							<div class="col-sm-12">
							<div class="box border blue">
									<div class="box-title">
										<h4><i class="fa fa-table"></i>Daftar Menu Utama</h4>
									</div>
									<div class="box-body">
										<table cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover" id="datatable1">
											<thead>
											  <tr>
												<th>#</th>
												<th width="20%">Nama Menu</th>
												<th width="40%">Informasi Menu</th>
												<th width="15%">Option</th>
												<th width="45%">Posisi Menu</th>
											  </tr>
											</thead>
											<tbody>
											  <tr>
												<td>1.</td>
												<td>Prosedur Aplikasi</td>
												<td>Menu ini untuk informasi hak akses</td>
												<td align="center">
												<a href="javascript:;" class="btn btn-success"><span class="fa fa-pencil"></span></a>
												<a href="javascript:;" class="btn btn-warning"><span class="fa fa-times"></span></a>
												</td>
												<td align="center">
												<a href="javascript:;" class="btn btn-primary"><span class="fa fa-arrow-circle-left"></span> Ke Atas</a> 
												<a href="javascript:;" class="btn btn-primary">Ke Bawah <span class="fa fa-arrow-circle-right"></span></a></td>
											  </tr>
											   <tr>
												<td>2.</td>
												<td>Modul Aplikasi</td>
												<td>Menu ini untuk pengaturan menu utama aplikasi</td>
												<td align="center">
												<a href="javascript:;" class="btn btn-success"><span class="fa fa-pencil"></span></a>
												<a href="javascript:;" class="btn btn-warning"><span class="fa fa-times"></span></a>
												</td>
												<td align="center">
												<a href="javascript:;" class="btn btn-primary"><span class="fa fa-arrow-circle-left"></span> Ke Atas</a> 
												<a href="javascript:;" class="btn btn-primary">Ke Bawah <span class="fa fa-arrow-circle-right"></span></a></td>
											  </tr>
											   
											</tbody>
										  </table>
									</div>
								</div>
							</div>
						</div>
						
						<!-- /BODY PAGE -->
						
						@stop