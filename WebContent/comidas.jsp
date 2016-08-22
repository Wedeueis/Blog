<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Gordices</title>
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet"
 		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	 <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	 <script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="cabecalhoadmin.jsp"/> <br>
		
	<div class="container">
		<jsp:useBean id="bd" class="dao.PostDAO" />
		<c:forEach var="post" items="${bd.buscaPeloTema('comidas')}">
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
	
	<div class="container">
		<div class="col-sm-12">
			<br /><br /><a class="btn btn-default" href="index.jsp">Home</a>
		</div>
	</div>
		
	<br /><jsp:include page="rodape.jsp"/>
</body>
</html>