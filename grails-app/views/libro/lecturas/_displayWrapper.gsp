<g:each in="${1..5}" var="i">
    <span class="${i <= value?.getAt(0)?.valoracion ? 'showEstrellaSelected' : 'showEstrella'}">★</span>
</g:each>