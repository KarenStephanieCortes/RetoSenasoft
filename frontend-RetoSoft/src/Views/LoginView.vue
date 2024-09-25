<template>
  <div class="container rounded-3 bg-secondary mt-5">
    <!-- Outer Row -->
    <div class="row justify-content-center">
      <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row bg-secondary text-center rounded-4">
              <div
                class="col-lg-6 d-none d-lg-block bg-login-image align-self-center"
              >
                <div class="container rounded-3">
                  <img
                    class="img-fluid rounded-3"
                    id="imgLogin"
                    src="@/assets/img/inicio2.jpg"
                    alt="Logo de la empresa"
                  />
                </div>
              </div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Bienvenido a LabResult</h1>
                  </div>
                  <!-- Mostrar error si existe -->
                  <div
                    v-if="errorMessage"
                    class="alert alert-danger"
                    role="alert"
                  >
                    {{ errorMessage }}
                  </div>
                  <!-- Formulario de Login -->
                  <form class="user" @submit.prevent="handleLogin">
                    <!-- Campo de tipo de documento -->
                    <div class="form-group mt-3">
                      <select
                        v-model="tipoDocumento"
                        class="form-control form-control-user"
                        id="tipoDocumento"
                        aria-describedby="numeroDocumentolHelp"
                        placeholder="Tipo de documento"
                      >
                        <option value="Tipo de documento" disabled>
                          Selecciona un tipo de documento
                        </option>
                        <option
                          v-for="tipo in tiposDocumentos"
                          :key="tipo.id"
                          :value="tipo.id"
                        >
                          {{ tipo.nombre }}
                        </option>
                      </select>
                    </div>
                    <!-- Campo de documento -->
                    <div class="form-group mt-3">
                      <input
                        v-model="documento"
                        type="text"
                        class="form-control form-control-user"
                        id="numeroDocumento"
                        aria-describedby="numeroDocumentolHelp"
                        placeholder="Documento"
                      />
                    </div>
                    <!-- Campo de fecha nacimiento -->
                    <div class="form-group mt-4">
                      <input
                        v-model="fechaNacimiento"
                        type="date"
                        class="form-control form-control-user"
                        id="inputFechaNacimiento"
                        placeholder="Fecha nacimineto "
                      />
                    </div>
                  
                    <!-- Botón de Login -->
                    <button
                      type="submit"
                      class="btn btn-primary btn-user btn-block mt-5"
                    >
                      Login
                    </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script></script>

<style>
#imgLogin {
  height: 300px;
  width: 400px;
}
</style>
