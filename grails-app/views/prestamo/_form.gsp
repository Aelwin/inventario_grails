<%@ page import="jlr.inventario.AppConstantes" %>
<%@ page import="jlr.inventario.enumerado.SiNo" %>

<div class="fieldcontain required">
    <label for="libro"><g:message code="libro.label" /><span class="required-indicator">*</span></label>
    <g:hiddenField name="libro.id"/>
    <input type="text" name="libroTexto" value="${prestamo.libro?.titulo}" required="true" id="libroTexto">
</div>
<div class="fieldcontain required">
    <label for="nombre"><g:message code="prestamo.nombre.label" /><span class="required-indicator">*</span></label>
    <input type="text" name="nombre" value="${prestamo.nombre}" required="true" id="nombre">
</div>
<div class="fieldcontain required">
    <label for="fechaPrestamo"><g:message code="prestamo.fecha.label" /><span class="required-indicator">*</span></label>                        
    <input type="date" name="fechaPrestamo" value="${formatDate(format: AppConstantes.FORMATO_FECHA_INGLES, date: prestamo.fechaPrestamo)}" id="fechaPrestamo">
</div>
<div class="fieldcontain required">
    <label for="devuelto"><g:message code="prestamo.devuelto.label" /><span class="required-indicator">*</span></label>
    <g:select name="devuelto" from="${SiNo.values()}" value="${prestamo.devuelto}" required="true" valueMessagePrefix="Enum.SiNo" />
</div>

<asset:stylesheet src="jquery-ui.min.css" />
<asset:javascript src="jquery-ui.min.js"/>

<script type="text/javascript">
    $(function() {
        $("#libroTexto").autocomplete({
            source: "<g:createLink controller='prestamo' action='autoCompleteLibro'/>",
            minLength: 2, // triggered only after minimum 2 characters have been entered.
            select: function(event, ui) { // event handler when user selects an element from the list.
                $("#libro\\.id").val(ui.item.id); // update the hidden field.
            }
        });
    });
</script>