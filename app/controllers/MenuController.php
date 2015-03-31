<?php
require_once('public/function/function.menu.php');
class MenuController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function read($codeModul, $codeMenu, $codeSubMenu)
	{
		
		$menu 	= menu($codeModul);						
		$toMenu = toMenu($codeSubMenu);
		
		$viewList 	= DB::table('menu')
								->get();
		
		
		return View::make(''.$toMenu->directory.'.'.$toMenu->file_nama.'', 
						compact('codeModul', 
								'codeMenu', 
								'codeSubMenu', 
								'menu',
								'viewList'
								));
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return View::make('admin.menu.tambah_menu');
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
