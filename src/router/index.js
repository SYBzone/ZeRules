import Vue from 'vue';
import VueRouter from 'vue-router';
import RegleOfficielle from '@/views/RegleOfficielle';
import Homepage from "@/views/Homepage";
Vue.use(VueRouter)

const routes = [
  { path: '/',  component: Homepage },
  { path: '/regleofficielle/:id',  component: RegleOfficielle, name: 'regleOfficielle' },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
