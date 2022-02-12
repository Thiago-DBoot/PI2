<%@page import="br.com.empregos.model.Emprego_DataControl"%>
<%@ page import="br.com.empregos.dao.Emprego_DataControlDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="br.com.empregos.*" %>
<%@ page import="br.com.empregos.dao.*" %>
<jsp:useBean id="u" class="br.com.empregos.model.Emprego_DataControl"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
Integer iv = Integer.parseInt(request.getParameter("id"));
Emprego_DataControl v = new Emprego_DataControl(); 
v.setIdvaga_cc(iv);
v.DeleteAllDates();
%> 

 	
<%
	String id = request.getParameter("id");
	Emprego_DataControl Gelr = Emprego_DataControlDAO.getRegistroById(Integer.parseInt(id));
%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"> </script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"> </script>
<title>Front-End e Back-End</title>
</head>
<body>

	<br><br><br><br><br><br>
			
	<div align=center>
	
	<h2>Exclusão de Vaga de Emprego</h2>
	<br>
	<h3 style="color:Blue;">Vaga <%=v.getIdvaga_cc()%> Excluída</h3>
	
		</div>
		<br><br><br>
		<form action="emp_020.jsp" method="get" style="text-align:center;">
			<input type="submit" value="VOLTAR" >
		</form>
</body>
</html>

