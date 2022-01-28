<g:if test="${lecturas}">
	<g:each in="${lecturas}" var="lectura">
		<ol class="property-list lectura">
			<li class="fieldcontain">
		        <span id="lector-label" class="property-label"><g:message code="lectura.lector.label" /></span>
		        <div class="property-value" aria-labelledby="lector-label">${lectura.lector}</div>
		    </li>
		    <li class="fieldcontain">
		        <span id="fechaInicio-label" class="property-label"><g:message code="lectura.fechaInicio.label" /></span>
		        <div class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${lectura.fechaInicio}"/></div>
		    </li>
		    <li class="fieldcontain">
		        <span id="fechaFin-label" class="property-label"><g:message code="lectura.fechaFin.label" /></span>
		        <div class="property-value" aria-labelledby="fechaFin-label"><g:formatDate date="${lectura.fechaFin}"/></div>
		    </li>
		    <li class="fieldcontain">
		        <span id="valoracion-label" class="property-label"><g:message code="lectura.valoracion.label" /></span>
		        <div class="property-value" aria-labelledby="valoracion-label">
		            <g:each in="${1..5}" var="i">
		                <span class="${i <= lectura.valoracion ? 'showEstrellaSelected' : 'showEstrella'}">★</span>
		            </g:each>
		        </div>
		    </li>
		</ol>
	</g:each>
</g:if>
<g:else>
	<g:message code="lectura.noHay" />
</g:else>