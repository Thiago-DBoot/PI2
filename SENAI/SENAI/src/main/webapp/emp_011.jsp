<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>  
<%@ page import="br.com.empregos.dao.Emprego_DataControlDAO" %> 
<%@ page import="br.com.empregos.model.Emprego_DataControl" %> 
 
<%
   DecimalFormat df = new DecimalFormat("#,###.##");
   String de = request.getParameter("descricao");
   String ro = request.getParameter("rob");
   String rd = request.getParameter("rde");
   String rex = request.getParameter("rem");
   	//Conversão String valor para float
   	String vx = rex;
   	vx = vx.replace(".","");
   	vx = vx.replace(",",".");
   	float vr = Float.parseFloat(vx);
   	String be = request.getParameter("ben");
   	String lt = request.getParameter("ltr");
   		//instância da classe Vagas - Para o Obejeto "V"
   		Emprego_DataControlDAO DCDAO = new Emprego_DataControlDAO();
   		Emprego_DataControl DC = new Emprego_DataControl();
   		DC.setDescricao_cc(de);
   		DC.setReq_obrigatorios_cc(ro);
   		DC.setReq_desejaveis_cc(rd);
   		DC.setRemuneracao_cc(vr);
   		DC.setBeneficios_cc(be);
   		DC.setLocal_trabalho_cc(lt);
   		DC.setAberta_cc(1);
   		
  		DCDAO.Incluir_Insert(DC);
   		
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
	<br><br><br><br><br><br>	
	<div align=center>Sistema de Controle de Vagas de Emprego</div>
	<div align=center>Inclusão</div>
	<br>
	
		
	
	
	<table align=center>
			<tr><td>Descrição</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=DC.getDescricao_cc()%></td></tr>
			
			<tr><td>Requisitos Obrigatórios</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=DC.getReq_obrigatorios_cc()%></td></tr>
			
			<tr><td>Requisitos Desejáveis</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=DC.getReq_desejaveis_cc()%></td></tr>
			
			<tr><td>Remuneração</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=df.format(vr)%></td></tr>
				
			<tr><td>Benefícios</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=DC.getBeneficios_cc()%></td></tr>
			
			<tr><td>Local de Trabalho</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=DC.getLocal_trabalho_cc()%></td></tr>
						
		</table>
		
		<p style="color:Blue;  padding-top: 1%; text-align: center;">Vaga Incluida com Sucesso</p>
		
		<br>
		<form action="index.jsp" method="get" style="text-align:center;">
			<input type="submit" value="VOLTAR" >
		</form>

</body>
</html>