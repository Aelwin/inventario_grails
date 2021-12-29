<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'lectura.label')}" />        
    </head>
    <body>
        <div id="show-lectura" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>            
            <ol class="property-list libro">
                <li class="fieldcontain">
                    <span id="titulo-label" class="property-label"><g:message code="libro.titulo.label" /></span>
                    <div class="property-value" aria-labelledby="titulo-label">
                        <g:link controller="Libro" action="show" id="${lectura.libro.id}">${lectura.libro.titulo}</g:link>
                    </div>
                </li>
                <li class="fieldcontain">
                    <span id="lector-label" class="property-label"><g:message code="lectura.lector.label" /></span>
                    <div class="property-value" aria-labelledby="lector-label">${lectura.lector}</div>
                </li>
                <li class="fieldcontain">
                    <span id="fechaInicio-label" class="property-label"><g:message code="lectura.fechaInicio.label" /></span>
                    <div class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate format="dd/MM/yyyy" date="${lectura.fechaInicio}"/></div>
                </li>
                <li class="fieldcontain">
                    <span id="fechaFin-label" class="property-label"><g:message code="lectura.fechaFin.label" /></span>
                    <div class="property-value" aria-labelledby="fechaFin-label"><g:formatDate format="dd/MM/yyyy" date="${lectura.fechaFin}"/></div>
                </li>
                <li class="fieldcontain">
                    <span id="valoracion-label" class="property-label"><g:message code="lectura.valoracion.label" /></span>
                    <div class="property-value" aria-labelledby="valoracion-label">
                        <g:each in="${1..5}" var="i">
                            <span class="${i <= lectura.valoracion ? 'showEstrellaSelected' : 'showEstrella'}">★</span>
                        </g:each>
                    </div>
                </li>
            </ol>
            <g:form resource="${this.lectura}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.lectura}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
