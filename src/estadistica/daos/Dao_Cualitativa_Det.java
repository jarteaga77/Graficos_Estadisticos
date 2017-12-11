/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package estadistica.daos;

import estadistica.conexion.ConexionBD;
import estadistica.modelo.Cualitativa_det;

/**
 *
 * @author jarteaga
 */
public class Dao_Cualitativa_Det 
{
    private ConexionBD con;
    
    
    public void guardar(Cualitativa_det d)
    {
        con=new ConexionBD();
        
        con.executeUpdateQuery("INSERT INTO detalle(id_en,variable,frecuencia_abs)VALUES("+d.getId_c()+",'"+d.getVariable()+"', "+d.getFrec_abs()+")");
        con.desconectar();
    }
    
}
