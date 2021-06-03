import Vue from 'vue';
import VueRouter from 'vue-router';
import RegleOfficielle from '@/views/RegleOfficielle';
import Homepage from "@/views/Homepage";

import creation_Regle from "@/views/creation_Regle";
import index from "@/views/index";
import profil from "@/views/Profil";
Vue.use(VueRouter)

const routes = [
  { path: '/',  component: Homepage,name:'homepage' },
  { path: '/regleofficielle/:id',  component: RegleOfficielle, name: 'regleOfficielle' },
  { path : '/creation_Regle', component: creation_Regle, name: 'creation_Regle'},
  {path : '/index', component: index, name:'index'},
  {path : '/profil', component: profil, name: 'profil'},
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
