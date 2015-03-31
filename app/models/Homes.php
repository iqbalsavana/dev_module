<?php

use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class Homes extends Eloquent implements UserInterface, RemindableInterface {

	use UserTrait, RemindableTrait;
	
	protected $table = 'modul';
	
	protected $fillable = ['mod_dept_kode', 'mod_dept_nama', 'mod_nama'];
	
}
