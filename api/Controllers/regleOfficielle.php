<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

header("Access-Control-Allow-Origin: *");
require_once '../Classes/class.Regleofficielle.php';

$pdo = new PDO(
    'mysql:host=localhost;dbname=bddzerules',
    'root',
    'root'
);

$id = $_GET['id'];
$sql = "SELECT * FROM regle_officielle WHERE ID_REGLE = :id ORDER BY ID_REGLE";
$requete=$pdo ->prepare($sql);
$liste =array();
if($requete->execute(
    array(
        "id" => $_GET['id']
    )
))
    $donnees=$requete->fetch();

$regle_officielle = new RegleOfficielle(
            $donnees['ID_REGLE'],
            $donnees['ID_Jeux'],
            $donnees['Nom'],
            $donnees['Nb_joueurs'],
            $donnees['Description'],
            $donnees['Duree'],
            $donnees['Materiel'],
            $donnees["Preparation"],
            $donnees['Base']
        );


echo json_encode($regle_officielle);

//    while ($donnees=$requete->fetch()){
//        $regle_officielle = new RegleOfficielle(
//            $donnees['ID_REGLE'],
//            $donnees['ID_Jeux'],
//            $donnees['Nom'],
//            $donnees['Nb_joueurs'],
//            $donnees['Description'],
//            $donnees['Duree'],
//            $donnees['Materiel'],
//            $donnees["Preparation"],
//            $donnees['Base']
//        );
//        array_push($liste,$regle_officielle);
//        $liste=$regle_officielle;
//    }

//echo json_encode($liste);
exit();

?>