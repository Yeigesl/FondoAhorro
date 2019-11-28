<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liquidación</title>


<style type="text/css">
.style9 {font-size: 12px}
.modal-contenido{
 width: 300px;
  background-color:white;
  width:500px;
  height:200px;
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
   <pre> <p align="left" class="style9">Recibos  de Liquidación del Fondo de Ahorro IDEAAA,S.C            <a align="right" href="#">X</a></p></pre>
     <p>Criterios de Búsqueda</p>
     <table border=1 bordercolor="black" width=480px height=80px>
    <tr>

    <td>Ejercicio</td>

    <td>No.Empleado</td>

    <td>F.Rendimiento</td>
    
    <td>Figura</td>
    
    <td>Figura</td>

  </tr>

  <tr>

    <td>combox</td>

    <td><input></td>

    <td>combox</td>

  </tr>
    </table>
  </div>  
</div>


<br>

<a align="center"  href="#miModal2">Recibos de Liquidación del Fondo de Ahorro AAADAM,A.C </a>
<div align="top" id="miModal2" class="modal">
  <div align="top" class="modal-contenido">
   <pre> <p align="left"  class="style9">Recibos de Liquidación del Fondo de Ahorro AAADAM,A.C             <a align="right" href="#">X</a> </p></pre>
    <p>Criterios de Búsqueda</p>
    <table border=1 bordercolor="black" width=480px height=80px>
     <tr>

    <td>Ejercicio</td>

    <td>No.Empleado</td>

    <td>F.Rendimiento</td>
    
    <td>Figura</td>
    
    <td>Figura</td>

  </tr>

  <tr>

    <td>combox</td>

    <td><input></td>

    <td>combox</td>

  </tr>
    </table>
  </div>  
</div>
</br>





</body>
</html>