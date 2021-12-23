<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'prestamo.label')}" />        
    </head>
    <body>
        <div id="list-prestamo" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${prestamoList}" />

            <div class="pagination">
                <g:paginate total="${prestamoCount ?: 0}" />
            </div>
        </div>
    </body>
</html>