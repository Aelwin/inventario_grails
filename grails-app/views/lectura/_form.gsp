<%@ page import="jlr.inventario.AppConstantes" %>
<%@ page import="jlr.inventario.enumerado.SiNo" %>

<div class="fieldcontain required">
    <label for="libro"><g:message code="libro.label" /><span class="required-indicator">*</span></label>
    <g:hiddenField name="libro.id" value="${lectura.libro?.id}" />
    <input type="text" name="libroTexto" value="${lectura.libro?.titulo}" required="true" id="libroTexto">
</div>
<div class="fieldcontain required">
    <label for="lector"><g:message code="lectura.lector.label" /><span class="required-indicator">*</span></label>
    <input type="text" name="lector" value="${lectura.lector}" required="true" id="lector">
</div>
<div class="fieldcontain required">
    <label for="fechaInicio"><g:message code="lectura.fechaInicio.label" /><span class="required-indicator">*</span></label>
    <input type="date" name="fechaInicio" value="${formatDate(format: AppConstantes.FORMATO_FECHA_INGLES, date: lectura.fechaInicio)}" id="fechaInicio">
</div>
<div class="fieldcontain">
    <label for="fechaFin"><g:message code="lectura.fechaFin.label" /></label>
    <input type="date" name="fechaFin" value="${formatDate(format: AppConstantes.FORMATO_FECHA_INGLES, date: lectura.fechaFin)}" id="fechaFin">
</div>
<div class="fieldcontain">
    <label for="valoracion"><g:message code="lectura.valoracion.label" /></label>
    <input type="hidden" id="estrellasChecked" value="${lectura?.valoracion}" />
    <p id="estrellas" class="clasificacion">
        <input id="radio1" type="radio" name="valoracion" value="5">
        <label for="radio1">★</label>
        <input id="radio2" type="radio" name="valoracion" value="4">
        <label for="radio2">★</label>
        <input id="radio3" type="radio" name="valoracion" value="3">
        <label for="radio3">★</label>
        <input id="radio4" type="radio" name="valoracion" value="2">
        <label for="radio4">★</label>
        <input id="radio5" type="radio" name="valoracion" value="1">
        <label for="radio5">★</label>
    </p>
</div>


<asset:stylesheet src="jquery-ui.min.css" />
<asset:javascript src="jquery-ui.min.js"/>

<script type="text/javascript">
    $(function() {
        $("#libroTexto").autocomplete({
            source: "<g:createLink controller='autoComplete' action='autoCompleteLibro'/>",
            minLength: 2, // triggered only after minimum 2 characters have been entered.
            select: function(event, ui) { // event handler when user selects an element from the list.
                $("#libro\\.id").val(ui.item.id); // update the hidden field.
            }
        });
    });
</script>