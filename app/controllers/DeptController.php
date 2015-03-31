<?php
require_once('public/function/function.menu.php');
class DeptController extends \BaseController {

	//function authentication menu
	public function index($codeModul)
	{
		$menu 	= menu($codeModul);	
		if($codeModul == 'adm'){
			return View::make('admin.admin_dashboard', compact('codeModul', 'codeMenu', 'codeSubMenu', 'menu'));
		}else{
			return View::make('admin.admin_dashboard', compact('codeModul', 'codeMenu', 'codeSubMenu', 'menu'));
		}
		
	}

	//function untuk masuk ke menu berdasarkan hak akses
	public function modules($codeModul, $codeMenu, $codeSubMenu)
	{
		$menu 	= menu($codeModul);						
		$toMenu = toMenu($codeSubMenu);
		return View::make(''.$toMenu->directory.'.'.$toMenu->file_nama.'', compact('codeModul', 'codeMenu', 'codeSubMenu', 'menu'));
	}
}
