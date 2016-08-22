<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Criando Post</title>
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
					<label for="titulo">Título</label>
				</div>
				<div class="col-sm-10"> 
					<input type="text" name="titulo" class="form-control" id="titulo" placeholder="Titulo do Post"><br>
				</div> 
			</div>
			<div class="form-group">    
				<div class="col-sm-2">  
					<label for="tag">Tag</label>
				</div>
				<div class="col-sm-10"> 
					<input type="text" name="tag" class="form-control" id="tag" placeholder="Tag que identifica a classe do post"><br>
				</div> 
			</div> <br>  <br>
			<div class="form-group">
				<div class="col-sm-2">  
					<label for="conteudo">Texto</label>
				</div>
				<div class="col-sm-10"> 
					<textarea class="form-control" name="conteudo" rows="10" id="conteudo"> </textarea>
				</div> 
			</div>
			<div class="form-group">
				<div class="col-sm-12">				
					<br><input type="submit" class="btn btn-primary btn-block" value="Inserir" />
			  		<input type="hidden" name="opcao" value="InserePost" />
				</div>
			</div>
		</form>
	</div>
	
	<div class="container">
		<div class="col-sm-12">
			<br/><a class="btn btn-default" href="gerenciamento.jsp" role="button">Voltar</a>
		</div>
	</div>
	
	<jsp:include page="rodape.jsp"/>
</body>
</html>