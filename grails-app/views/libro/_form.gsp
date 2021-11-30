<%@ page import="jlr.inventario.enumerado.Idioma" %>
<%@ page import="jlr.inventario.enumerado.Formato" %>
<%@ page import="jlr.inventario.Autor" %>

<div class="fieldcontain">
    <label for="titulo">Título<span class="required-indicator">*</span></label>
    <input type="text" name="titulo" value="${libro.titulo}" id="titulo" required="true">
</div>

<div class="fieldcontain">
    <label for="autores">Autor<span class="required-indicator">*</span></label>    
    <g:select name="autores" from="${Autor.list()}" value="${libro.autores}" multiple="true" required="true" />
    <g:link controller="autor" action="create">Nuevo autor</g:link>
</div>

<div class="fieldcontain">
    <label for="propietario">Propietario<span class="required-indicator">*</span></label>
    <input type="text" name="propietario" value="${libro.propietario}" id="propietario" required="true">
</div>

<div class="fieldcontain">
    <label for="sinopsis">Sinopsis</label>
    <input type="text" name="sinopsis" value="${libro.sinopsis}" id="sinopsis">
</div>

<div class="fieldcontain">
    <label for="fechaCompra">Fecha compra</label>
    <input type="date" name="fechaCompra" value="${libro.fechaCompra}" id="fechaCompra">
</div>

<div class="fieldcontain">
    <label for="formato">Formato<span class="required-indicator">*</span></label>
    <g:select name="formato" from="${Formato.values()}" value="${libro.formato}" required="true" />
</div>

<div class="fieldcontain">
    <label for="idioma">Idioma<span class="required-indicator">*</span></label>
    <g:select name="idioma" from="${Idioma.values()}" value="${libro.idioma}" required="true" />
</div>

<div class="fieldcontain">
    <label for="fechaInicioLectura">Fecha inicio</label>
    <input type="date" name="fechaInicioLectura" value="${libro.fechaInicioLectura}" id="fechaInicioLectura">
</div>

<div class="fieldcontain">
    <label for="fechaFinLectura">Fecha fin</label>
    <input type="date" name="fechaFinLectura" value="${libro.fechaFinLectura}" id="fechaFinLectura">
</div>

<div class="fieldcontain">
    <label for="categoria">Categoria</label>
    <input type="text" name="categoria" value="${libro.categoria}" id="categoria">
</div>

<div class="fieldcontain">
    <label for="isbn">Isbn</label>
    <input type="text" name="isbn" value="${libro.isbn}" id="isbn">
</div>

<div class="fieldcontain">
    <label for="editorial">Editorial</label>
    <input type="text" name="editorial" value="${libro.editorial}" id="editorial">
</div>

<div class="fieldcontain">
    <label for="sinopsis">Sinopsis</label>
    <input type="text" name="sinopsis" value="${libro.sinopsis}" id="sinopsis">
</div>

<div class="fieldcontain">
    <label for="valoracion">Valoracion</label>
    <input type="range" name="valoracion" value="${libro.valoracion}" id="valoracion" min="1" max="10">
</div>

<div class="fieldcontain">
    <label for="observaciones">Observaciones</label>
    <input type="text" name="observaciones" value="${libro.observaciones}" id="observaciones">
</div>

<div class="fieldcontain">
    <label for="imagen">Imagen</label>
    <input type="text" name="imagen" value="${libro.imagen}" id="imagen">
</div>
