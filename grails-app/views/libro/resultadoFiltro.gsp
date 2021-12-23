<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'libro.label')}" />        
    </head>
    <body>
        <div id="list-libro" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div>
                <g:render template="filtro" />
            </div>
            <div class="error"></div>
            <div id="resultado">
                <g:if test="${libroList}">
                    <g:render template="resultadoFiltro" />
                </g:if>
            </div>
        </div>
    </body>
</html>