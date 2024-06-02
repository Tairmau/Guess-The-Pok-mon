<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once("util/class.PDO.HTAuto.inc.php");

$pdo = PdoPokemon::getPdoPokemon();

if(!isset($_REQUEST['uc'])){
	$uc = 'accueil';
}
else{
	$uc = $_REQUEST['uc'];
}


switch($uc)
{
	case 'accueil':
		{
			include('vues/v_home.php');
			break;
		}
}

?>
