<%@ page import="java.text.DecimalFormat" %> 
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page import="br.com.empregos.model.Emprego_DataControl"%>
<%@ page import="br.com.empregos.dao.Emprego_DataControlDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="br.com.empregos.*" %>
<%@ page import="br.com.empregos.dao.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=ISO-8859-1" %>



  <%	
   Integer iv = Integer.parseInt(request.getParameter("idvg_cc"));
   String de = request.getParameter("descricao");
   String ro = request.getParameter("rob");
   String rd = request.getParameter("rde");
   String rex = request.getParameter("rem");
   // converte string valor para float
   String vx = rex;
   vx = vx.replace(".","");
   vx = vx.replace(",",".");
   float vr = Float.parseFloat(vx);
   Integer ab = Integer.parseInt(request.getParameter("vag"));
   String be = request.getParameter("ben");
   String lt = request.getParameter("ltr");
   		//instÃ¢ncia da classe Vagas - Para o Obejeto "V"
   		Emprego_DataControl v = new Emprego_DataControl();
		v.setIdvaga_cc(iv);
		v.setDescricao_cc(de);
		v.setReq_obrigatorios_cc(ro);
		v.setReq_desejaveis_cc(rd);
		v.setRemuneracao_cc(vr);
		v.setAberta_cc(ab);
		v.setBeneficios_cc(be);
		v.setLocal_trabalho_cc(lt);
		v.updateUsers();
  
	%>
	
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Front-End e Back-End</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"> </script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"> </script>
<script type="text/javascript">  
			    function formatarMoeda('mask-real') {
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
<br><br><br><br><br><br>	
	<div align=center>Sistema de Controle de Vagas de Emprego</div>
	<div align=center>Alteração</div>
	<br>
	
		
	
	
	<table align=center>
			<tr><td>Id Vaga</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=iv%></td></tr>
	
			<tr><td>Descrição</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=de%></td></tr>
			
			<tr><td>Requisitos Obrigatórios	</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=ro%></td></tr>
			
			<tr><td>Requisitos Desejáveis</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=rd%></td></tr>
			
			<tr><td>Remuneração</td>
			<td style="color:SpringGreen; padding-left: 10px" id="mask-real" onkeyup="formatarMoeda()"><%=vr%></td></tr>
					
			<tr><td>Aberta</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=ab%></td></tr>
				
			<tr><td>Benefícios</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=be%></td></tr>
			
			<tr><td>Local de Trabalho</td>
			<td style="color:SpringGreen; padding-left: 10px"><%=lt%></td></tr>
						
		</table>
		
		<p style="color:Blue;  padding-top: 1%; text-align: center;">Vaga editada com Sucesso</p>
		
		<br>
		<form action="emp_020.jsp" method="get" style="text-align:center;">
			<input type="submit" value="VOLTAR" >
		</form>

</body>
</html>