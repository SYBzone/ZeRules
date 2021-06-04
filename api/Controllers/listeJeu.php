<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

    header("Access-Control-Allow-Origin: *");
    require_once '../connexion.php';
    require_once "../Classes/class.Jeu.php";

    $pdo = new PDO(
        'mysql:host=localhost;dbname=bddzerules',
        'root',
        'root'
    );

    $sql = "SELECT * FROM jeu ORDER BY NOM";
    $requete=$pdo ->prepare($sql);
    $liste =array();
    if($requete->execute()){
        while ($donnees=$requete->fetch()){
            $jeu = new Jeu(
                $donnees['ID_Jeux'],
                $donnees['Nom']

            );
            $liste[]=$jeu;
        }

    }
echo json_encode($liste);
    print_r($liste);

exit();

?>