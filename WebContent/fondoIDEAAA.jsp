<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.text.DecimalFormat"%>
      <jsp:useBean id="ejecuta" scope="request" class="FondoAhorro.Fondoahorro">
</jsp:useBean>

<jsp:useBean id="exe" scope="request" class="FondoAhorro.Numero_Letras">
</jsp:useBean>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fondo de Ahorro IDEAAA y AAADAM</title>

<style type="text/css">
<!--
.style6 {font-size: 24px}
.style9 {font-size: 12px;
		font-family: Verdana, Arial, Helvetica, sans-serif;}
.style10 {font-size: 12px font-weight: bold;}
.style7 {
	font-size: 14px;
	font-weight: bold;
}
.style8 {
	font-size: 12px;
	font-weight: bold;
}
.style topmargin{
margin: red 3px solid;
}



 td {
   
    height:10px;
 }
</style>


</head>
<body topmargin="1" bottommargin="1"  leftmargin="15" rightmargin="15" >
<form name="frmIDEAAA" method="post" action=" ">
<% String op1=(request.getParameter("miSelect"));%>
<% String string = (request.getParameter("miSelect"));%>
<% String[] parts = string.split("-");%>
<% String part1 = parts[0]; // 123%>
<% String part2 = parts[1]; // 654321%>
<% int e=Integer.parseInt(request.getParameter("num"));%>
<%String[][] resultado=ejecuta.getEmpleado(e,op1);%>
<%if(resultado.length!=0){ %>
<table align="left" width="101%" height="5%" cellpadding="0" cellspacing="0"   border="1" bordercolor="#000000">	

<td cellspacing="0"> 
	   <%String empresa=resultado[0][2]; %>
	   <%String empresaEqu="IDEAAA"; %>
	   <%if(empresa.equals(empresaEqu)){ %>
	   <div align="center"><img align="top" src="webI/ideaaa.png" width="271" height="91"></div>
	   <%}else{%>
	    <div align="center"><img align="top" src="webI/AAADAMNew400.png" width="271" height="91"></div>
	   <%} %>
	   <pre><p align="right" class="style7 ">ANEXO:4.4.1  </p></pre>
	   <p align="center" class="style7 ">FONDO DE AHORRO DE LOS EMPLEADOS DE  <%out.print(ejecuta.concatena(empresa));%> </p>
	   <p align="center" class="style7">RECIBO DE LIQUIDACIÓN DE FONDO DE AHORRO</p>
	   <p align="center" class="style7">DEL EJERCICIO <%out.print(resultado[0][4]); %> </p>
	
	   <%String total=resultado[0][3]; %>
	   <%if (total==null){ %>
	   		<%total="0.00"; %>
	   <%} %>
	   <pre><p align="right" class="style9">  BUENO POR: <a align="right" class="style8" style='text-decoration: underline'>$<%out.print(total); %><a>     </a></a></p></pre>
	   <pre><p align="left" class="style9">  NOMBRE:</p></pre>
	   <pre><p align="left" class="style9">  <a align="right" style='text-decoration: underline'><%out.print(resultado[0][1]); %>                                                                                                                                                                                                               </a></p></pre>                                                                                                                                        
	   <pre><p align="left" class="style9">  No.Empleado:</p></pre>
	   <pre><p align="left"class="style10">  <a align="right" class="style8" style='text-decoration: underline'><%out.print(ejecuta.formatea(resultado[0][0]));%>     </a></p></pre>
	   <pre><p align="justify" class="style9">  Recibí de entera conformidad del Fondo de Ahorro de los empleados de <%out.print(ejecuta.concatena(empresa));%> </p></pre>
	   <pre><p align="justify" class="style9">  la cantidad de: <a align="right" class="style8" style='text-decoration: underline'>$<%out.print(total); %></a><a>  </a></p></pre>
	   <pre><p align="center" class="style8">******<%out.print(exe.Convertir(total,true)); %>*****</p></pre>
	 
	   <pre><p align="justify" class="style9">  Importe del saldo de mi Fondo de Ahorro y Rendimineto, correspondiente al Ejercicio del 01 de diciembre de <%out.print(part1); %> al</p></pre>
	   <pre><p align="justify" class="style9">  30 de noviembre de <%out.print(part2); %>, con fecha de recibido del 01 de diciembre de <%out.print(part2); %> y estoy de acuerdo en que si tuviera</p></pre>
	   <pre><p align="justify" class="style9">  algún adeudo pendiente de pago se me descuente de este importe que se desglosa de la siguiente manera </p></pre>
	  
	                                                                                                                                                         
	   <%String rendimiento=resultado[0][8]; %>
	   <%if (rendimiento==null){ %>
	   <%rendimiento="0.00"; %>
	   <%} %> 
	   <table td align="left" width="80%" height="3%" cellpadding="0" cellspacing="0" >
	   <tr >
		   <%String apoEmpresa=resultado[0][5]; %>
		   <%if (apoEmpresa==null){ %>
		   <%apoEmpresa="0.00"; %>
		   <%} %>
		   <td ><pre class="style9">  Aportación de la empresa</pre></td>
		
		   <td align=right><pre><p align="right" class="style8" style='text-decoration: underline'>         $<%out.print(apoEmpresa); %></p><p>  </p></pre></td>
	   </tr>
	   <tr >
		   <%String apoEmpleado=resultado[0][6]; %>
		   <%if (apoEmpleado==null){ %>
		   <%apoEmpleado="0.00"; %>
		   <%} %>            
		    <td  ><pre class="style9">  Aportacion del empleado</pre></td>
			<td align=right><pre><p align="right" class="style8" style='text-decoration: underline'>         $<%out.print(apoEmpleado); %></p><p>  </p></pre></td>
	   </tr>
	   <tr >	   
		   <%String ahorro=resultado[0][7]; %>
		   <%if (ahorro==null){ %>
		   <%ahorro="0.00"; %>
		   <%} %>  
		   <td height="1"><pre class="style9">  Importe Fondo de Ahorro=Aportacioón de la empresa+Aportación del empleado</pre></td>
		   <td align=right><pre><p align="right" class="style8" style='text-decoration: underline'>         $<%out.print(ahorro); %></p><p>  </p></pre></td> 	
	  	   <tr>
	   </tr>
	
	   <tr >
	    	<td height="1"> <pre><p>  (+)</p></pre>
	    	</td>
	   </tr> 
	   <tr >
	    	<td><pre class="style9">  Rendimiento al <a align="right" class="style8"><%=request.getParameter("ren")%></a></pre></td>
			<td align=right><pre><p align="right" class="style8" style='text-decoration: underline'>           $<%out.print(rendimiento); %></p><p>  </p></pre></td>
	    	</td>
	   </tr> 
	   <tr  >          
		    <td ><pre class="style9">  Total recibido</pre></td>
			<td align=right><pre><p align="right" class="style8" style='text-decoration: underline'>         $<%out.print(total); %></p><p>  </p></pre></td>
	   	    
	   </tr>
	    <tr  >
	    	<td height="1"> <pre><p>  (-)</p></pre>
	    	</td>
	   </tr> 
	   <tr  >          
		    <td  ><pre class="style9">  Saldo de préstamo con interés</pre></td>
			<td align=right><pre><p align="right" class="style8" style='text-decoration: underline'>             $<%out.print("0.00"); %></p><p>  </p></pre></td>
	   </tr>
	   <tr  >          
		    <td height="1"><pre class="style9">  Neto a recibir</pre></td>
			<td align=right><pre><p align="right" class="style8" style='text-decoration: underline'>         $<%out.print(total); %></p><p>  </p></pre></td>
	   </tr>
	  
	   <td><pre><p  align="justify" class="style9">  Hago constar que por medio del presente recibo, estoy integramente liquidando de mi Fondo de Ahorro y su Rendimiento</p></pre>
	   <pre><p  align="justify" class="style9">  al <a align="right" class="style8"><%=request.getParameter("ren")%></a> y sin saldo de préstamo alguno que pagar. </p>
	   <pre><p  align="justify" class="style9">                                                               Firma de recibido del trabajador                                                              Fecha de recibido</p></pre>
	   <pre><p>                              ________________________________                       __________________________</p></pre>
	   </td></tr>
	</table>   
</td>
</table>
<%}else{%>
	|	<td width="400"  bgcolor="#CCCCCC">
		<div class="aviso" align="center">
  			<strong>Aviso!</strong> El empleado con  número <%out.print(ejecuta.formatea(request.getParameter("num")));%> no existe para los datos solicitados,verifique por favor.Gracias por su consulta.
		</div>         
     </td>	
	<%} %>	
</form>
</body>
</html>