<%@ page import="java.text.DecimalFormat" %> 
<%@ page import="br.com.empregos.model.Emprego_DataControl" %> 
<%@ page import="br.com.empregos.dao.Emprego_DataControlDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Front-End e Back-End</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"> </script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"> </script>
<script type="text/javascript">  
			    function formatarMoeda() {
			        var elemento = document.getElementById('mask-real');
			        var valor = elemento.value;
			        
			        valor = valor + '';
			        valor = parseInt(valor.replace(/[\D]+/g, ''));
			        valor = valor + '';
			        valor = valor.replace(/([0-9]{2})$/g, ",$1");
	
			        if (valor.length > 6) {
			            valor = valor.replace(/([0-9]{3}),([0-9]{2}$)/g, ".$1,$2");
			        }
	
			        elemento.value = valor;
			        if(valor == 'NaN') elemento.value = '';
			        
			    }
</script> 
</head>
<body>
	<%
		String id = request.getParameter("id");
		Emprego_DataControl Gelr = Emprego_DataControlDAO.getRegistroById(Integer.parseInt(id));
		
		DecimalFormat df = new DecimalFormat("#,###.##");
	%>
<br><br><br><br><br><br><br><br>
	<div align=center>Sistema de Controle de Vagas de Emprego</div>
	<div align=center>Alteração</div>
	<br>
	
	<div>
	<form action="emp_021-1.jsp" method="post">
		<table align="center">
			<tr><td>ID Vaga</td>
			<td><input type="text" name="idvg_cc"  maxlength=45 value="<%=Gelr.getIdvaga_cc()%>"  readonly></td></tr>
		
			<tr><td>Descrição</td>
			<td><input type="text" name="descricao" required maxlength=45 value="<%=Gelr.getDescricao_cc()%>"></td></tr>
			
			<tr><td>Requisitos Obrigatórios</td>
			<td><input type="text" name="rob" required maxlength=45 value="<%=Gelr.getReq_obrigatorios_cc()%>"></td></tr>
			
			<tr><td>Requisitos Desejáveis</td>
			<td><input type="text" name="rde"  maxlength=45 value="<%=Gelr.getReq_desejaveis_cc()%>"></td></tr>
			
			<tr><td>Remuneração</td>
			<td><input type="text" name="rem" required class="mask-real" id="mask-real" onkeyup="formatarMoeda()" size=8 style="text-align:right" value="<%=df.format(Gelr.getRemuneracao_cc())%>"></td></tr>
			
			<tr><td>Benefícios</td>
			<td><input type="text" name="ben" required maxlength=45 value="<%=Gelr.getBeneficios_cc()%>"></td></tr>
			
			<tr><td>Vaga</td>
			<td><div class="form-check">
  <input class="form-check-input" type="radio" name="vag" value="1" checked >
  <label class="form-check-label" for="Aberta">
    Aberta
  </label>
  <input class="form-check-input" type="radio" name="vag" value="0"  style=" margin-left: 9%;" >
  <label class="form-check-label" for="Encerrada" >
   	Encerrada
  </label>
			</div></td></tr>
			
			
			<tr><td>Local de Trabalho</td>
			<td><input type="text" name="ltr" required maxlength=45 value="<%=Gelr.getLocal_trabalho_cc()%>"></td></tr>
			
			<tr><td colspan=2>&nbsp;</td></tr>
			<tr ><th colspan=2 style="text-align:center;"  ><input type="submit" value="Enviar" ></th></tr>
			
		</table>
	</form>
	
	</div>
</body>
</html>