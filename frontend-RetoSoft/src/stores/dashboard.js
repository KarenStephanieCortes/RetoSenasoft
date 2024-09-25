import { defineStore } from "pinia";

export const useDashboardStore = defineStore('dashboard',{
    state: ()=> ({ isSidebarOpen: true }),
    actions: {
        toggleSidebarOpen(){
            this.isSidebarOpen = !this.isSidebarOpen
        }
    },
    persist: {
        enabled: true,  // Asegúrate de que la persistencia esté habilitada
    }

})