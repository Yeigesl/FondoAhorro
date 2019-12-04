<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liquidación</title>

<script language="javascript">

//valida que sean numeros
function numeros(){
	if (event.keyCode > 47 || event.keyCode <58) 		
		event.returnValue = true;
	else{
		event.returnValue = false;
	    
	}
}     

function carga2(){
	 document.frmAAADAM.submit();	
}
function carga(){
	 document.frmIDEAAA.submit();	
}
function cargaAviso(){
	alert('Contennido no disponible.Espreralo Proximamente')
}
function cargaAvisos(){
	alert('Espreralo Proximamente')
}
</script>


<style type="text/css">
.style9 {font-size: 12px}

.style7 {
	font-size: 14px;
	font-weight:bold;
}
.modal-contenido{
 width: 300px;
  background-color:white;
  width:600px;
  height:250px;
  padding-left:  50px;
  padding-top: 100px;
  margin-left:   80px;
  margin-top:  50px;
  border:  10px solid gray;
  padding: 5px 10px;
  margin: 5% ;
  position: relative;
}
.modal{
  background-color: rgba(0,0,0,.8);
  position:fixed;
  top:0;
  right:0;
  bottom:0;
  left:0;
  opacity:0;
  pointer-events:none;
  transition: all 1s;
}
#miModal:target{
  opacity:1;
  pointer-events:auto;
}

#miModal2:target{
  opacity:1;
  pointer-events:auto;
}
</style>

</head>
<body>
<form name="frmIDEAAA" method="post" action="fondoIDEAAA.jsp" action="Fondoahorro.java">
<a class="style7" align="center" href="#miModal">Recibos de  Liquidación del Fondo de Ahorro IDEAAA, S.C </a>
<div align="top" id="miModal" class="modal">
  <div align="top" class="modal-contenido">
   <pre> <p align="left" class="style7">Recibos  de Liquidación del Fondo de Ahorro IDEAAA,S.C            <a align="right" href="#">X</a></p></pre>
    <p class="style9">Criterios de Búsqueda</p>
    <table cellspacing="0" border=1 bordercolor="black" width=580px height=120px>
    <tr>
    <td style=" border: inset 0pt">Ejercicio</td>
    <td style=" border: inset 0pt">No.Empleado</td>
    <td style=" border: inset 0pt">F.Rendimiento</td>
    
    <td  align="middle" style=" border: inset 0pt"><button  id="uno" name="bI" align="middle" type="submit" onclick="carga()" ><img align="middle" width="20" height="25" src="webI/impresora.png"/><br>Imprimir</br></button></td>
    <td  align="middle" style=" border: inset 0pt"><button name="bV" align="middle" type="button" onclick="cargaAvisos()" ><img align="middle" width="20" height="25" src="webI/vale.png"/><br>Vales</br></button></td>
    </tr>
    <tr>
    <td style=" border: inset 0pt">
    <select name="años" id="op">
    <option >2018-2019</option>
    <option >2019-2020</option>
    <option>2020-2021</option>
    <option >2021-2022</option>
    <option >2022-2023</option>
    <option >2023-2024</option>
    <option >2024-2025</option>
    <option  >2025-2026</option>
    <option  >2026-2027</option>
    <option >2027-2028</option>
    <option  >2028-2029</option>
    <option >2029-2030</option>
    </select></td>
    </td>
    <td style=" border: inset 0pt"><input name="num" type="text" id="num" onkeypress="numeros()" size="15" maxlength="10" onblur="document.frmIDEAAA.txtUsuario.value = document.frmIDEAAA.txtUsuario.value.toUpperCase();document.frmIDEAAA.txtUsuario.value = document.frmIDEAAA.txtUsuario.value.trim();" /></td>
    <td style=" border: inset 0pt"><input name="ren" id="ren" type="text"  onblur="document.frmUno.txtUsuario.value = document.frmUno.txtUsuario.value.toUpperCase();document.frmUno.txtUsuario.value = document.frmUno.txtUsuario.value.trim();"></td>
    </tr>
    </table>
  </div>  
</div>
</form>




<br>
<form name="frmAAADAM" method="post" action="fondoAAADAM.jsp" action="Fondoahorro.java">
<a  class="style7"align="center"  href="#miModal2">Recibos de Liquidación del Fondo de Ahorro AAADAM,A.C </a>
<div align="top" id="miModal2" class="modal">
  <div align="top" class="modal-contenido">
   <pre> <p align="left"  class="style7">Recibos de Liquidación del Fondo de Ahorro AAADAM,A.C             <a align="right" href="#">X</a> </p></pre>
    <p class="style9">Criterios de Búsqueda</p>
    <table cellspacing="0" border=1 bordercolor="black" width=580px height=120px>
    <tr>
		 <td style=" border: inset 0pt">Ejercicio</td>
    <td style=" border: inset 0pt">No.Empleado</td>
    <td style=" border: inset 0pt">F.Rendimiento</td>
    
    <td  align="middle" style=" border: inset 0pt"><button id="dos" name="bI2" align="middle" type="submit" onclick="carga2()"><img align="middle" width="20" height="25" src="webI/impresora.png"/><br>Imprimir</br></button></td>
    <td  align="middle" style=" border: inset 0pt"><button  name="bv2" align="middle" type="button"  width="25" height="30"onclick="cargaAviso()"><img align="middle" width="20" height="25" src="webI/vale.png"/><br>Vales</br></button></td>
    </tr>
    <tr>
    <td style=" border: inset 0pt">
    <select name="años" >
    <option value="13">2018-2019</option>
    <option value="14">2019-2020</option>
    <option value="15">2020-2021</option>
    <option value="16">2021-2022</option>
    <option value="17">2022-2023</option>
    <option value="18">2023-2024</option>
    <option value="19">2024-2025</option>
    <option value="20">2025-2026</option>
    <option value="21">2026-2027</option>
    <option value="22">2027-2028</option>
    <option value="23">2028-2029</option>
    <option value="24">2029-2030</option>
    </select></td>
    </td>
    <td style=" border: inset 0pt"><input id="numero" onblur="document.frmAAADAM.txtPassConfirm.value = document.frmAAADAM.txtPassConfirm.value.toUpperCase();"></td>
    <td style=" border: inset 0pt"><input></td>


    </tr>
    </table>
  </div>  
</div>
</form>
</br>
</body>
</html>