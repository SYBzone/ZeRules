<template>
  <div id="index">
    <Header_recherche />
      <section id="suggestions">
        <h1>Suggestions</h1>
        <div id="Home_boite1">
          <h2>Top Jeux 2 joueurs</h2>
          <ul>
            <li>Uno</li>
            <li>La Bataille</li>
            <li>La belette à deux</li>
          </ul>
        </div>
        <div id="Home_boite2">
          <h2>Top jeux 4 ou + joueurs</h2>
          <ul>
            <li>Tarot</li>
            <li>Bridge</li>
            <li>Président</li>
          </ul>
        </div>
      </section>
    <section class="rect-bandeau">
      <Nav />
    </section>
  </div>
</template>
<script>
import Nav from "@/components/nav";
import Header_recherche from "@/components/header_recherche";
export default {
  components: {Header_recherche,
  Nav},

  data(){
    return{
      regles:[
        {
          name: '2 joueurs ou plus',
          items:[
            {
              nom: "Uno",
              id: "1",
            },
            {
              nom: "Scrabble",
              id: "3",
            },
            {
              nom: "Backgammon",
              id: "",
            },

          ]
        }

      ]
    }
  }
}

</script>