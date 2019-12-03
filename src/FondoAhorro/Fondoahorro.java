package FondoAhorro;
  
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;


import org.apache.catalina.util.StringParser;

/**
 * 
 * @author Yareli Elizabeth Isabel Gómez
 * @version septiembre-octubre 2019
 * La clase tarjetones permite mostar valores de la base de datos Estacionamiento
 * de acuerdo con los valores ingresdos por usuario en la página web.
 * Especificamos el controlador a usar para la base en Informix
 * Asi como los parámetros para la conexión correspondientes al nombre de servidor,
 * nombre de usuario  y contraseña requerida.
 */


@SuppressWarnings("serial")
public class Fondoahorro
{
	static String controlador= "com.informix.jdbc.IfxDriver";
    static String conection=  "jdbc:informix-sqli://196.11.30.21:48620/fondo_ahorro:"
    		+ "INFORMIXSERVER=ol_web;user=tcontrol;password=gestion2009";
 
    public String formatea(String valor){

        String resultado = null;

        if (valor.length() == 1){

         resultado =("00").concat(valor);

        }

       if (valor.length() == 2){

         resultado = ("0").concat( valor);

        }

        if (valor.length() == 3){

         resultado = valor;

        }

        return resultado;

      }

    /**
     * Método que ejecuta una consulta  y regresa los datos de acuerdo a la coicidencia 
     * entre el valor ingresado por el usuario y el regsitrado en la base de datos Estacionamiento
     * @param tarjeton
     * @return
     */
    public static  String [][] getEmpleado(int u)
    {
   
    	String[][] fila = null;
    	String a=Integer.toString(u);
	    String periodo="2008-2009";
		fila=conexion("SELECT no_empleado,nombre,total,ahorro,rendimiento,aportacion_empresa,aportacion_empleado,ejercicio,empresa"
		 		+ " from tcontrol.recibos m \r\n" + 
		 		"WHERE m.no_empleado="+a
		 		+ "AND m.ejercicio='"+periodo+"'");
		return fila;
    }

    /**
     * Método que recorre el conjunto de datos albergado en la base de datos
     * rs permite verificar hacer el recorrido mientras el campo next no sea igual 
     * a null.Los datos se almcenan en el arreglo bidimensional de tipo String llamado 
     * resultado el cual es valor de retorno.
     * @param rs objeto de tipo ResultSet que almacen el numero de filas a recorrer
     * @return arreglo bidimensional de tipo String llamdao resultado que contiene los
     * datos de la base de datos.
     */
	public static String[][] ResultSetToArray(ResultSet rs)
    {
        String resultado[][]=null;
 
        try
        {
 
        rs.last();
 
        ResultSetMetaData rsmd = rs.getMetaData();
 
        int numCols = rsmd.getColumnCount();
 
        int numFils =rs.getRow();
 
        resultado=new String[numFils][numCols];
        int j = 0;
 
        rs.beforeFirst();
 
        while (rs.next())
        {
            for (int i=0;i<numCols;i++)
            {
 
                resultado[j][i]=rs.getString(i+1);
                resultado[i][0]=resultado[i][0];
            
            }
            j++;
 
        }
 
        }
        catch(Exception e)
        {
 
        }
      
        return resultado;
    }

	/**
	 * Método que permite cargar el driver para la conexión de la base de datos Estacionamiento 
	 * en Informix. Crea el obtejo de tipo Connection, ResultSet y Statement que nos permite ejecutar
	 * sentencias SQL. 
	 * Los obejos mencionados son cerrados al finalizar su uso.
	 * @param sql corresponde a la setencia SQL
	 * @return Regresa el arreglo correspondiente a los valores almacenados en el ResultSet.
	 */
    private static String[][] conexion(String sql)
    {
 
            try
            {
                    Class.forName(controlador);
               
 
                    Connection con = DriverManager.getConnection(conection);
                    Statement s = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                                                      ResultSet.CONCUR_READ_ONLY);
 
                    ResultSet rs = s.executeQuery(sql);
                    String[][] arr = ResultSetToArray(rs);
                    
 
                    s.close();
                    rs.close();
                    con.close();
 
                    return arr;
 
            }
            catch(Exception e)
            {
                   System.out.println(e.getMessage());
            }
 
            return null;
    }
 
  
 /**
  * Método principal que manada a llamar al dibujado de la tabla para mostrar los
  * datos consultados.
  * @param args cualquier valor que pueda recibir.
  */
    public static void main(String args[]) {
       
    }
}