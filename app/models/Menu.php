<?php

use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class Menu extends Eloquent implements UserInterface, RemindableInterface {

	use UserTrait, RemindableTrait;
	
	protected $table = 'user_menu';
	
	public function submenu(){
		return $this->hasMany('Submenu');
	}
	
}
