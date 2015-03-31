<?php
class UsersTableSeeder extends Seeder {
	public function run()
	{
		DB::table('users')->delete();
		
		Users::create(array(
			'username'	=> 'Admin',
			'password'	=> 'iqbal',
			'password_encrypt'	=> Hash::make('iqbal'),
			'email'	=> 'iqbal@cifo.co.id',
			'phone'	=> '089602823846',
			'created_at' => new DateTime,
			'updated_at' => new DateTime
		));
		
	}
}