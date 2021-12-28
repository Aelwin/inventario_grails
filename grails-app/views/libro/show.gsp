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
            <div id="tabs">
                <ul>
                    <li><a href="#tabLibro"><label><g:message code="libro.label" /></label></a></li>
                    <li><a href="#tabLecturas"><label><g:message code="lectura.list" /></label></a></li>
                    <li><a href="#tabPrestamos"><label><g:message code="prestamo.list" /></label></a></li>
                </ul>            
                <div id="tabLibro">
                    <g:render template="tabs/libro" bean="${libro}" />
                </div>
                <div id="tabLecturas">
                    <g:render template="tabs/lecturas" bean="${libro.lecturas}" var="lecturas" />
                </div>
                <div id="tabPrestamos">
                    <g:render template="tabs/prestamos" bean="${libro.prestamos}" var="prestamos" />
                </div>
            </div>
            
            <g:form resource="${this.libro}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.libro}"><g:message code="default.button.edit.label" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message')}');" />                   
                </fieldset>
            </g:form>
        </div>

        <asset:stylesheet src="jquery-ui.min.css" />
        <asset:javascript src="jquery-ui.min.js"/>
        <script type="text/javascript">
            $(function() {
                $("#tabs").tabs();                
            });
        </script>
    </body>
</html>
