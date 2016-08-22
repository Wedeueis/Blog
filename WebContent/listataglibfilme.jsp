<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script type="application/javascript">
	  function copiaDados(id){
	    document.getElementById('id').value = id;
	    var linhaTabela = document.getElementById('row_'+id);
	    var celulas = linhaTabela.getElementsByTagName("td");
	    document.getElementById('id').value = celulas[0].textContent;
	    document.getElementById('nome').value = celulas[1].textContent;
	    document.getElementById('ano').value = celulas[2].textContent;
	    document.getElementById('duracao').value = celulas[3].textContent;
	    document.getElementById('diretor').value = celulas[4].textContent;
	    document.getElementById('produtora').value = celulas[5].textContent;
	    document.getElementById('genero').value = celulas[6].textContent;
	    document.getElementById('sinopse').value = celulas[7].textContent;
	    document.getElementById('trailer').value = celulas[8].textContent;
	  }
	  
	  function setar(acao){
		  var campoId = document.getElementById('id').value;
		  if(campoId == '') {
			  alert("Selecione um filme clicando na coluna \"Alterar/Remover\" da tabela!");
			  return false;
		  }
		  document.getElementById('opcao').value = acao;
		  }
	</script>
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
			<br><h2 class="text-center">Lista Completa de Filmes</h2><br>
		</div>
	</div>
	<div class="container">
		<div class="col-sm-12">
			<form action="controller" method="post">
				<div class="row">
					<div class="form-group">
							<div class="col-sm-1">  
								<label for="nome">ID</label>
							</div>
						<div class="col-sm-3"> 
							<input type="text" name="id" class="form-control" id="id" readonly style="color: #AAAAAA"> 
							</div>
					</div>
					<div class="form-group">
							<div class="col-sm-1">  
								<label for="nome">Título</label>
							</div>
							<div class="col-sm-3"> 
								<input type="text" name="nome" class="form-control" id="nome" >
							</div>
					</div>
					<div class="form-group">
							<div class="col-sm-1">  
								<label for="ano">Ano de lançamento</label>
							</div>
							<div class="col-sm-3"> 
								<input type="text" name="ano" class="form-control" id="ano">
							</div>
					</div>	
				</div>
				<div class="row">
					<div class="form-group">
							<div class="col-sm-1">  
								<label for="duracao">Duração (min)</label>
							</div>
							<div class="col-sm-3"> 
								<input type="text" name="duracao" class="form-control" id="duracao">
							</div>
					</div>	
					<div class="form-group">	
							<div class="col-sm-1">  
								<label for="diretor">Diretor</label>
							</div>
							<div class="col-sm-3"> 
								<input type="text" name="diretor" class="form-control" id="diretor">
							</div>
					</div>	
					<div class="form-group">	
							<div class="col-sm-1">  
								<label for="produtora">Produtora</label>
							</div>
							<div class="col-sm-3"> 
								<input type="text" name="produtora" class="form-control" id="produtora">
							</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group">		
							<div class="col-sm-1">  
								<label for="genero">Gênero</label>
							</div>
							<div class="col-sm-3"> 
								<input type="text" name="genero" class="form-control" id="genero">
							</div>
					</div>
					<div class="form-group">	
							<div class="col-sm-1">  
								<label for="sinopse">Sinopse</label>
							</div>
							<div class="col-sm-3"> 
								<input type="text" name="sinopse" class="form-control" id="sinopse">
							</div>
					</div>
					<div class="form-group">		
							<div class="col-sm-1">  
								<label for="trailer">Trailer</label>
							</div>
							<div class="col-sm-3"> 
								<input type="text" name="trailer" class="form-control" id="trailer">
							</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-6">
							<input type="hidden" id="opcao" name="opcao" value="" />
							<input type="submit" class="btn btn-primary btn-block" value="Alterar Filme" 
							id="AlteraFilme" onclick="return setar(id);"/>
					</div>
					<div class="col-sm-6">
							<input type="submit" class="btn btn-primary btn-block" value="Remover Filme" 
							id="RemoveFilme" onclick="return setar(id);"/>
					</div>
				</div>
			</form>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="col-sm-12">
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
					<jsp:useBean id="bd" class="dao.FilmeDAO" />
					<tr>
						<th>ID</th>
						<th>Título</th>
						<th>Ano</th>
						<th>Duração</th>
						<th>Diretor</th>
						<th>Produtora</th>
						<th>Gênero</th>
						<th>Sinopse</th>
						<th>Trailer</th>
						<th>Alterar/Remover</th>
					</tr>
							
					<c:forEach var="filme" items="${bd.getLista()}">
						<tr id="row_${filme.id}">
							<td>${filme.id}</td>
							<td>${filme.nome}</td>
							<td>${filme.ano}</td>
							<td>${filme.duracao}</td>
							<td>${filme.diretor}</td>
							<td>${filme.produtora}</td>
							<td>${filme.genero}</td>
							<td>${filme.sinopse}</td>
							<td><a href = "${filme.trailer}">${filme.trailer}</a></td>
							<td align="center"><input type="radio" name="group1" value="${filme.id}" 
							onClick="copiaDados(value)"></td>
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