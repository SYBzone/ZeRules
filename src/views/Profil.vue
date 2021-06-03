<template>
  <div>
    <div id="fleche">
      <a @click="$router.go(-1)"><img :src="'/img/interface/flèche_rouge.svg'" alt="fleche"></a>
    </div>
    <div id="profil">
      <h1>
        Felix69
      </h1>
      <div id="profil_pres">
        <div id="Mes_rules">
          <h2>Mes rules</h2>
          <div class="Regle_alt_row">
            <p class="Regle_alt_nom">
              Uno Speed
            </p>
            <p class="Regle_alt_createur">
              Felix69
            </p>
          </div>
          <div class="Regle_alt_row">
            <p class="Regle_alt_nom">
              Monopoly hardcore
            </p>
            <p class="Regle_alt_createur">
              Felix69
            </p>
          </div>
        </div>
        <router-link :to="{name:'creationRegle'}">
          <img :src="'/img/interface/plus.png'" alt="">
        </router-link>
        <div id="rules_like">
          <h2>Mes rules favorites</h2>
          <div class="Regle_alt_row">
            <p class="Regle_alt_nom">
              Bataille sanglante
            </p>
            <p class="Regle_alt_createur">
              ThibzDeBaume
            </p>
          </div>
          <div class="Regle_alt_row">
            <p class="Regle_alt_nom">
              Poker coquin
            </p>
            <p class="Regle_alt_createur">
              DamsNBA
            </p>
          </div>
        </div>
      </div>
      <section class="rect-bandeau">
        <Nav />
      </section>
    </div>

  </div>


</template>

<script>

import Nav from "@/components/nav";

export default {
  components: {
    Nav
  },
  data() {
    return {
      // listeRegleAlternative: {},

    }
  },
  mounted() {
    // console.log("ID : ", this.$route.params.id);
    // axios.get('http://localhost/ZeRulesV0.1/api/Controllers/regleOfficielle.php?id=' + this.$route.params.id)
    //     .then(response => {
    //       this.regleOfficielle = response.data;
    //       console.log("règle", this.regleOfficielle);
    //     })
    //     .catch(function (error) {
    //       console.log(error)
    //     });
  },
}
</script>