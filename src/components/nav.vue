<template>
  <div class="nav">
    <router-link :to="{ name: 'homepage'}"><a href="Homepage"><img :src="'/img/interface/playing-cards.png'" alt="cartes" width="30px"></a></router-link>
    <router-link :to="{ name: 'index'}"><a href="index"><img :src="'/img/interface/loupe.png'" alt="Loupe" width="30px"></a></router-link>
    <router-link :to="{ name: 'profil'}"><a href="profil"><img :src="'/img/interface/user.png'" alt="user" width="30px"></a></router-link>
  </div>
</template>