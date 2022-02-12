<%@page import="br.com.empregos.model.Emprego_DataControl"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.xml.crypto.Data"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="br.com.empregos.dao.*" %>
<%@page import="br.com.empregos.*" %>
<%@page import="br.com.empregos.factory.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
  <% 
int l = Integer.parseInt(request.getParameter("lista"));
String sql;
String titulo;
if(l == 1)
{
	List<Emprego_DataControl> word = Emprego_DataControlDAO.getFTPSList1();
	request.setAttribute("word", word);
	titulo = " em Aberto";
}
else
{
	if(l == 2)
	{
		List<Emprego_DataControl> word = Emprego_DataControlDAO.getFTPSList2();
		request.setAttribute("word", word);
		titulo = " em Encerradas";
	}
	else
	{
		List<Emprego_DataControl> word = Emprego_DataControlDAO.getFTPSList3();
		request.setAttribute("word", word);
		titulo = " Completa";
	}
}




%>
    
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
	<br>
 	<div class="table-responsive">
		<table class="table table-sm table-striped table-hover">
		
			<tr>
				<br>
					<h2 style="text-align: center;margin-bottom: 2%;">Lista de Vagas de Emprego <%=titulo%></h2>
					
				<th style="text-align: center">IdVagas</th>
				<th style="text-align: center">Descrição</th>
				<th style="text-align: center">Req. Obrigatórios</th>
				<th style="text-align: center">Req. Desejáveis</th>
				<th style="text-align: center">Remuneração</th>
				<th style="text-align: center">Aberta</th>
				<th style="text-align: center">Benefícios</th>
				<th style="text-align: center">Local de Trabalho</th>

			</tr>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
			
	
			
			
			<c:forEach items="${word}" var="dat" >
				<tr>
					
			
						<td style="text-align: center">${dat.getIdvaga_cc()}</td>
						<td style="text-align: center">${dat.getDescricao_cc()}</td>						
						<td style="text-align: center">${dat.getReq_obrigatorios_cc()}</td>						
						<td style="text-align: center">${dat.getReq_desejaveis_cc()}</td>						
							<c:set var="RPX" value="${dat.getRemuneracao_cc()}" />
						<td style="text-align: center"><fmt:formatNumber value="${RPX}" minFractionDigits="2" type="currency"/></td>
						<td style="text-align: center">${dat.getAberta_cc()}</td>						
						<td style="text-align: center">${dat.getBeneficios_cc()}</td>						
						<td style="text-align: center">${dat.getLocal_trabalho_cc()}</td>
						

				</tr>
			</c:forEach>
	

		</table>
	</div>
	<form action="index.jsp" method="get" style="text-align:center;margin-top: 5%">
			<input type="submit" value="VOLTAR" >
	</form>

</body>
</html>