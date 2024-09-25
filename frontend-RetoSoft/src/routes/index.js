import { createWebHistory, createRouter } from "vue-router";

import NotFound from "@/Views/NotFound.vue";
import AppLayout from "@/Layouts/Default/AppLayout.vue";
import TestView from "@/Views/TestView.vue";
import LoginView from "@/Views/LoginView.vue";
import SignIn from "@/Layouts/Unauthenticated/SignIn.vue";
import HomeView from "@/Views/HomeView.vue";
export const routes = [
    { 
      path: '/', 
      component: AppLayout,
      children: [
        { 
          path: 'home', 
          component: HomeView,
          name: 'home',
        },
        { 
          path: 'logout',
          component: NotFound,
          name: 'logout',
        },
        //ruta no encontrada
        {
          path: ':pathMatch(.*)*', 
          component: NotFound,
          name: 'not_found',
          hide: true,
        },
      ],
    },
    { 
      path: '/login',
      component: SignIn,
      name: 'login',
      hide: true,
    },
  ];

export const router = createRouter({
  history: createWebHistory(),
  routes,
});
