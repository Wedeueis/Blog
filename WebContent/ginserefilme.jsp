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

	<jsp:include page="cabecalho.jsp"/>
	<br/>
	<div class="container">
		<form action="controller" method="post">
			<div class="form-group">
				<div class="col-sm-2">  
					<label for="nome">Título</label>
				</div>
				<div class="col-sm-10"> 
					<input type="text" name="nome" class="form-control" id="nome" placeholder="Ex.: O Fantástico Senhor Raposo">
				</div> 
			</div> <br> <br> <br>
			<div class="form-group">
				<div class="col-sm-2">  
					<label for="ano">Ano de Lançamento</label>
				</div>
				<div class="col-sm-10"> 
					<input type="text" name="ano" class="form-control" id="ano" placeholder="Ex.: 2012">
				</div> 
			</div> <br> <br>
			<div class="form-group">    
				<div class="col-sm-2">  
					<label for="duracao">Duração (min)</label>
				</div>
				<div class="col-sm-10"> 
					<input type="text" name="duracao" class="form-control" id="duracao" placeholder="Ex.: 120">
				</div> 
			</div> <br/> <br>
			<div class="form-group">
				<div class="col-sm-2">  
					<label for="diretor">Diretor</label>
				</div>
				<div class="col-sm-10"> 
					<input type="text" name="diretor" class="form-control" id="diretor" placeholder="Ex.: Wes Anderson">
				</div> 
			</div> <br/> <br>
			<div class="form-group">
				<div class="col-sm-2">  
					<label for="produtora">Produtora</label>
				</div>
				<div class="col-sm-10"> 
					<input type="text" name="produtora" class="form-control" id="produtora" placeholder="Ex.: Fox Filmes">
				</div>
			</div> <br/> <br>
			<div class="form-group">
				<div class="col-sm-2">  
					<label for="genero">Gênero</label>
				</div>
				<div class="col-sm-10"> 
					<input type="text" name="genero" class="form-control" id="genero" placeholder="Ex.: Animação">
				</div> 
			</div> <br/> <br>
			<div class="form-group">
				<div class="col-sm-2">  
					<label for="sinopse">Sinopse</label>
				</div>
				<div class="col-sm-10"> 
					<input type="text" name="sinopse" class="form-control" id="sinopse" placeholder="Coloque aqui uma breve descrição do filme.">
				</div> 
			</div> <br/> <br>
			<div class="form-group">
				<div class="col-sm-2">  
					<label for="trailer">Trailer</label>
				</div>
				<div class="col-sm-10"> 
					<input type="text" name="trailer" class="form-control" id="trailer" placeholder="Coloque aqui um link para o trailer do filme.">
				</div> 
			</div> <br/> <br>
			<div class="form-group">
				<div class="col-sm-12">
					<input type="submit" class="btn btn-primary btn-block" value="Inserir" />
			  		<input type="hidden" name="opcao" value="InsereFilme" />
				</div>
			</div>
		</form>
	</div>
	<br/>
	
	<div class="container">
		<div class="col-sm-12">
			<a class="btn btn-default" href="gerenciamento.jsp" role="button">Voltar</a>
		</div>
	</div>
	
	<jsp:include page="rodape.jsp"/>
</body>
</html>