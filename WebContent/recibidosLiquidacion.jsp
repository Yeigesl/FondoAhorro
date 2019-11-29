<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liquidación</title>


<style type="text/css">
.style7 {
	font-size: 14px;
	font-weight: bold;
}
.style9 {font-size: 12px}
.modal-contenido{
 width: 300px;
  background-color:white;
  width:565px;
  height:160px;
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
<a align="center" href="#miModal">Recibos de  Liquidación del Fondo de Ahorro IDEAAA, S.C </a>
<div align="top" id="miModal" class="modal">
  <div align="top" class="modal-contenido">
  <pre><a class="style7" align="right" href="#"> Recibos de Liquidación del Fondo de Ahorro IDEAAA,S.C            X</a></pre>
     <p class="style9">Criterios de Búsqueda</p>
     <table cellspacing="0" border=1 bordercolor="black" width=540px height=80px>
    <tr>

    <td style=" border: inset 0pt">Ejercicio</td>

    <td style=" border: inset 0pt">No.Empleado</td>

    <td style=" border: inset 0pt">F.Rendimiento</td>
    
    <td style=" border: inset 0pt"><input src="webI/impresora.png" height="550" width="580" type="button"  value="Imprimir"/></td>
    
   

  </tr>

  <tr>

    <td style=" border: inset 0pt">
   
    <select name="años" >
    <option value="1">2018-2019</option>
    <option value="2">2019-2020</option>
    <option value="3">2020-2021</option>
    <option value="4">2021-2022</option>
    <option value="5">2022-2023</option>
    <option value="6">2023-2024</option>
    <option value="7">2024-2025</option>
    <option value="8">2025-2026</option>
    <option value="9">2026-2027</option>
    <option value="10">2027-2028</option>
    <option value="11">2028-2029</option>
    <option value="12">2029-2030</option>
    </select></td>
    
    </td>

    <td style=" border: inset 0pt"><input></td>

    <td style=" border: inset 0pt"><input></td>

  </tr>
    </table>
  </div>  
</div>


<br>

<a align="center"  href="#miModal2">Recibos de Liquidación del Fondo de Ahorro AAADAM,A.C </a>
<div align="top" id="miModal2" class="modal">
  <div align="top" class="modal-contenido">
    <pre><a class="style7" align="right" href="#"> Recibos de Liquidación del Fondo de Ahorro AAADAM,S.C            X</a></pre>
    <p  class="style9"> Criterios de Búsqueda</p>
    <table border=1 bordercolor="black" width=540px height=80px>
     <tr>

    <td style=" border: inset 0pt">Ejercicio</td>

    <td style=" border: inset 0pt">No.Empleado</td>

    <td style=" border: inset 0pt">F.Rendimiento</td>
    
    <td style=" border: inset 0pt"><input align="left" type="image" name="btBut"   value="Buscar" onclick="validaValores()"  /></td>
    
    <td style=" border: inset 0pt">Figura</td>

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
    

    <td style=" border: inset 0pt"><input></td>

    <td style=" border: inset 0pt"><input></td>

  </tr>
    </table>
  </div>  
</div>
</br>

</body>
</html>