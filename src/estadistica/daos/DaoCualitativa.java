/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package estadistica.daos;

import estadistica.conexion.ConexionBD;
import estadistica.modelo.Cualitativa;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author jarteaga
 */
public class DaoCualitativa 
{

    /**
     * @return the id
     */
    public static int getId() {
        return id;
    }

    /**
     * @param aId the id to set
     */
    public static void setId(int aId) {
        id = aId;
    }
    
    private ConexionBD con;
    
    private static int id;
    
    
    
    
    public void guardar(Cualitativa c) throws SQLException
    {
        con=new ConexionBD();
        
           
       ResultSet obj=con.executeQuery("INSERT INTO encabezado(fecha)VALUES('"+c.getFecha()+"')RETURNING id ");
       
       while (obj.next())
       {
           setId(obj.getInt("id"));
       }
       
       con.desconectar();
    }
    
}
