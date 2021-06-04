<template>
  <div class="nav">
    <router-link :to="{ name: 'Homepage'}"><img :src="'/img/interface/playing-cards.png'" alt="cartes" width="30px"></router-link>
    <router-link :to="{ name: 'recherche'}"><img :src="'/img/interface/loupe.png'" alt="Loupe" width="30px"></router-link>
    <router-link :to="{ name: 'profil'}"><img :src="'/img/interface/user.png'" alt="user" width="30px"></router-link>
  </div>
</template>