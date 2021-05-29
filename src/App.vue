<template>
  <div id="app">
    <header id="header_accueil">
      <img id="logo" :src="'img/interface/logo.png'" alt="" width="50px" height="50px">
      <h1>Jeux</h1>
    </header>
    <router-view></router-view>
    <footer>
      <div id="info">
        <a href="#">Mentions légales</a>
        <a href="#">CGU</a>
        <a href="#">Contact</a>
      </div>
      <div id="decouvrir">
        <a href="#">Recherche</a>
        <a href="#">Mon profil</a>
        <a href="#">Créer une règle</a>
      </div>
      <div id="reseaux">
        <a href="#">Facebook</a>
        <a href="#">Insta</a>
      </div>
    </footer>
  </div>
</template>

<style lang="scss">

@import './assets/css/normalize.scss';
@import './assets/css/typo.scss';
@import './assets/css/styles-graphiques.scss';
@import './assets/css/mise-en-page.scss';
</style>