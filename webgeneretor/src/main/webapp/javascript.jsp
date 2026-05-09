<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<script>

	function copiarHash() {
	
	    let textarea = document.getElementById("hash");
	
	    if(textarea.value === ""){
	        alert("Nada para copiar!");
	        return;
	    }
	
	    textarea.select();
	    textarea.setSelectionRange(0, 99999);
	
	    navigator.clipboard.writeText(textarea.value);
	
	    alert("Hash copiado!");
	}

</script>