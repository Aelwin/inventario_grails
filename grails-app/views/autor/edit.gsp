<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'autor.label')}" />        
    </head>
    <body>
        <div id="edit-autor" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.autor}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.autor}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.autor}" method="PUT">
                <g:hiddenField name="version" value="${this.autor?.version}" />
                <fieldset class="form">
                    <f:all bean="autor"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
