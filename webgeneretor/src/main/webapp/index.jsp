<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

	<head>
		<title>Gerador BCrypt</title>
		
		<!-- Meta -->
		<meta charset="ISO-8859-1">
		<meta name="description" content="Gerador de Senha em Hash" />
		<meta name="author" content="GSMN: Givaldo Medeiros Neto" />
		<meta name="keywords" content="Java, css, html, jsp, BCrypt, hash" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		
		<!-- Favicon icon -->
		<link rel="icon" href="<%= request.getContextPath() %>/img/password.ico" type="image/x-icon">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">		
	</head>
	
	<body>
	
		<div class="container">
			
			<h1>BCrypt Generator</h1>
			
			<form action="gerar-hash" method="post">
			
				<label>Digite a senha</label>
				
				<input type="text" name="senha" placeholder="Ex: admin123">
				
				<div class="buttons">				
					<button type="submit" class="btn-gerar"> Gerar Hash </button>
					<button type="button" onclick="copiarHash()" class="btn-copiar">Copiar</button>
				</div>

    		</form>

    		<textarea id="hash" readonly>${hash}</textarea>

		    <div class="msg">${msg}</div>
	
		    <div class="footer">BCrypt Hash Generator JSP/Servlet</div>

		</div>
	
	<!-- Java Script -->
	<jsp:include page="/javascript.jsp"></jsp:include>
	
	</body>
	
</html>