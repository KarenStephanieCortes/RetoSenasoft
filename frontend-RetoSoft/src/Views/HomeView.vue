
<template>
  <div class="row mt-2 h-100 bg-secondary rounded justify-content-center mx-0">
    <div class="container" id="contPrincipal">
      <div class="row bg-light m-4 rounded-4" id="contenedor">
        <div class="col-12 col-md-6">
          <img
            src="../assets/img/inicio_.jpg"
            alt="inicio"
            class="img rounded-4 m-4 border border-3 border-primary"
            id="imgInicio"
          />
        </div>
        <div class="col-12 col-md-6 d-flex flex-column justify-content-center">
          <h1 class="display-5 text-dark fw-bold">Bienvenido a LabResults!</h1>
          <p class="text-center mt-3">
            Bienvenido a nuestro portal. Aquí podrás consultar de manera fácil y
            rápida los resultados de tus exámenes médicos. Hemos diseñado este
            espacio pensando en tu comodidad.
          </p>
        </div>
      </div>

      <!-- Contenedor de filtros de búsqueda -->
      <div class="row bg-light m-4 rounded-4" id="buscador">
        <!-- Filtro por Número de Orden -->
        <div class="col-md-3 m-1 mt-2">
          <label for="orderNumber" class="form-label">Número de Orden</label>
          <input
            type="text"
            id="orderNumber"
            class="form-control"
            placeholder="Ingresa el número de orden"
          />
        </div>

        <!-- Filtro por Fecha Inicio -->
        <div class="col-md-3 m-1 mt-2">
          <label for="startDate" class="form-label">Fecha Inicio</label>
          <input type="date" id="startDate" class="form-control" />
        </div>

        <!-- Filtro por Fecha Fin -->
        <div class="col-md-3 m-1 mt-2">
          <label for="endDate" class="form-label">Fecha Fin</label>
          <input type="date" id="endDate" class="form-control" />
        </div>

        <!-- icon de asc y des -->
        <div class="col-md-1 d-flex text-center align-items-center mt-2">
          <i class="fa-solid fa-arrow-down-1-9"></i>
          <i class="fa-solid fa-arrow-up-9-1"></i>
        </div>

        <!-- Botón de Búsqueda -->
        <div class="col-md-1 d-flex align-items-center mt-2" id="btnBuscar">
          <button class="btn btn-primary px-4">Buscar</button>
        </div>
      </div>
    </div>

    <!-- Contenedor de órdenes de exámenes -->
    <div class="container-fluid">
      <div class="row">
        <div class="col col-md-6"><OrdenComponent /></div>
        <div class="col col-md-6"><GrupoComponent /></div>
      </div>
      <div class="row">
        <div class="col col-md-6"></div>
      </div>
      <div class="accordion accordion-flush" id="accordionFlushExample">
        <ProcedimientoAcordeonComponent />
      </div>
    </div>
  </div>
</template>
<script>
import GrupoComponent from "@/components/GrupoComponent.vue";
import OrdenComponent from "../components/OrdenComponent.vue";
import ProcedimientoAcordeonComponent from "@/components/ProcedimientoAcordeonComponent.vue";
export default {
  components: {
    OrdenComponent,
    GrupoComponent,
    ProcedimientoAcordeonComponent,
  },
};
</script>
<style>
#contenedor {
  width: 95%;
  height: 63%;
}
#imgInicio {
  width: 85%;
  height: 78%;
}
#contPrincipal {
  height: 55%;
}
#buscador {
  width: 95%;
  height: 20%;
}
#btnBuscar{
  width: 10%;
}
</style>
