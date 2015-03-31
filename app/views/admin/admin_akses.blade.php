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
										<li>Informasi Hak Akses</li>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">Informasi Hak Akses</h3>
									</div>
									<div class="description">Halaman Ini berisi informasi hak akses untuk lavel pengguna</div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						
						<!-- BODY PAGE -->
						
						<div class="row">
							<div class="col-sm-12">
							<div class="box border blue">
									<div class="box-title">
										<h4><i class="fa fa-table"></i>Daftar Hak Akses</h4>
									</div>
									<div class="box-body">
										<table class="table table-bordered">
											<thead>
											  <tr>
												<th>#</th>
												<th width="20%">Lavel</th>
												<th>Informasi Hak Akses</th>
											  </tr>
											</thead>
											<tbody>
											<?PHP
												$i=0;
												foreach($viewList as $viewLists){
												$i++;
											?>
											  <tr>
												<td>{{ $i }}.</td>
												<td>{{ $viewLists->level_nama }}</td>
												<td>{{ $viewLists->level_deskripsi }}</tr>
											<?PHP
												}
											?>
											</tbody>
										  </table>
									</div>
								</div>
							</div>
						</div>
						
						<!-- /BODY PAGE -->
						
						@stop