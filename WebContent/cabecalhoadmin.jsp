<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>DIY</title>
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
		<div class="col-sm-4">
		</div>
		
		<div class="col-sm-6">
			<img src=https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR_MOWjRiJ1NZqOzvX9gEXjf_Gr6P-bUPfJLdn0j6yCKIvbvhm_ />
		</div>
		
		<div class="col-sm-3">
		</div>
	</div>
	
	<div class="container">
		<div class="col-sm-12">
			<div class="pull-right">
				<form class="form-inline" action="controller" method="post"  >
					<input type="text" name='email' class="form-control" id="email" placeholder="Digite seu email">
					<input type="submit" class="btn btn-success btn-fill" value="Inscreva-se" />
					<input type="hidden" name="opcao" value="InsereAssinante" />
				</form>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="col-sm-8">
			<h2>Crie, Construa, Compartilhe</h2>
		</div>
		<div class="col-sm-4">
		</div>
	</div>
	
	<br />
	
	<div class="container">
		<div class="col-sm-2">
			<a type="button" class="btn btn-default btn-block" href="artesanato.jsp">Artesanato</a>
		</div>
		<div class="col-sm-2">
			<a type="button" class="btn btn-default btn-block" href="filmes.jsp">Filmes</a>
		</div>
		<div class="col-sm-2">
			<a type="button" class="btn btn-default btn-block" href="comidas.jsp">Comidas</a>
		</div>
		<div class="col-sm-2">
			<a type="button" class="btn btn-default btn-block" href="mochilando.jsp">Mochilando</a>
		</div>
		<div class="col-sm-2">
			<a type="button" class="btn btn-default btn-block" href="sudoaptget.jsp">Sudo Apt-Get</a>
		</div>
		<div class="col-sm-2">
			<a type="button" class="btn btn-default btn-block" href="gerenciamento.jsp">Gerenciar</a>
		</div>
	</div>
</body>
</html>