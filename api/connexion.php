<link rel="stylesheet" href="../ze_rules_front/src/assets/css/normalize.scss">
<link rel="stylesheet" href="../ze_rules_front/src/assets/css/typo.scss">

<link rel="stylesheet" href="../ze_rules_front/src/assets/css/styles-graphiques.scss">
<link rel="stylesheet" href="../ze_rules_front/src/assets/css/mise-en-page.scss">

<main class="connexion">
    <a href="javascript:history.back()"><img src="../ze_rules_front/src/assets/img/interface/flèche_rouge.svg" alt="fleche"></a>        <h1>Bienvenue !</h1>
        <form id="formulaire" action="verification.php" method="post">
                <input type="text" name="username" placeholder="Pseudo"/>
                <input type="password" name="password"  placeholder="mot de passe" required>
                <input id="connecter" type="submit" name="submit" value="Se connecter" required>
            <?php
            if(isset($_GET['erreur'])){
                $err = $_GET['erreur'];
                if($err==1 || $err==2)
                    echo "<p style='color:red'>Utilisateur ou mot de passe incorrect</p>";
            }
            ?>
            <p>Ou</p>
            <a id="inscrire" href="inscription.php">S'inscrire</a>
        </form>
    <style>
        p{
            color: white;
        }
    </style>
</main>

