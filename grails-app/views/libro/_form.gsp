<%@ page import="jlr.inventario.enumerado.Idioma" %>
<%@ page import="jlr.inventario.enumerado.Formato" %>
<%@ page import="jlr.inventario.Autor" %>
<%@ page import="jlr.inventario.AppConstantes" %>

<div class="fieldcontain">
    <label for="titulo"><g:message code="libro.titulo.label" /><span class="required-indicator">*</span></label>
    <input type="text" name="titulo" value="${libro.titulo}" id="titulo" required="true">
</div>

<div class="fieldcontain">
    <label for="autores"><g:message code="autores.label" /><span class="required-indicator">*</span></label>    
    <g:select name="autores" from="${Autor.list()}" value="${libro.autores*.id}" multiple="true" optionKey="id" required="true" class="autores" />
    <g:link controller="autor" action="create"><g:message code="default.new.label" args="[message(code:'autor.label')]" /></g:link>
</div>

<div class="fieldcontain">
    <label for="propietario"><g:message code="libro.propietario.label" /><span class="required-indicator">*</span></label>
    <input type="text" name="propietario" value="${libro.propietario}" id="propietario" required="true">
</div>

<div class="fieldcontain">
    <label for="fechaCompra"><g:message code="libro.fechaCompra.label" /></label>
    <input type="date" name="fechaCompra" value="${formatDate(format: AppConstantes.FORMATO_FECHA_INGLES, date: libro.fechaCompra)}" id="fechaCompra">
</div>

<div class="fieldcontain">
    <label for="precio"><g:message code="libro.precio.label" /></label>    
    <g:field type="number" name="precio" value="${libro.precio}" step=".01" />
</div>

<div class="fieldcontain">
    <label for="formato"><g:message code="libro.formato.label" /><span class="required-indicator">*</span></label>
    <g:select name="formato" from="${Formato.values()}" value="${libro.formato}" required="true" valueMessagePrefix="Enum.Formato" />
</div>

<div class="fieldcontain">
    <label for="idioma"><g:message code="libro.idioma.label" /><span class="required-indicator">*</span></label>
    <g:select name="idioma" from="${Idioma.values()}" value="${libro.idioma}" required="true" valueMessagePrefix="Enum.Idioma" />
</div>

<g:hiddenField name="lecturas[0].id" value="${libro.lecturas ? libro.lecturas[0].id : null}" />

<div class="fieldcontain">
    <label for="fechaInicio"><g:message code="lectura.fechaInicio.label" /></label>
    <input type="date" name="lecturas[0].fechaInicio" value="${formatDate(format: AppConstantes.FORMATO_FECHA_INGLES, date: libro.lecturas ? libro.lecturas[0]?.fechaInicio : null)}" id="fechaInicio">

    <label for="fechaFin" class="labelCorta"><g:message code="lectura.fechaFin.label" /></label>
    <input type="date" name="lecturas[0].fechaFin" value="${formatDate(format: AppConstantes.FORMATO_FECHA_INGLES, date: libro.lecturas ? libro.lecturas[0]?.fechaFin : null)}" id="fechaFin">
</div>

<div class="fieldcontain">
    <label for="valoracion"><g:message code="lectura.valoracion.label" /></label>
    <input type="hidden" id="estrellasChecked" value="${libro.lecturas ? libro.lecturas[0]?.valoracion : null}" />
    <p id="estrellas" class="clasificacion">
        <input id="radio1" type="radio" name="lecturas[0].valoracion" value="5">
        <label for="radio1">★</label>
        <input id="radio2" type="radio" name="lecturas[0].valoracion" value="4">
        <label for="radio2">★</label>
        <input id="radio3" type="radio" name="lecturas[0].valoracion" value="3">
        <label for="radio3">★</label>
        <input id="radio4" type="radio" name="lecturas[0].valoracion" value="2">
        <label for="radio4">★</label>
        <input id="radio5" type="radio" name="lecturas[0].valoracion" value="1">
        <label for="radio5">★</label>
    </p>
</div>

<div class="fieldcontain">
    <label for="categoria"><g:message code="libro.categoria.label" /></label>
    <input type="text" name="categoria" value="${libro.categoria}" id="categoria">
</div>

<div class="fieldcontain">
    <label for="isbn"><g:message code="libro.isbn.label" /></label>
    <input type="text" name="isbn" value="${libro.isbn}" id="isbn">
</div>

<div class="fieldcontain">
    <label for="editorial"><g:message code="libro.editorial.label" /></label>
    <input type="text" name="editorial" value="${libro.editorial}" id="editorial">
</div>

<div class="fieldcontain">
    <label for="sinopsis"><g:message code="libro.sinopsis.label" /></label>
    <textarea name="sinopsis" id="sinopsis">${libro.sinopsis}</textarea>
</div>

<div class="fieldcontain">
    <label for="observaciones"><g:message code="libro.observaciones.label" /></label>
    <input type="text" name="observaciones" value="${libro.observaciones}" id="observaciones">
</div>

<div class="fieldcontain">
    <label for="imagen"><g:message code="libro.imagen.label" /></label>
    <input type="text" name="imagen" value="${libro.imagen}" id="imagen">
</div>

<g:render template="autoresChosen"/>