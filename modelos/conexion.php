<?php

/*class Conexion{

	static public function conectar(){

		$link = new PDO("mysql:host=69.46.6.238:3306;dbname=tcsogt_repuestosdesiree",
			            "tcsogt_nsanchez",
			            "tcsogt123*");

		$link->exec("set names utf8");

		return $link;

	}*/

class Conexion{

	static public function conectar(){

		$link = new PDO("mysql:host=localhost;dbname=elobrero",
			            "root",
			            "");

		$link->exec("set names utf8");

		return $link;

	}

}