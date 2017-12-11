/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package estadistica.modelo;

/**
 *
 * @author jarteaga
 */
public class Cualitativa_det 
{
    private int id;
    private int id_c;
    private String variable;
    private int frec_abs;
    private double frec_relat;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the id_c
     */
    public int getId_c() {
        return id_c;
    }

    /**
     * @param id_c the id_c to set
     */
    public void setId_c(int id_c) {
        this.id_c = id_c;
    }

    /**
     * @return the frec_abs
     */
    public int getFrec_abs() {
        return frec_abs;
    }

    /**
     * @param frec_abs the frec_abs to set
     */
    public void setFrec_abs(int frec_abs) {
        this.frec_abs = frec_abs;
    }

    /**
     * @return the frec_relat
     */
    public double getFrec_relat() {
        return frec_relat;
    }

    /**
     * @param frec_relat the frec_relat to set
     */
    public void setFrec_relat(double frec_relat) {
        this.frec_relat = frec_relat;
    }

    /**
     * @return the variable
     */
    public String getVariable() {
        return variable;
    }

    /**
     * @param variable the variable to set
     */
    public void setVariable(String variable) {
        this.variable = variable;
    }
    
    
    
    
}
