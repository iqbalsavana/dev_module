<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/
Route::get('/logout', function(){
		# Hapus session dan cookies admin
		Auth::logout();
		# Arahkan ke route 'index'.
		return Redirect::to('/');
});
Route::resource('/', 'LoginController');
Route::post('/auth', 'LoginController@postLogin');

Route::get('/home', 'HomeController@getHome')->before('auth');
Route::get('/about', 'HomeController@about')->before('auth');

//------------------------------- ADMIN AREA -----------------------------------------------------------------------------
//Routes Module
Route::group(array('before' => 'auth'), function()
{
    Route::get('/dept/{codeModul}', 'DeptController@index');
	Route::get('/dept/{codeModul}/{codeMenu}/{codeSubMenu}', 'DeptController@modules');
});

//Rutes Crud Akses
Route::group(array('before' => 'auth'), function()
{
	//---------------------------- HEAD -------------------------------------------------------------------------------------------
	//READ
	Route::get('/dept/{codeModul}/{codeMenu}/{codeSubMenu}/view-akses', 'AksesController@read');
	//-----------------------------------------------------------------------------------------------------------------------------
});

//Rutes Crud Akses
Route::group(array('before' => 'auth'), function()
{
	//---------------------------- HEAD -------------------------------------------------------------------------------------------
	//CREATE NEW
	Route::get('/dept/{codeModul}/{codeMenu}/{codeSubMenu}/new-menu', 'MenuController@create');
	//READ
	Route::get('/dept/{codeModul}/{codeMenu}/{codeSubMenu}/view-menu', 'MenuController@read');
	//UPDATE
	Route::get('/dept/{codeModul}/{codeMenu}/{codeSubMenu}/modify-menu/{id}', 'MenuController@update');
	//DELETE
	Route::get('/dept/{codeModul}/{codeMenu}/{codeSubMenu}/del-menu/{id}', 'MenuController@destroy');
	//-----------------------------------------------------------------------------------------------------------------------------
});

//------------------------------------------------------------------------------------------------------------------------