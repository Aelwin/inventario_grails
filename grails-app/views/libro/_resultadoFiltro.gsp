<f:table collection="${libroList}" properties="['titulo', 'autores', 'propietario', 'formato', 'idioma', 'fechaCompra', 'leido']" />

<div class="pagination">
    <g:paginate total="${libroCount ?: 0}" />
</div>