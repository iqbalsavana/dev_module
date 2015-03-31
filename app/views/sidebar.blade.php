				<?PHP
					if (isset($codeMenu) && isset($codeSubMenu)){
						$getMenu 	= $codeMenu;
						$getSubMenu = $codeSubMenu;
					}else{
						$getMenu 	= '';
						$getSubMenu = '';
					}
					
				?>
				<!-- SIDEBAR -->
				<div id="sidebar" class="sidebar">
					<div class="sidebar-menu nav-collapse">
						<div class="divide-20"></div>
						
						<!-- SIDEBAR MENU -->
						<ul>
							<li>
								<a href="javascript:;" onclick="location.href='/dept/adm'" >
									<i class="fa fa-tachometer fa-fw"></i> <span class="menu-text">Dashboard</span>
								</a>					
							</li>
							<?PHP
								foreach($menu as $menus){
							?>
								<li class="has-sub <?PHP echo $getMenu == $menus->menu_kode?'in active':''?>">
									<a href="javascript:;" class="">
									<i class="{{ $menus->menu_icon }}"></i> <span class="menu-text">{{ $menus->menu_nama }}</span>
									<span class="arrow"></span>
									</a>
									<ul class="sub">
									<?PHP
									$submenu 	= DB::table('user_menu_detail AS a')
												->join('sub_menu AS b', 'a.sub_menu_id', '=', 'b.sub_menu_id')
												->select('b.sub_menu_kode', 'b.sub_menu_nama')
												->where('a.user_menu_id', '=', $menus->user_menu_id)->get();
									foreach($submenu as $submenus){
									?>
									
										<li class="<?PHP echo $getSubMenu == $submenus->sub_menu_kode?'current':''?>"><a class="" href="javascript:;" onclick="location.href='/dept/{{ $menus->mod_dept_kode }}/{{ $menus->menu_kode }}/{{ $submenus->sub_menu_kode }}/view-{{ $submenus->sub_menu_kode }}'"><span class="sub-menu-text">{{ $submenus->sub_menu_nama }}</span></a></li>
									
									<?PHP
									}
									?>
									</ul>
								</li>
							<?PHP
								}
							?>
							
							
						</ul>
						<!-- /SIDEBAR MENU -->
					</div>
				</div>
				<!-- /SIDEBAR -->