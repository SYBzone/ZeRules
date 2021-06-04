<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

header("Access-Control-Allow-Origin: *");
require_once '../connexion.php';
require_once "../Classes/class.Filtre.php";

$pdo = new PDO(
    'mysql:host=localhost;dbname=bddzerules',
    'root',
    'root'
);

$sql = "SELECT * FROM filtre ORDER BY Nb_joueurs";
$requete=$pdo ->prepare($sql);
$liste =array();
if($requete->execute()){
    while ($donnees=$requete->fetch()){
        $filtre = new filtre(
            $donnees['Nb_joueurs'],
            $donnees['Materiel'],
            $donnees['Duree']
        );
        $liste[]=$filtre;
    }

}
echo json_encode($liste);
exit();

?>