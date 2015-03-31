<?php

class HomeController extends BaseController {

	/*
	|--------------------------------------------------------------------------
	| Default Home Controller
	|--------------------------------------------------------------------------
	|
	| You may wish to use controllers instead of, or in addition to, Closure
	| based routes. That's great! Here is an example controller method to
	| get you started. To route to this controller, just add the route:
	|
	|	Route::get('/', 'HomeController@showWelcome');
	|
	*/

	public function getHome()
	{
		$mod_dept_id = Auth::user()->mod_dept_id;
		if ($mod_dept_id == 1){
			$keyWhere = '>=';
		}else{
			$keyWhere = '=';
		}
		$homeList 		= Homes::select('mod_dept_kode', 'mod_dept_nama', 'mod_nama')
							->where('mod_dept_id', $keyWhere, $mod_dept_id)
							->get();
		return View::make('home.home', compact('homeList'));
	}
	
	public function getOut()
	{
		
	}
	
	public function about()
	{
		return View::make('home.about');
	}

}
