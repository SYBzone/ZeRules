import Vue from 'vue';
import VueRouter from 'vue-router';
import RegleOfficielle from '@/views/RegleOfficielle';
import Homepage from "@/views/Homepage";

import creation_Regle from "@/views/creation_Regle";
import profil from "@/views/Profil";
import recherche from "@/views/recherche";
Vue.use(VueRouter)

const routes = [
  { path: '/',  component: Homepage,name:'homepage' },
  { path: '/regleofficielle/:id',  component: RegleOfficielle, name: 'regleOfficielle' },
  { path : '/creation_Regle', component: creation_Regle, name: 'creation_Regle'},
  {path : '/recherche', component: recherche, name:'recherche'},
  {path : '/profil', component: profil, name: 'profil'},
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
