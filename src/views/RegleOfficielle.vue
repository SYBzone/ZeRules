<template>
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
    <section id="rect-bandeau">
      <div id="nav">
        <img :src="'/img/interface/playing-cards.png'" alt="cartes" width="30px">
        <img id="loupe" :src="'/img/interface/loupe.png'" alt="Loupe" width="30px">
        <img :src="'/img/interface/user.png'" alt="user" width="30px">
      </div>
    </section>
  </main>
</template>

<script>
import axios from 'axios';
import Map from '@/components/Map'
export default {
  components: {
    Map
  },
  data() {
    return {
      regleOfficielle: {}
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
}
</script>