<?php
$parametres = parse_ini_file(DIR."/../parametres/param.ini");

// connexion à la bdd avec fichier de paramètres
$pdo = new PDO(
    $parametres['dsn'],
    $parametres['user'],
    $parametres['pswd']
);
// Adresse serveur de l'application
$host = $parametres['host'];
?>