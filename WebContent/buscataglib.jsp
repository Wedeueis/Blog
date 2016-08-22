<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	<jsp:include page="cabecalhoadmin.jsp"/>
	<div class="container">
		<div class="col-sm-12">
		<br><h2 class="text-center">Filmes</h2><br>
		</div>
		<div class="col-sm-12">
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
					<jsp:useBean id="bd" class="dao.FilmeDAO" />
					<tr>
						<th>Título</th>
						<th>Ano</th>
						<th>Duração</th>
						<th>Diretor</th>
						<th>Produtora</th>
			 			<th>Gênero</th>
						<th>Sinopse</th>
						<th>Trailer</th>
					</tr>
							
						<c:forEach var="filme" items="${bd.buscaFilmePeloNome(param.nome)}">
							<tr>
								<td>${filme.nome}</td>
								<td>${filme.ano}</td>
								<td>${filme.duracao}</td>
								<td>${filme.diretor}</td>
								<td>${filme.produtora}</td>
								<td>${filme.genero}</td>
								<td>${filme.sinopse}</td>
								<td><a href = "${filme.trailer}">${filme.trailer}</a></td>
							</tr>
						</c:forEach>
				</table>
			</div>
		</div> 
	</div> 
	<div class="container">
		<div class="col-sm-12">
			<br /><a class="btn btn-default" href="gerenciamento.jsp">Voltar</a>
		</div>
	</div>
	<jsp:include page="rodape.jsp"/>

	<br />
</body>
</html>