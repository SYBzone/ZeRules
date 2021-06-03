<template>
  <div>
    <Header_base />
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
      <section class="rect-bandeau">
       <Nav />
      </section>
    </main>
  </div>
</template>


<script>
import Header_base from "@/components/header_base";
import Nav from "@/components/nav";
export default {
  name: 'Homepage',
  components : {
    Nav,
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
          // regle: [{
          //   img: 'uno.jpg',
          //   id:
          //       1,
          //   nom: "Uno",
          //   cat:"Cartes"
          // },
          //   {
          //     img: 'president.jpg',
          //     id: 2,
          //     nom: "President",
          //     cat:"Cartes"
          //   },
          //   {
          //     img: 'tarot.jpg',
          //     id: 3,
          //     nom: "Tarot",
          //     cat:"Cartes"
          //   },
          //   {
          //     img: 'texaspoker.jpg',
          //     id: 4,
          //     nom: "Texas Poker",
          //     cat:"Cartes"
          //   },
          //   {
          //     img: 'bridge.jpg',
          //     id: 5,
          //     nom: "Bridge",
          //     cat:"Cartes"
          //   },
          //   {
          //     img: 'yams.jpg',
          //     id: 6,
          //     nom: "Yams",
          //     cat:"Dés"
          //   },
          //   {
          //     img: 'suite.jpg',
          //     id: 7,
          //     nom: "Suite",
          //     cat:"Dés"
          //   },
          //   {
          //     img: 'as.jpg',
          //     id: 8,
          //     nom: "As",
          //     cat:"Dés"
          //   },
          //   {
          //     img: 'backgammon.jpg',
          //     id: 9,
          //     nom: "Backgammon",
          //     cat:"Plateau"
          //   },
          //   {
          //     img: 'monopoly.jpg',
          //     id: 10,
          //     nom: "Monopoly",
          //     cat:"Plateau"
          //   },
          //   {
          //     img: 'scrabble.jpg',
          //     id: 11,
          //     nom: "Scrabble",
          //     cat:"Plateau"
          //   }
          // ],
        }

      ]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
</style>
