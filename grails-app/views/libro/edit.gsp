<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'libro.label')}" />        
    </head>
    <body>
        <div id="edit-libro" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.libro}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.libro}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.libro}" method="PUT">
                <g:hiddenField name="version" value="${this.libro?.version}" />
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
