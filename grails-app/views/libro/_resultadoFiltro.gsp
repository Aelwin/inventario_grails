<f:table collection="${libroList}" properties="['titulo', 'autores', 'propietario', 'formato', 'idioma', 'fechaCompra', 'leido', 'valoracion']" />

<div class="pagination">
    <g:paginate total="${libroCount ?: 0}" />
</div>