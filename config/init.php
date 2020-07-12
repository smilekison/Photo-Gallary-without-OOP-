<?php 
	$config['base_url']='http://localhost/checkpoint1/';

	//Database
	$db['hostname'] = 'localhost';
	$db['username'] = 'root';
	$db['password'] = '';
	$db['database'] = 'checkpoint1';
	$db['dbdriver'] = 'mysqli';


	function __autoload($class_name){
		require_once 'includes/classes/'.$class_name.'.php';
	}
?>