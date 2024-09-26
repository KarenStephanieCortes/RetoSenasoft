<template>
  <div class="container-fluid position-relative d-flex p-0">
    <!-- Sign In Start -->
    <div class="container-fluid">
      <div
        class="row h-100 align-items-center justify-content-center"
        style="min-height: 100vh"
      >
        <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
          <div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
            <div class="d-flex align-items-center justify-content-between mb-3">
              <a href="index.html" class="">
                <h3 class="text-primary">
                  <i class="fa fa-user-edit me-2">LabResults</i>
                </h3>
              </a>
              <h6>Sign In</h6>
            </div>
            <!-- Mostrar error si existe -->
            <div v-if="errorMessage" class="alert alert-danger" role="alert">
              {{ errorMessage }}
            </div>
            <div class="form-floating mb-3" @submit.prevent="handleLogin">
              <select
                class="form-control"
                id="floatingInput"
                v-model="selectedOption"
                value="Tipo de documento"
              >
                <option
                  v-for="opcion in opciones"
                  :key="opcion.id"
                  :value="opcion.id"
                >
                  {{ opcion.nombre }}
                </option>
              </select>
            </div>
            <div class="form-floating mb-3">
              <input
                type="documento"
                class="form-control"
                id="floatingInput"
                placeholder="1111111"
              />
              <label for="floatingInput">Documento</label>
            </div>
            <div class="form-floating mb-4">
              <input
                type="date"
                class="form-control"
                id="floatingInput"
                required
              />
            </div>
            <div class="d-flex align-items-center justify-content-between mb-4">
              <div class="form-check">
                <input
                  type="checkbox"
                  class="form-check-input"
                  id="exampleCheck1"
                />
                <label class="form-check-label" for="exampleCheck1"
                  >Check me out</label
                >
              </div>
              <a href="">Forgot Password</a>
            </div>
            <button type="submit" class="btn btn-primary py-3 w-100 mb-4">
              Sign In
            </button>
            <p class="text-center mb-0">
              Don't have an Account? <a href="">Sign Up</a>
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- Sign In End -->
  </div>
</template>
<script setup>
import { ref } from "vue";
import { useAuthStore } from "@/stores";
import { useRouter } from 'vue-router'; 

const opciones = ref([
  { id: 0, nombre: "Tipo documento" },
  { id: 1, nombre: "Cedula" },
  { id: 2, nombre: "Tarjeta de identidad" },
  { id: 3, nombre: "Registro de nacimmiento" },
]);

const selectedOption = ref(0);
</script>