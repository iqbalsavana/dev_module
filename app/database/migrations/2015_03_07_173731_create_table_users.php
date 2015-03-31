<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableUsers extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Route::get('users', function(){
			Schema::create('users', function($table){
				$table->increments('id');
				$table->string('username', 32);
				$table->string('email', 225);
				$table->string('password', 60);
				$table->timestamps();
			});
			return "table user telah dibuat";
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		//
	}

}
