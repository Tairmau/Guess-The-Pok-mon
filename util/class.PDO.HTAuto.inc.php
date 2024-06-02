<?php

class PdoPokemon
{   		
      	private static $serveur='mysql:host=localhost';
      	private static $bdd='dbname=pokedex';   		
      	private static $user='root' ;    		
      	private static $mdp='' ;
		
		private static $monPdo;
		private static $monPdoPokemon = null;

/**
 * Constructeur privé, crée l'instance de PDO qui sera sollicitée
 * pour toutes les méthodes de la classe
 */				
	private function __construct()
	{
    		PdoPokemon::$monPdo = new PDO(PdoPokemon::$serveur.';'.PdoPokemon::$bdd, PdoPokemon::$user, PdoPokemon::$mdp); 
			PdoPokemon::$monPdo->query("SET CHARACTER SET utf8");
	}

	public function _destruct(){
		PdoPokemon::$monPdo = null;
	}

	public  static function getPdoPokemon()
	{
		if(PdoPokemon::$monPdoPokemon == null)
		{
			PdoPokemon::$monPdoPokemon=new PdoPokemon();
		}
		return PdoPokemon::$monPdoPokemon;  
	}

	// Selection des images des pokémon random
	public function getImages()
	{
		$req = "SELECT nom_pok,image FROM pokemon ORDER BY RAND() LIMIT 1";

		$res = PdoPokemon::$monPdo->prepare($req);

		$res->execute(); // Exécute la requête

		$laLigne = $res->fetchAll();
		return $laLigne;
	}

}
?>
