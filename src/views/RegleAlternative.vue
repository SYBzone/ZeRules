<template>
  <div>
    <headerRegleOfficiel />
    <main class="Regle_alt">
      <div class="Regle_alt_liste" v-for="regle_alternative in listeRegleAlternative" :key="regle_alternative">
        <div class="Regle_alt_row">
          <p class="Regle_alt_nom">
            {{ListeRegleAlternative.nom}}
          </p>
          <p class="Regle_alt_createur">
            {{ListeRegleAlternative.createur}}
          </p>
        </div>
      </div>
      <section id="rect-bandeau">
        <div id="nav">
          <router-link :to="{ name: 'Homepage'}"><img :src="'./src/assets/img/interface/playing-cards.png'" alt="cartes" width="30px"></router-link>
          <router-link :to="{ name: 'index'}"><img  :src="'./src/assets/img/interface/loupe.png'" alt="Loupe" width="30px"></router-link>
          <router-link :to="{ name: 'profil'}"><img :src="'./src/assets/img/interface/user.png'" alt="user" width="30px"></router-link>
        </div>
      </section>
    </main>
  </div>
</template>

<script>
import axios from 'axios';
import headerRegleOfficiel from "@/components/headerRegleOfficiel";
export default {
  components: {
    headerRegleOfficiel,
    Map
  },
  data() {
    return {
      regleAlternative: {}
    }
  },
  mounted(){
    console.log("ID : ",this.$route.params.id);
    axios.get('http://localhost/ZeRulesV0.1/api/Controllers/regleAlternative.php?id=' + this.$route.params.id)
        .then(response => {
          this.regleAlternative = response.data;
          console.log("règle", this.regleAlternative);
        })
        .catch(function (error) {
          console.log(error)
        });
  },
}
</script>