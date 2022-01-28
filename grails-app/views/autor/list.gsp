<%@ page import="jlr.inventario.AppConstantes" %>

<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'autor.label')}" />
        <asset:javascript src="updateDatePicker.js"/>
    </head>
    <body>
        <div id="list-autor" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div>        
                <g:form class="filtro">
                    <fieldset class="form">
                        <g:hiddenField name="max" value="${params?.max?:AppConstantes.REGISTROS_POR_PAGINA}" />
                        <g:hiddenField name="offset" value="${params?.offset?:0}" />
                        <div class="fieldcontain">
                            <label for="nombre"><g:message code="autor.nombre.label" /></label>         
                            <g:field type="text" name="nombre" value="${params?.nombre}"/>
                        </div>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:actionSubmit value="${message(code:'default.button.buscar.label')}" action="resultadoFiltro" />
                    </fieldset>
                </g:form>
            </div>
            <div class="error"></div>
            <div id="resultado">
                <g:if test="${autorList}">
                    <g:render template="resultadoFiltro" />
                </g:if>
            </div>
        </div>
    </body>
</html>