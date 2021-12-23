<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'prestamo.label')}" />        
    </head>
    <body>
        <div id="show-prestamo" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>            
            <ol class="property-list libro">
                <li class="fieldcontain">
                    <span id="titulo-label" class="property-label"><g:message code="libro.titulo.label" /></span>
                    <div class="property-value" aria-labelledby="titulo-label">
                        <g:link controller="Libro" action="show" id="${prestamo.libro.id}">${prestamo.libro.titulo}</g:link>
                    </div>
                </li>
                <li class="fieldcontain">
                    <span id="nombre-label" class="property-label"><g:message code="prestamo.nombre.label" /></span>
                    <div class="property-value" aria-labelledby="nombre-label">${prestamo.nombre}</div>
                </li>
                <li class="fieldcontain">
                    <span id="fecha-label" class="property-label"><g:message code="prestamo.fecha.label" /></span>
                    <div class="property-value" aria-labelledby="fecha-label"><g:formatDate format="dd/MM/yyyy" date="${prestamo.fechaPrestamo}"/></div>
                </li>
                <li class="fieldcontain">
                    <span id="devuelto-label" class="property-label"><g:message code="prestamo.devuelto.label" /></span>
                    <div class="property-value" aria-labelledby="devuelto-label"><g:message code="Enum.SiNo.${prestamo.devuelto}" /></div>
                </li>
            </ol>
            <g:form resource="${this.prestamo}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.prestamo}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
