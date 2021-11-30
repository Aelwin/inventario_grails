<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'libro.label', default: 'Libro')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="list-libro" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>            
            <f:table collection="${libroList}" properties="['titulo', 'autores', 'propietario', 'valoracion', 'formato', 'idioma', 'fechaCompra', 'leido']" />

            <div class="pagination">
                <g:paginate total="${libroCount ?: 0}" />
            </div>
        </div>
    </body>
</html>