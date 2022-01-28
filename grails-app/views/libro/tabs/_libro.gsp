<ol class="property-list libro">
    <li class="fieldcontain">
        <span id="titulo-label" class="property-label"><g:message code="libro.titulo.label" /></span>
        <div class="property-value" aria-labelledby="titulo-label">${libro.titulo}</div>
    </li>
    <li class="fieldcontain">
        <span id="autores-label" class="property-label"><g:message code="autores.label" /></span>
        <div class="property-value" aria-labelledby="autores-label">
            <ul>
                <g:each var="autor" in="${libro.autores}">
                    <li><g:link controller="autor" action="show" id="${autor.id}">${autor.nombre}</g:link></li>
                </g:each>
            </ul>
        </div>
    </li>
    <li class="fieldcontain">
        <span id="propietario-label" class="property-label"><g:message code="libro.propietario.label" /></span>
        <div class="property-value" aria-labelledby="propietario-label">${libro.propietario}</div>
    </li>
    <li class="fieldcontain">
        <span id="fechaCompra-label" class="property-label"><g:message code="libro.fechaCompra.label" /></span>
        <div class="property-value" aria-labelledby="fechaCompra-label"><g:formatDate date="${libro.fechaCompra}"/></div>
    </li>
    <li class="fieldcontain">
        <span id="precio-label" class="property-label"><g:message code="libro.precio.label" /></span>
        <div class="property-value" aria-labelledby="precio-label"><g:formatNumber number="${libro.precio}" type="currency" currencyCode="EUR" /></div>
    </li>
    <li class="fieldcontain">
        <span id="formato-label" class="property-label"><g:message code="libro.formato.label" /></span>
        <div class="property-value" aria-labelledby="formato-label"><g:message code="Enum.Formato.${libro.formato}" /></div>
    </li>
    <li class="fieldcontain">
        <span id="idioma-label" class="property-label"><g:message code="libro.idioma.label" /></span>
        <div class="property-value" aria-labelledby="idioma-label"><g:message code="Enum.Idioma.${libro.idioma}" /></div>
    </li>
    <li class="fieldcontain">
        <span id="categoria-label" class="property-label"><g:message code="libro.categoria.label" /></span>
        <div class="property-value" aria-labelledby="categoria-label">${libro.categoria}</div>
    </li>
    <li class="fieldcontain">
        <span id="isbn-label" class="property-label"><g:message code="libro.isbn.label" /></span>
        <div class="property-value" aria-labelledby="isbn-label">${libro.isbn}</div>
    </li>
    <li class="fieldcontain">
        <span id="editorial-label" class="property-label"><g:message code="libro.editorial.label" /></span>
        <div class="property-value" aria-labelledby="editorial-label">${libro.editorial}</div>
    </li>
    <li class="fieldcontain">
        <span id="sinopsis-label" class="property-label"><g:message code="libro.sinopsis.label" /></span>
        <div class="property-value" aria-labelledby="sinopsis-label">${libro.sinopsis}</div>
    </li>
    <li class="fieldcontain">
        <span id="observaciones-label" class="property-label"><g:message code="libro.observaciones.label" /></span>
        <div class="property-value" aria-labelledby="observaciones-label">${libro.observaciones}</div>
    </li>
    <li class="fieldcontain">
        <span id="saga-label" class="property-label"><g:message code="libro.saga.label" /></span>
        <div class="property-value" aria-labelledby="saga-label">${libro.saga}</div>
    </li>
    <li class="fieldcontain">
        <span id="imagen-label" class="property-label"><g:message code="libro.imagen.label" /></span>
        <div class="property-value" aria-labelledby="imagen-label">
            <img src="data:image/png;base64,${libro.imagen}" width="91" height="136">
        </div>
    </li>
</ol>