<%@ page import="jlr.inventario.enumerado.Idioma" %>
<%@ page import="jlr.inventario.enumerado.Formato" %>
<%@ page import="jlr.inventario.Autor" %>
<%@ page import="jlr.inventario.AppConstantes" %>

<asset:javascript src="updateDatePicker.js"/>
<g:form class="filtro">
	<fieldset class="form">
		<g:hiddenField name="max" value="${filtroBusqueda?.max?:AppConstantes.REGISTROS_POR_PAGINA}" />
		<g:hiddenField name="offset" value="${filtroBusqueda?.offset?:0}" />
		<div class="fieldcontain">
			<label for="titulo"><g:message code="libro.titulo.label" /></label>    		
    		<g:field type="text" name="titulo" value="${filtroBusqueda?.titulo}"/>
		</div>
		<div class="fieldcontain">
		    <label for="autores"><g:message code="autores.label" /></label>    
		    <g:select name="autores" from="${Autor.list()}" value="${filtroBusqueda?.autores*.id}" multiple="true" optionKey="id"  class="autores" />		    
		</div>
		<div class="fieldcontain">
		    <label for="propietario"><g:message code="libro.propietario.label" /></label>		    
		    <g:field type="text" name="propietario" value="${filtroBusqueda?.propietario}"/>
		</div>
		<div class="fieldcontain">
		    <label for="fechaCompra"><g:message code="libro.fechaCompra.label" /></label>
		    <g:field type="date" name="fechaCompra" value="${formatDate(format: AppConstantes.FORMATO_FECHA_INGLES, date: filtroBusqueda?.fechaCompra)}"/>
		</div>
		<div class="fieldcontain">
		    <label for="formato"><g:message code="libro.formato.label" /></label>
		    <g:select name="formato" from="${Formato.values()}" value="${filtroBusqueda?.formato}" valueMessagePrefix="Enum.Formato" noSelection="${['null': g.message(code: "Enum.Formato.noSeleccion")]}" />
		</div>
		<div class="fieldcontain">
		    <label for="idioma"><g:message code="libro.idioma.label" /></label>
		    <g:select name="idioma" from="${Idioma.values()}" value="${filtroBusqueda?.idioma}" required="true" valueMessagePrefix="Enum.Idioma" noSelection="${['null': g.message(code: "Enum.Idioma.noSeleccion")]}" />
		</div>
		<div class="fieldcontain">
		    <label for="fechaInicioLectura"><g:message code="lectura.fechaInicio.label" /></label>		    
		    <g:field type="date" name="fechaInicioLectura" value="${formatDate(format: AppConstantes.FORMATO_FECHA_INGLES, date: filtroBusqueda?.fechaInicioLectura)}"/>
		
		    <label for="fechaFinLectura" class="labelCorta"><g:message code="lectura.fechaFin.label" /></label>
		    <g:field type="date" name="fechaFinLectura" value="${formatDate(format: AppConstantes.FORMATO_FECHA_INGLES, date: filtroBusqueda?.fechaFinLectura)}"/>
		</div>
		<div class="fieldcontain">
		    <label for="lector"><g:message code="lectura.lector.label" /></label>		    
		    <g:field type="text" name="lector" value="${filtroBusqueda?.lector}"/>
		</div>
		<div class="fieldcontain">
		    <label for="categoria"><g:message code="libro.categoria.label" /></label>		    
		    <g:field type="text" name="categoria" value="${filtroBusqueda?.categoria}"/>
		</div>
	</fieldset>
	<fieldset class="buttons">
        <g:actionSubmit value="${message(code:'default.button.buscar.label')}" action="resultadoFiltro" />
    </fieldset>
</g:form>

<g:render template="autoresChosen"/>