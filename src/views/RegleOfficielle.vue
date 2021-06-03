<template>

  <div>

    <headerRegleOfficiel @changeCurrentTab="changeTab" />

    <div class="tab" v-if="currentTab === 'officiel'">
      <main class="jeux-type">
        <h2>Le jeu</h2>
        <p>{{regleOfficielle.description}}
        </p>
        <h2>Préparation</h2>
        <p>{{regleOfficielle.preparation}}</p>
        <h2>Les bases</h2>
        <p>
          {{regleOfficielle.base}}
        </p>
        <h2>Vous pouvez retrouver ce jeu</h2>
        <Map />
        <p>90000 Belfort</p>
        <section class="rect-bandeau">
          <Nav />
        </section>
      </main>
    </div>
    <div class="tab" v-if="currentTab === 'alternatif'">
      <main class="Regle_alt">
        <div class="Regle_alt_liste" v-for="regle_alternative in listeRegleAlternative" :key="regle_alternative">
          <div class="Regle_alt_row">
            <p class="Regle_alt_nom">
              {{regle_alternative.nom}}
            </p>
            <p class="Regle_alt_createur">
              {{regle_alternative.createur}}
            </p>
          </div>
        </div>
          <img :src="'/img/interface/ajout.png'" alt="ajouter">
        <section class="rect-bandeau">
          <Nav />
        </section>
      </main>
    </div>

  </div>
</template>

<script>


import axios from 'axios';
import Map from '@/components/Map';
import Nav from "@/components/nav";
import headerRegleOfficiel from "@/components/headerRegleOfficiel";
export default {
  components: {
    headerRegleOfficiel,
    Map,
    Nav
  },
  data() {
    return {
      regleOfficielle: {},
      listeRegleAlternative: [],
      currentTab: 'officiel'
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
    axios.get('http://localhost/ZeRulesV0.1/api/Controllers/listeRegleAlternative.php?id=' + this.$route.params.id)
        .then(response => {
          this.listeRegleAlternative = response.data;
          console.log("règle", this.listeRegleAlternative);
        })
        .catch(function (error) {
          console.log(error)
        });
  },

  methods: {
    changeTab(newTab) {
      console.log(newTab)
      this.currentTab = newTab
    }
  }
}

</script>