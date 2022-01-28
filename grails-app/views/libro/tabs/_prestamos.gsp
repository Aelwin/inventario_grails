<g:if test="${prestamos}">
	<g:each in="${prestamos}" var="prestamo">
		<ol class="property-list prestamo">
			<li class="fieldcontain">
                <span id="nombre-label" class="property-label"><g:message code="prestamo.nombre.label" /></span>
                <div class="property-value" aria-labelledby="nombre-label">${prestamo.nombre}</div>
            </li>
            <li class="fieldcontain">
                <span id="fecha-label" class="property-label"><g:message code="prestamo.fecha.label" /></span>
                <div class="property-value" aria-labelledby="fecha-label">
                	<g:formatDate date="${prestamo.fecha}"/>
                </div>
            </li>
            <li class="fieldcontain">
                <span id="devuelto-label" class="property-label"><g:message code="prestamo.devuelto.label" /></span>
                <div class="property-value" aria-labelledby="devuelto-label">
                	<g:message code="Enum.SiNo.${prestamo.devuelto}" />
                </div>
            </li>
		</ol>
	</g:each>
</g:if>
<g:else>
	<g:message code="prestamo.noHay" />
</g:else>