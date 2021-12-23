<asset:stylesheet src="chosen.min.css" />
<asset:javascript src="chosen.jquery.min.js"/>

<script type="text/javascript">
    $(function() {        
        var estrellasChecked = $("#estrellasChecked").val();        
        $("input[id='radio" + (6-estrellasChecked) + "']").attr('checked', true);
        $("#autores").chosen({
            width: $("#titulo").outerWidth() + "px",
            placeholder_text_multiple:"Seleccione uno o más autores"});
    });
</script>