<template>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button
        class="accordion-button collapsed"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#flush-collapseOne"
        aria-expanded="false"
        aria-controls="flush-collapseOne"
      >
        Perfil de Anticuerpos
      </button>
    </h2>
    <div
      id="flush-collapseOne"
      class="accordion-collapse collapse"
      data-bs-parent="#accordionFlushExample"
    >
      <div class="accordion-body">
        <table class="table table-hover table-primary  text-center">
          <thead>
            <tr>
              <th>Código</th>
              <th>Nombre</th>
              <th>Referencia Masculina</th>
              <th>Referencia Femenina</th>
              <th>Resultado</th>
            </tr>
          </thead>
          <tbody>
            <PruebaComponent />
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
import PruebaComponent from './PruebaComponent.vue';
export default {
  components : {
    PruebaComponent,
  }
}

</script>
