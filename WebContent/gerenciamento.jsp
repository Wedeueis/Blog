<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Gerenciamento</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet"
 		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	 <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	 <script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" 
	integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
</head>
<body>

	<jsp:include page="cabecalhoadmin.jsp"/>
	<br>
	
	<div class="container">
	
		<div class="col-sm-1"></div>
		<div class="col-sm-5">
			<br/>
			<div class="card" style="max-width:319px;">
				<img class="card-img-top" src="https://cinekings.files.wordpress.com/2015/01/cropped-cinekings-novo1.jpg" 
				 alt="Card image cap" style="height:200px; width:318px">
				 <div class="card-block">
				 	<h4 class="card-title">Filmes</h4>
		    		<p class="card-text">Aqui você gerencia a sua página Filmes.</p>
		    		<form role="form" action="buscataglib.jsp" method="post">
					<div class="form-group">
						<label for="nome">Título</label>
						<input type="text" name="nome" class="form-control"
						id="nome" placeholder="Insira o título do filme" />
					</div>
					<input type="submit" class="btn btn-primary btn-block" value="Buscar" />
					</form>
					<br/>
					<form action="listataglibfilme.jsp" method="post">
						<input type="submit" class="btn btn-primary btn-block" value="Listar" />
					</form>
					<br/>
					<form action="ginserefilme.jsp" method="post">
						<input type="submit" class="btn btn-primary btn-block" value="Inserir novo" />
					</form>
				 </div>			
			</div>
		</div>
		
		
		<div class="col-sm-1"></div>
		<div class="col-sm-5">
			<br/>
			<div class="card" style="max-width:319px;">
				<img class="card-img-top" src="http://www.joiadecasa.com.br/wp-content/uploads/2015/01/garrafa-pet_colagem-1.jpg" 
				 alt="Card image cap" style="height:200px; width:318px">
				 <div class="card-block">
				 	<h4 class="card-title">Artesanato</h4>
		    		<p class="card-text">Aqui você gerencia a sua página Artesanato.</p>
		    		<form role="form" action="" method="post">
					<div class="form-group">
						<label for="nome">Título</label>
						<input type="text" name="nome" class="form-control"
						id="nome" placeholder="Insira o título do post" />
					</div>
					<input type="submit" class="btn btn-primary btn-block" value="Buscar" />
					</form>
					<br/>
					<form action="listataglibpost.jsp" method="post">
						<input type="submit" class="btn btn-primary btn-block" value="Listar" />
					</form>
					<br/>
					<form action="ginserepost.jsp" method="post">
						<input type="submit" class="btn btn-primary btn-block" value="Inserir novo" />
					</form>
				 </div>			
			</div>
		</div>
	</div>
	
	<div class="container">
	
		<div class="col-sm-1"></div>
		<div class="col-sm-5">
			<br/>
			<div class="card" style="max-width:319px;">
				<img class="card-img-top" src="http://rehabdigital.com/wp-content/uploads/2014/08/homemade-food-1920x1063.jpg" 
				 alt="Card image cap" style="height:200px; width:318px">
				 <div class="card-block">
				 	<h4 class="card-title">Comidas</h4>
		    		<p class="card-text">Aqui você gerencia a sua página Comidas.</p>
		    		<form role="form" action="" method="post">
					<div class="form-group">
						<label for="nome">Título</label>
						<input type="text" name="nome" class="form-control"
						id="nome" placeholder="Insira o título do post" />
					</div>
					<input type="submit" class="btn btn-primary btn-block" value="Buscar" />
					</form>
					<br/>
					<form action="listataglibpost.jsp" method="post">
						<input type="submit" class="btn btn-primary btn-block" value="Listar" />
					</form>
					<br/>
					<form action="ginserepost.jsp" method="post">
						<input type="submit" class="btn btn-primary btn-block" value="Inserir novo" />
					</form>
				 </div>			
			</div>
		</div>
		
		
		<div class="col-sm-1"></div>
		<div class="col-sm-5">
			<br/>
			<div class="card" style="max-width:319px;">
				<img class="card-img-top" src="https://viagem.catracalivre.com.br/wp-content/uploads/sites/11/2015/05/10-coisas-para-fazer-antes-de-ter-filhos-07.jpg" 
				 alt="Card image cap" style="height:200px; width:318px">
				 <div class="card-block">
				 	<h4 class="card-title">Mochilando</h4>
		    		<p class="card-text">Aqui você gerencia a sua página Mochilando.</p>
		    		<form role="form" action="" method="post">
					<div class="form-group">
						<label for="nome">Título</label>
						<input type="text" name="nome" class="form-control"
						id="nome" placeholder="Insira o título do post" />
					</div>
					<input type="submit" class="btn btn-primary btn-block" value="Buscar" />
					</form>
					<br/>
					<form action="listataglibpost.jsp" method="post">
						<input type="submit" class="btn btn-primary btn-block" value="Listar" />
					</form>
					<br/>
					<form action="ginserepost.jsp" method="post">
						<input type="submit" class="btn btn-primary btn-block" value="Inserir novo" />
					</form>
				 </div>			
			</div>
		</div>
	</div>
	<div class="container">
		<div class="col-sm-1"></div>
		<div class="col-sm-5">
			<br/>
			<div class="card" style="max-width:319px;">
				<img class="card-img-top" src="http://hleb.asia/images/upload/909/573aa7db843c7.jpg" 
				 alt="Card image cap" style="height:200px; width:318px">
				 <div class="card-block">
				 	<h4 class="card-title">Sudo-Apt-Get</h4>
		    		<p class="card-text">Aqui você gerencia a sua página Sudo-Apt-Get.</p>
		    		<form role="form" action="" method="post">
					<div class="form-group">
						<label for="nome">Título</label>
						<input type="text" name="nome" class="form-control"
						id="nome" placeholder="Insira o título do post" />
					</div>
					<input type="submit" class="btn btn-primary btn-block" value="Buscar" />
					</form>
					<br/>
					<form action="listataglibpost.jsp" method="post">
						<input type="submit" class="btn btn-primary btn-block" value="Listar" />
					</form>
					<br/>
					<form action="ginserepost.jsp" method="post">
						<input type="submit" class="btn btn-primary btn-block" value="Inserir novo" />
					</form>
				 </div>			
			</div>
		</div>
	</div>
	<div class="container">
		<div class="col-sm-12">
			<br /><br /><a class="btn btn-default" href="index.jsp">Home</a>
		</div>
	</div>
	<br><br>
</body>
</html>