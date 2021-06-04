<?php
header("Access-Control-Allow-Origin: *");
require_once '../connect.php';


$pdo = new PDO(
    'mysql:host=localhost;dbname=bddzerules',
    'root',
    'root'
);

//$nom=$_POST['name'];
//$createur=$_POST['categories'];
//$description=$_POST['official_rule'];
//$nb_joueurs=$_POST['nomber_of_player'];
//$duree=$_POST['time'];

if(isset($_POST['name']) &&
    isset($_POST['categories']) &&
    isset($_POST['nomber_of_player']) &&
    isset($_POST['time']) &&
    isset($_POST['official_rule'])
){
        $id = $_GET['id'];
    $sql = "INSERT INTO `regle_alternative` (`Nom`,`Createur`,`DESCRIPTION`,`Nb_joueurs`, `Duree`)
            VALUES (?, ?, ?, ?, ?)";
    $req = $pdo->prepare($sql);
    $req ->bindParam(1,$_POST['id']);
    $req->bindParam(2, $_POST['name']);
    $req->bindParam(3, $_POST['categories']);
    $req->bindParam(4, $_POST['nomber_of_player']);
    $req->bindParam(5, $_POST['time']);
    $req->bindParam(6, $_POST['official_rule']);

    if (
   $req->execute(
        array("id" => $_GET['id']
    )
    ))
    echo var_dump($req->errorInfo());
} else {
    echo "ERREUR";
}

// {
//    $id = $_GET['id'];
//    $insertion = $pdo->prepare("INSERT INTO regle_alternative(ID_Jeux,Nom,Createur,DESCRIPTION,Nb_joueurs,Duree) VALUES (:var,:var2,:var3,:var4,:var5,:var6)");
//    $insertion->execute(array(
//        "id" => $_GET['id'],
//        "var"=$id,
//        "var2"=>$nom,
//        "var3"=>$createur,
//        "var4"=>$description,
//        "var5"=>$nb_joueurs,
//        "var6"=>$duree,
//    ));
//    echo "Inscription terminé";
//} else {
//    echo "ERREUR";
//}


//    $id = $_GET['id'];
//    $sql = "INSERT INTO `regle_alternative` (`Nom`,`Createur`,`Nb_joueurs`, `Duree`,`DESCRIPTION`)
//            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
//    $req = $pdo->prepare($sql);
//    $req->bindParam(1, $_POST['name']);
//    $req->bindParam(2, $_POST['categories']);
//    $req->bindParam(3, $_POST['nomber_of_player']);
//    $req->bindParam(4, $_POST['time']);
//    $req->bindParam(5, $_POST['official_rule']);
//
//    echo $req->execute();
//    echo var_dump($req->errorInfo());
//} else {
//    echo "ERREUR";
//}