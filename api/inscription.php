    <div class="connexion">
        <a href="javascript:history.back()"><img src="../ze_rules_front/src/assets/img/interface/flèche_rouge.svg" alt="fleche"></a>
        <h1>Inscription</h1>
        <form id="formulaire"  method="post" action="">
                    <input type="text" name="Pseudo" placeholder="Pseudo">
                    <input type="email" name="Mail" placeholder="Mail">
                    <input type="password" name="Mdp" placeholder="Mot de passe">
                    <input type="password" name="repeatMdp" placeholder="confirmez votre mot de passe">

                <input id="inscrire" type="submit" name="submit" value="Valider">
                <a id="connecter" href="connexion.php">Se connecter</a>
        </form>
    </div>
    <style>

        p{
            color: #eeeeee;
        }
    </style>

    <link rel="stylesheet" href="../ze_rules_front/src/assets/css/normalize.scss">
    <link rel="stylesheet" href="../ze_rules_front/src/assets/css/typo.scss">

    <link rel="stylesheet" href="../ze_rules_front/src/assets/css/styles-graphiques.scss">
    <link rel="stylesheet" href="../ze_rules_front/src/assets/css/mise-en-page.scss">
<?php
$pdo = new PDO(
    'mysql:host=localhost;dbname=bddzerules',
    'root',
    'root'
);

if (isset($_POST['submit']))
{
    $pseudo=htmlspecialchars_decode($_POST['Pseudo']);
    $mail=htmlspecialchars_decode($_POST['Mail']);
    $mdp=sha1($_POST['Mdp']);
    $mdp2=sha1($_POST['repeatMdp']);
    /* on test si les champ sont bien remplis */
    if(!empty($_POST['Pseudo']) and !empty($_POST['Mail']) and !empty($_POST['Mdp']) and !empty($_POST['repeatMdp']))
    {

        /* on test si le mdp contient bien au moins 6 caractère */
        if (strlen($_POST['Mdp'])>=6)
        {
            /* on test si les deux mdp sont bien identique */
            if ($_POST['Mdp']==$_POST['repeatMdp'])
            {
                // On crypte le mot de passe
                $insertion = $pdo->prepare("INSERT INTO utilisateur(Pseudo,Mail,mdp) VALUES (:var,:var2,:var3)");
                $insertion->execute(array(
                        "var"=>$pseudo,
                        "var2"=>$mail,
                        "var3"=>$mdp));
                echo "Inscription terminé";
            }
            else{
                echo '<span style="color: red;">Les mots de passe ne sont pas identiques</span>';
            }
        }
        else{

            echo '<span style="color: red;">Le mot de passe est trop court !</span>';
        }
    }
    else{
        echo '<span style="color: red;">Veuillez saisir tous les champs !</span>';
    }

}
?>