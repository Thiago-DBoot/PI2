<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Front-End e Back-End</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"> </script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"> </script>
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Sistema de Controle de Vaga de Emprego</a>
		</div>
		<ul class="nav navbar-nav navbar-right">			
			
			<li><a href="emp_010.jsp">Cadastrar</a></li>
			
			<li><a class="" href="emp_020.jsp">Alteração/Exclusão</a></li>
			
			<li class="dropdown ">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Listar Vagas<span class="caret"> </span></a>
				<ul class="dropdown-menu">
					<li><a href="emp_030.jsp?lista=1">Lista de Vagas Abertas</a></li>
					<li><a href="emp_030.jsp?lista=2">Lista de Vagas Encerradas</a></li>
					<li><a href="emp_030.jsp?lista=3">Lista Geral de Vagas</a></li>
				</ul>
			</li>
		</ul>
	</div>
</nav>



</body>
</html>