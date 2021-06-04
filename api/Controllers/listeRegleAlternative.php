<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

header("Access-Control-Allow-Origin: *");

require_once "../Classes/class.Reglealternative.php";

$pdo = new PDO(
    'mysql:host=localhost;dbname=bddzerules',
    'root',
    'root'
);

$id = $_GET['id'];
$sql = "SELECT * FROM regle_alternative WHERE regle_alternative.ID_Jeux = :id";
$requete = $pdo->prepare($sql);
$liste = array();
if ($requete->execute(
    array(
        "id" => $_GET['id']
    )
))
    while ($donnees = $requete->fetch()) {
        $regle_alternative = new RegleAlternative(
            $donnees['ID_Regle_Alternative'],
            $donnees['ID_Jeux'],
            $donnees['ID_Utilisateur'],
            $donnees['Nom'],
            $donnees['Createur'],
            $donnees['DESCRIPTION'],
            $donnees['Nb_joueurs'],
            $donnees['Duree']
        );
        array_push($liste, $regle_alternative);
//        $liste = $regle_alternative;
    }
echo json_encode($liste);
exit();

?>