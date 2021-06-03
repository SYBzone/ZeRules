<template>
  <header class="header_jeux">
    <div id="haut">
      <a @click="$router.go(-1)"><img :src="'/img/interface/flèche.svg'" alt="flèche"></a>
      <h1>{{regleOfficielle.nom}}</h1>
      <img :src="'/img/interface/page_jeux/etoile_vide.png'" alt="etoile vide" onclick="this.src='/img/interface/page_jeux/etoile_pleine.png'">
    </div>
    <div id="bas">
      <div id="officiel" class="border" @click="emitChangeTab('officiel')">
        <p>Règles Officielles</p>
      </div>
      <div id="derive" @click="emitChangeTab('alternatif')">
        <p>Règles Dérivés</p>
      </div>
    </div>
  </header>
</template>
<style>
.border{
  border-bottom: #9E1346 solid 10px;
  border-bottom-style: inset;
}
</style>
<script>


import axios from 'axios';
export default {
  data() {
    return {
      regleOfficielle: {},
      regleAlternative :{}
    }
  },
  mounted(){
    console.log("ID : ",this.$route.params.id);
    axios.get('http://localhost/ZeRulesV0.1/api/Controllers/regleOfficielle.php?id=' + this.$route.params.id)
        .then(response => {
          this.regleOfficielle = response.data;
          console.log("règle", this.regleOfficielle);
        })
        .catch(function (error) {
          console.log(error)
        });
  },
  methods: {
    emitChangeTab(newTab) {
      console.log(newTab)
      this.$emit('changeCurrentTab', newTab)
    }
  }
}
</script>