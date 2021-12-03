<g:each in="${1..5}" var="i">
    <span class="${i <= value ? 'showEstrellaSelected' : 'showEstrella'}">★</span>
</g:each>