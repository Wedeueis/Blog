<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Posts</title>
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
	<br>
	
	<div class="container">
		<div class="col-sm-12">
			<br><h2 class="text-center">Lista Completa de Posts</h2><br>
		</div>
		<div class="col-sm-12">
			<jsp:useBean id="bd" class="dao.PostDAO" />
			<c:forEach var="post" items="${bd.getLista()}">
				<div class="panel panel-default">
				  <div class="panel-heading">
					${post.data} - <b>${post.titulo}</b>
					<div class="pull-right"> <i>por ${post.autor} </i></div>
				 </div>
				  <div class="panel-body">
				  	${post.conteudo}
				  </div>
				  <div class="panel-footer">
						#${post.tag} 
				  </div>
				</div>
			</c:forEach>
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