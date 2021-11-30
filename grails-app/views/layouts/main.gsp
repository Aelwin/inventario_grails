<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="${message(code:"miBiblioteca.titulo")}"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <!--<a class="navbar-brand" href="/#"><asset:image src="libro_logo.png" alt="Grails Logo"/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
        <ul class="nav navbar-nav ml-auto">
            <g:pageProperty name="page.nav"/>
        </ul>
    </div>-->
</nav>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" controller="autor" action="index"><g:message code="autor.list" /></g:link></li>
        <li><g:link class="list" controller="libro" action="index"><g:message code="libro.list" /></g:link></li>
        <li><g:link class="create" controller="autor" action="create"><g:message code="default.new.label" args="[message(code:'autor.label')]" /></g:link></li>
        <li><g:link class="create" controller="libro" action="create"><g:message code="default.new.label" args="[message(code:'libro.label')]" /></g:link></li>
    </ul>
</div>

<g:layoutBody/>

<div class="footer row" role="contentinfo">

</div>


<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
