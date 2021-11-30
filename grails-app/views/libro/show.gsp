<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'libro.label')}" />        
    </head>
    <body>
        <div id="show-libro" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list libro">
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.titulo.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label">${libro.titulo}</div>
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
                    <span id="propietario-label" class="property-label"><g:message code="libro.fechaCompra.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label"><g:formatDate format="dd/MM/yyyy" date="${libro.fechaCompra}"/></div>
                </li>
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.formato.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label"><g:message code="Enum.Formato.${libro.formato}" /></div>
                </li>
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.idioma.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label"><g:message code="Enum.Idioma.${libro.idioma}" /></div>
                </li>
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.fechaInicio.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label"><g:formatDate format="dd/MM/yyyy" date="${libro.fechaInicioLectura}"/></div>
                </li>
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.fechaFin.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label"><g:formatDate format="dd/MM/yyyy" date="${libro.fechaFinLectura}"/></div>
                </li>
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.categoria.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label">${libro.categoria}</div>
                </li>
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.isbn.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label">${libro.isbn}</div>
                </li>
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.editorial.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label">${libro.editorial}</div>
                </li>
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.sinopsis.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label">${libro.sinopsis}</div>
                </li>
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.valoracion.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label">${libro.valoracion}</div>
                </li>
                <li class="fieldcontain">
                    <span id="propietario-label" class="property-label"><g:message code="libro.imagen.label" /></span>
                    <div class="property-value" aria-labelledby="propietario-label">${libro.imagen}</div>
                </li>
            </ol>
            <g:form resource="${this.libro}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.libro}"><g:message code="default.button.edit.label" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message')}');" />
                    <g:link class="list" controller="prestamo" action="list" id="${libro.id}"><g:message code="libro.prestamos.label" /></g:link>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
