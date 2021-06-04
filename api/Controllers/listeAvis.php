<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

header("Access-Control-Allow-Origin: *");
require_once '../connexion.php';
require_once "../Classes/class.Avis.php";

$pdo = new PDO(
    'mysql:host=localhost;dbname=bddzerules',
    'root',
    'root'
);

$sql = "SELECT * FROM avis ORDER BY ID_Utilisateur";
$requete=$pdo ->prepare($sql);
$liste =array();
if($requete->execute()){
    while ($donnees=$requete->fetch()){
        $avis = new Avis(
            $donnees['ID_Utilisateur'],
            $donnees['ID_REGLE_Alternative'],
            $donnees['Commentaire'],
            $donnees['Note']
        );
        $liste[]=$avis;
    }

}
echo json_encode($liste);
exit();

?>