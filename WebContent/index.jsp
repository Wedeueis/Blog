<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Crie, Construa, Compartilhe</title>
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet"
 		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	 <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	 <script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="cabecalho.jsp"/>
	</div>
	<div class="container">
		<div class="col-sm-6">
					<h2>Crie, Construa, Compartilhe</h2>
		</div>
		<div class="col-sm-6">
		</div>
	</div>
	<br />
	<div class="container">
		<div class="col-sm-3">
			<a type="button" class="btn btn-default btn-block" href="artesanato.jsp">Artesanato</a>
		</div>
		<div class="col-sm-2">
			<a type="button" class="btn btn-default btn-block" href="filmes.jsp">Filmes</a>
		</div>
		<div class="col-sm-2">
			<a type="button" class="btn btn-default btn-block" href="gordices.jsp">Gordices</a>
		</div>
		<div class="col-sm-2">
			<a type="button" class="btn btn-default btn-block" href="mochilando.jsp">Mochilando</a>
		</div>
		<div class="col-sm-3">
			<a type="button" class="btn btn-default btn-block" href="sudoaptget.jsp">Sudo Apt-Get</a>
		</div>
	</div>
	
	<div class="container">
		<br /><jsp:include page="rodape.jsp"/>
	</div>
</body>
</html>