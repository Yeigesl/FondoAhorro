package FondoAhorro;
  
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;



@SuppressWarnings("serial")
public class Fondoahorro{
	static String controlador= "com.informix.jdbc.IfxDriver";
    static String conection=  "jdbc:informix-sqli://196.11.30.21:48620/fondo_ahorro:"
    		+ "INFORMIXSERVER=ol_web;user=tcontrol;password=gestion2009";
    	
    
    
    public String concatena(String valor){

        String resultado = null;
        String cadena1="IDEAAA";
        if (valor==cadena1){

         resultado = valor +", S.C.,";

        }
        else {
        	 resultado = valor+", A.C.,";
        	 
        	

        }
  
        return resultado;

      }

    
    
    
    
    public String formatea(String valor){

        String resultado = null;

        if (valor.length() == 1){

         resultado = "00" + valor;

        }

       if (valor.length() == 2){

         resultado = "0" + valor;

        }

        if (valor.length() == 3){

         resultado = valor;

        }

        return resultado;

      }

    
    
    
    public static  String [][] getValores(int u, int v)
    {
   
    	String[][] fila = null;
    			
    	     String a=Integer.toString(u);
    	     String b=Integer.toString(v);
			 fila=conexion("SELECT no_tarjeta, nombre,descripcion from tcontrol.maestro m \r\n" + 
			 		"JOIN tcontrol.tipo_vehiculo v \r\n" + 
			 		"ON m.id_tipo=v.id_tipo\r\n" + 
			 		"WHERE m.no_tarjeta BETWEEN "+a+"AND "+b);
			 

		return fila;
		
    }
    
    
    public static  String [][] getTodos()
    {
   
    	String[][] fila = null;
    			
    	     
			 fila=conexion("SELECT no_tarjeta, nombre,descripcion from tcontrol.maestro m \r\n" + 
			 		"JOIN tcontrol.tipo_vehiculo v \r\n" + 
			 		"ON m.id_tipo=v.id_tipo\r\n"); 

		return fila;
    }
    
    
    public static  String [][] getEmpleado(int num)
    {
   
    	String[][] fila = null;
    	String a=Integer.toString(num);
	    String periodo="2018-2019";
		fila=conexion("SELECT no_empleado,nombre,empresa,total,ejercicio,aportacion_empresa,"
				+ "aportacion_empleado,ahorro,rendimiento"
		 		+ " from tcontrol.recibos m \r\n" + 
		 		"WHERE m.no_empleado="+a
		 		+ "AND m.ejercicio='"+periodo+"'");
		
		return fila;
    	     
			 

	
    }
 

	public static 
    String[][] ResultSetToArray(ResultSet rs)
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
              
				
			
            }
            j++;
 
        }
 
        }
        catch(Exception e)
        {
 
        }
      
        return resultado;
    }
 
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
 
    public static void main(String args[]) {
       
      
    }
}
