<template>
  <div>
    <headerRegleOfficiel />
    <div class="Regle_alt">
      <div class="info de base">
        <input type="text" placeholder="Nom de votre règle" name="nom" v-model="nomDuJeu" required>
        <input type="text" placeholder="Votre Pseudo" name="Pseudo" v-model="Pseudo" required>
        <input type="number" placeholder="Durée du jeu " name="duree" v-model="tempsDeJeu" required>
        <input type="number" placeholder="Nombre de joueurs" name="nb_joueurs" v-model="nombreDeJoueur" required>
        <input type="text" placeholder="Votre description" name="description" v-model="regles" required>
      </div>
    </div>
  </div>
</template>

<script>

export default {
data(){
/*nomDuJeu = '';
idCategorie = '';
nombreDeJoueur = '';
tempsDeJeu = '';
ageMinimum = '';
ageMaximum = '';
regles = '';
categories = [
{ id: 1, text: 'Jeu de plateau'},
{ id: 2, text: 'Jeu de pions'},
{ id: 3, text: 'Jeu de cartes'},
{ id: 4, text: 'Jeu de dés'},
];*/
  return {
    // nomDuJeu : '',
    // Pseudo:'',
    // nombreDeJoueur : '',
    // tempsDeJeu : '',
    // regles : '',
  }
},
methods:{
ajouterRegle() {
var bodyFormData = new FormData();
bodyFormData.append('name', nomDuJeu);
bodyFormData.append('Pseudo', Pseudo);
bodyFormData.append('nomber_of_player', nombreDeJoueur);
bodyFormData.append('time', tempsDeJeu);
bodyFormData.append('official_rule', regles);
axios.post('http://localhost/tp/php/Utilitaires/creationRegle.php',
bodyFormData,
{ headers: {
'Content-Type': 'application/x-www-form-urlencoded'
}})
.then(response => console.log(response))
}
}
}
</script>
