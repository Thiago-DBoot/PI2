<%@ page import="java.util.List"%>
<%@ page import="javax.xml.crypto.Data"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.DecimalFormat" %> 
<%@ page import="br.com.empregos.model.Emprego_DataControl" %>
<%@ page import="br.com.empregos.dao.Emprego_DataControlDAO" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Front-End e Back-End</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"> </script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"> </script>
</head>
<body>
	<%@ taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<% 
	List<Emprego_DataControl> list = Emprego_DataControlDAO.getAllUsers();
	request.setAttribute("list", list);
	
	
	%>

 	<br>
 	<div class="table-responsive">
		<table class="table table-sm table-striped table-hover">
		
			<tr>
				<br>
					<h2 style="text-align: center;margin-bottom: 2%;">Lista de Vagas de Emprego - Modulo de Edição</h2>
					
				<th style="text-align: center">IdVagas</th>
				<th style="text-align: center">Descrição</th>
				<th style="text-align: center">Req. Obrigatórios</th>
				<th style="text-align: center">Req. Desejáveis</th>
				<th style="text-align: center">Remuneração</th>
				<th style="text-align: center">Aberta</th>
				<th style="text-align: center">Benefícios</th>
				<th style="text-align: center">Local de Trabalho</th>
				<th style="text-align: center">Alteração</th>
				<th style="text-align: center">Exclusão</th>
			</tr>
			<c:forEach items="${list}" var="data" >
				<tr>
					
			
						<td style="text-align: center">${data.getIdvaga_cc()}</td>
						<td style="text-align: center">${data.getDescricao_cc()}</td>						
						<td style="text-align: center">${data.getReq_obrigatorios_cc()}</td>						
						<td style="text-align: center">${data.getReq_desejaveis_cc()}</td>						
							<c:set var="RPX" value="${data.getRemuneracao_cc()}" />
						<td style="text-align: center"><fmt:formatNumber value="${RPX}" minFractionDigits="2" type="currency"/></td>
						<td style="text-align: center">${data.getAberta_cc()}</td>						
						<td style="text-align: center">${data.getBeneficios_cc()}</td>						
						<td style="text-align: center">${data.getLocal_trabalho_cc()}</td>
												
						<td style="text-align: center"><a href="emp_021.jsp?id=${data.getIdvaga_cc()}"><button type="button" class="btn btn-secondary">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"></path>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"></path>
</svg></button></a></td>

							<td style="text-align: center"><a href="emp_022.jsp?id=${data.getIdvaga_cc()}" onclick="return confirm('Confirmar Exclusão?')"><button type="button" class="btn btn-secondary">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"></path>
  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"></path>
</svg></button></a></td>

				</tr>
			</c:forEach>
				
						
		</table>
	</div>
	<form action="index.jsp" method="get" style="text-align:center;margin-top: 5%">
			<input type="submit" value="VOLTAR" >
	</form>
</body>
</html>