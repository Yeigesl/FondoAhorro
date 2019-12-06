<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.text.DecimalFormat"%>
      <jsp:useBean id="ejecuta" scope="request" class="FondoAhorro.Fondoahorro">
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
	font-size: 18px;
	font-weight: bold;
}
.style8 {
	font-size: 14px;
	font-weight: bold;
}
.style topmargin{
margin: red 5px solid;
}
</style>
</head>
<body topmargin="13" bottommargin="13"  leftmargin="15" rightmargin="15" >
<form name="frmIDEAAA" method="post" action=" ">
<% String op1=(request.getParameter("miSelect"));%>
<% int e=Integer.parseInt(request.getParameter("num"));%>
<%String[][] resultado=ejecuta.getEmpleado(e,op1);%>
<%if(resultado.length!=0){ %>
<table align="left" width="100%" height="200%" cellpadding="0" cellspacing="0"   border="1" bordercolor="#000000">	
<br>
<td> 
	   <%String empresa=resultado[0][2]; %>
	   <%String empresaEqu="IDEAAA"; %>
	   <%if(empresa.equals(empresaEqu)){ %>
	   <br><br> <div align="center"><img align="top" src="webI/ideaaa.png" width="391" height="101"></br> </br></div>
	   <%}else{%>
	   <br><br> <div align="center"><img align="top" src="webI/AAADAMNew400.png" width="391" height="101"></br> </br></div>
	   <%} %>
	   <br>
	   <pre><p align="right" class="style7 ">ANEXO:4.4.1  </p></pre>
	   <p align="center" class="style7 ">FONDO DE AHORRO DE LOS EMPLEADOS DE  <%out.print(ejecuta.concatena(empresa));%> </p>
	   <p align="center" class="style7">RECIBO DE LIQUIDACIÓN DE FONDO DE AHORRO</p>
	   <p align="center" class="style7">DEL EJERCICIO <%out.print(resultado[0][4]); %> </p>
	   </br>
	   
	   <br>
	   <%String total=resultado[0][3]; %>
	   <%if (total==null){ %>
	   <%total="0.00"; %>
	   <%} %>
	   <pre><p align="right" class="style9">  BUENO POR: <a align="right" class="style8" style='text-decoration: underline'>$<%out.print(total); %><a>     </a></a></p></pre>
	   <pre><p align="left" class="style9">  NOMBRE:</p></pre>
	   <pre><p align="left" class="style9">  <a align="right" style='text-decoration: underline'><%out.print(resultado[0][1]); %>                                                                                                                                                                                                                                    </a></p></pre>                                                                                                                                        
	   <pre><p align="left" class="style9">  No.Empleado:</p></pre>
	   <pre><p align="left" class="style10">  <a align="right" class="style8" style='text-decoration: underline'><%out.print(ejecuta.formatea(resultado[0][0]));%> </a></p></pre>
	   <pre><p align="justify" class="style9">  Recibí de entera conformidad del Fondo de Ahorro de los empleados de <%out.print(ejecuta.concatena(empresa));%> </p></pre>
	   <pre><p align="justify" class="style9">  la cantidad de: <a align="right" class="style8" style='text-decoration: underline'>$<%out.print(total); %></a><a>  </a></p></pre>
	   <pre><p align="center" class="style8">***** ONCE MIL QUINIENTOS TREINTA Y NUEVE PESOS 92/100 M.N</p></pre>
	   <br>
	   <pre><p align="justify" class="style9">  Importe del saldo de mi Fondo de Ahorro y Rendimineto, correspondiente al Ejercicio del 01 de diciembre de 2016 al</p></pre>
	   <pre><p align="justify" class="style9">  30 de noviembre de 2017, con fecha de recibido del 01 de diciembre de 2017 y estoy de acuerdo en que si tuviera</p></pre>
	   <pre><p align="justify" class="style9">  algún adeudo pendiente de pago se me descuente de este importe que se desglosa de la siguiente manera </p></pre>
	   </br>
	   <br>
	   <%String apoEmpresa=resultado[0][5]; %>
	   <%if (apoEmpresa==null){ %>
	   <%apoEmpresa="0.00"; %>
	   <%} %>
	   <pre><p align="justify" class="style9">  Aportación a la empresa													                                                                                              <a align="right" class="style8" style='text-decoration: underline'>           $<%out.print(apoEmpresa); %></a><a>  </a>   </p></pre>
	   <%String apoEmpleado=resultado[0][6]; %>
	   <%if (apoEmpleado==null){ %>
	   <%apoEmpleado="0.00"; %>
	   <%} %>                                                                                                                                                                                                
	   <pre><p align="justify" class="style9">  Aportación del empleado                                                                                                                                                                                                <a align="right" class="style8" style='text-decoration: underline'>            $<%out.print(apoEmpleado); %></a><a>  </a>   </p></pre> 
	   <%String ahorro=resultado[0][7]; %>
	   <%if (ahorro==null){ %>
	   <%ahorro="0.00"; %>
	   <%} %>                                                                                                                                                                                          
	   <pre><p align="justify" class="style9">  Importe Fondo de Ahorro= Aportación de la empresa + Aportación del empleado:                                                                                                               <a align="right" class="style8" style='text-decoration: underline'>           $<%out.print(ahorro); %></a><a>  </a>   </p></pre>
	   <pre><p>  (+)</p></pre>
	    <%String rendimiento=resultado[0][8]; %>
	   <%if (apoEmpleado==null){ %>
	   <%rendimiento="0.00"; %>
	   <%} %> 
	   <pre><p align="justify" class="style9">  Rendimiento al <a align="right" class="style8"><%=request.getParameter("ren")%></a>                                                                                                                                                                                      <a align="right" class="style8" style='text-decoration: underline'>                  $<%out.print(rendimiento);%></a><a>  </a>   </p></pre>
	   <pre><p align="justify" class="style9">  Total recibido                                                                                                                                                                                                                 <a align="right" class="style8" style='text-decoration: underline'>             $<%out.print(total); %></a><a>  </a>   </p></pre>
	   <pre><p>  (-)</p></pre>
	   <pre><p align="justify" class="style9">  Saldo de préstamo con interés                                                                                                                                                                                        <a align="right" class="style8" style='text-decoration: underline'>                   $0.00</a><a>  </a>   </p></pre>
	   <br>
	   <br>                                                                                                                                                                                                                                          
	   <pre><p align="justify" class="style9">  Neto a recibir                                                                                                                                                                                                                  <a align="right" class="style8" style='text-decoration: underline'>          $<%out.print(total); %></a><a>  </a>   </p></pre>
	   </br>
	   </br>
	   <br>                                                                                                                                                                                                                                     
	   <pre><p  align="justify" class="style9">  Hago constar que por medio del presente recibo, estoy integramente liquidando de mi Fondo de Ahorro y su Rendimiento</p></pre>
	   <pre><p  align="justify" class="style9">  al <a align="right" class="style8"><%=request.getParameter("ren")%></a> y sin saldo de préstamo alguno que pagar. </p></pre>
	   </br>
	   </br>
	   <br>
	   <pre><p  align="justify" class="style9">                                                               Firma de recibido del trabajador                                                              Fecha de recibido</p></pre>
	   <br>
	   <br>
	   <br>
	   <br>
	   <pre><p>                              ________________________________                       __________________________</p></pre>
	   </br>
	   </br>
	   </br>
	   </br>
	   </br>
</td>
<br>
</table>

<%}else{%>
	|	<td width="400"  bgcolor="#CCCCCC">
		<div class="aviso" align="center">
  			<strong>Aviso!</strong> El empleado con  número <%out.print(ejecuta.formatea(request.getParameter("num")));%> no existe, Gracias por su consulta.
		</div>         
     </td>	
	<%} %>	
</form>
</body>
</html>