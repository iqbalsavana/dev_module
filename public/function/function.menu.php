<?PHP
function menu($codeModul)
	{
		$menu 	= DB::table('user_menu AS a')
								->join('menu AS b', 'a.menu_id', '=', 'b.menu_id')
								->join('modul AS c', 'b.mod_dept_id', '=', 'c.mod_dept_id')
								->select('a.user_menu_id', 'c.mod_dept_kode', 'b.menu_kode', 'b.menu_nama', 'b.menu_icon')
								->where('c.mod_dept_kode', '=', $codeModul)
								->get();
								
		return $menu;
	}
	
function toMenu($codeSubMenu)
	{
		$toMenu = DB::table('sub_menu AS a')
					->join('menu AS b', 'a.menu_id', '=', 'b.menu_id')
					->select('b.directory', 'a.file_nama')
					->where('a.sub_menu_kode', '=', $codeSubMenu)
					->first();
		return $toMenu;
	}