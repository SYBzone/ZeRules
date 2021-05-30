<template >
  <div>
    <Header_base/>
    <main id="accueil-jeux">
      <section class="carousel" v-for="regle in regles" :key="regle.name">
        <h2>{{ regle.name }}</h2>
        <ul class="carousel-items">
            <li class="carousel-item" v-for="item in regle.items" :key="item.id">
              <router-link :to="{ name: 'regleOfficielle', params: { id: item.id }}">
              <figure>
                <img :src="'img/images/accueil-jeux/' + item.img" alt="">
                <figcaption>{{ item.nom }}</figcaption>
              </figure>
              </router-link>
            </li>
        </ul>
      </section>
      <section id="rect-bandeau">
        <div id="nav">
          <img :src="'/img/interface/playing-cards.png'" alt="cartes" width="30px">
          <img id="loupe" :src="'img/interface/loupe.png'" alt="Loupe" width="30px">
          <img :src="'/img/interface/user.png'" alt="user" width="30px">
        </div>
      </section>
    </main>
  </div>
</template>


<script>

import Header_base from "@/components/header_base";
export default {
  name: 'Homepage',
  components : {
    Header_base
  },
  props: {
    msg: String
  },
  data() {
    return {
      regles: [
        {
          name: 'Jeux de carte',
          items: [{
            img: 'uno.jpg',
            id:
                1,
            nom: "Uno"
          },
            {
              img: 'president.jpg',
              id: 2,
              nom: "President"
            },
            {
              img: 'tarot.jpg',
              id: 3,
              nom: "Tarot"
            },
            {
              img: 'texaspoker.jpg',
              id: 4,
              nom: "Texas Poker"
            },
            {
              img: 'bridge.jpg',
              id: 5,
              nom: "Bridge"
            }
          ],
        },
        {
          name: 'Jeux de Dés',
          items: [
            {
              img: 'yams.jpg',
              id: 1,
              nom: "Yams"
            },
            {
              img: 'suite.jpg',
              id: 2,
              nom: "Suite"
            },
            {
              img: 'as.jpg',
              id: 3,
              nom: "As"
            }
          ],
        },
        {
          name: 'Jeux de Plateaux',
          items: [{
            img: 'backgammon.jpg',
            id: 1,
            nom: "Backgammon"
          },
            {
              img: 'monopoly.jpg',
              id: 2,
              nom: "Monopoly"
            },
            {
              img: 'scrabble.jpg',
              id: 3,
              nom: "Scrabble"
            }
          ],
        }

      ]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
</style>
