<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'autor.label')}" />        
    </head>
    <body>
        <div id="create-autor" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
            <g:form resource="${this.autor}" method="POST">
                <fieldset class="form">                    
                    <div class="fieldcontain required">
                        <label for="nombre"><g:message code="autor.nombre.label" /><span class="required-indicator">*</span></label>
                        <input type="text" name="nombre" value="" required="true" id="nombre">
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
