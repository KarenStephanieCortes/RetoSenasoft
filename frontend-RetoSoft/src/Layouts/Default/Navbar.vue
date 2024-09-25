<template>
  <nav class="navbar p-2 rounded-2 navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
    <a class="sidebar-toggler flex-shrink-2" @click="handleToggleSidebar()">
      <i class="fa fa-user"></i>
    </a>
    <h6 class="text-center m-2">usuario@gmail.com</h6>

    <div class="navbar-nav align-items-center ms-auto">
      <!-- Dinamiza el router-link -->
      <router-link v-if="homeRoute" :to="{ name: homeRoute.name }" class="sidebar-toggler flex-shrink-2 m-2">
        <i class="fa-solid fa-house"></i>
      </router-link>
      
      <!-- Botón para cerrar sesión -->
      <router-link v-if="logoutRoute" :to="{ name: logoutRoute.name }" class="sidebar-toggler flex-shrink-2 m-2">
        <i class="fa-solid fa-arrow-right-to-bracket"></i>
      </router-link> 
    </div>
  </nav>
</template>

<script setup>
import { useDashboardStore } from "@/stores/dashboard";
import { computed } from 'vue';

// Simular rutas dinámicas
const homeRoute = computed(() => {
  return { name: 'home' }; 
});

const logoutRoute = computed(() => {
  return { name: 'logout' }; 
});

const dashboardStore = useDashboardStore();

const handleToggleSidebar = () => {
  dashboardStore.toggleSidebarOpen();
};
</script>

<style>
i {
  font-size: 30px;
}
a{
  text-decoration: none;
}
</style>
