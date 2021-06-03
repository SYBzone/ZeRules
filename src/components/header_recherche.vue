<template>
  <header>
    <div id="rect_barre">
      <img id="logo" :src="'/img/interface/Logo.png'" alt="" width="40px" height="40px">
      <button id="rect_filtre">
        <img :src="'/img/interface/liste.png'" alt="petite liste">
        <p>Filtrer</p>
        <img :src="'/img/interface/flèche.svg'" alt="Flèche">
        <div id="dropdown-content">
          <div></div>
          <a id="togg1"><img :src="'/img/interface/user.png'" alt="">
            <div id="dropdown-content1" class="non-visible">
              <a href="#">2 joueurs</a>
              <a href="#">3 joueurs</a>
              <a href="#">4 joueurs ou +</a>
            </div></a>
          <a id="togg2" href="#"><img :src="'/img/interface/carte.png'" alt="">
            <div id="dropdown-content2" class="non-visible">
              <a href="#">Cartes</a>
              <a href="#">Dés</a>
              <a href="#">Plareau</a>
            </div></a>
          <a id="togg3" href="#"><img :src="'/img/interface/clock.png'" alt="">
            <div id="dropdown-content3" class="non-visible">
              <a href="#">10 minute</a>
              <a href="#">20-30 minutes</a>
              <a href="#">+ de 40 minute</a>
            </div></a>
        </div>
      </button>
      <div id="rect_recherche">
        <label for="site-search"></label>
        <input type="search" id="site-search" name="q" placeholder="Recherche..."
               aria-label="Search through site content">
        <img :src="'/img/interface/loupe.png'" alt="loupe">
      </div>
    </div>
  </header>
</template>
