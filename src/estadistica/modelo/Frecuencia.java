package estadistica.modelo;

import java.util.Arrays;

public class Frecuencia {
    // Atributos

    private float[] valor;

    public Frecuencia() {
        valor = new float[10];
    }

    public Frecuencia(float[] valores) {
        valor = valores;
    }

    public void setValor(float[] valor) {
        this.valor = valor;
    }

    public float[] getValor() {
        return valor;
    }

    /**
     * Retorna el maximo valor de la serie
     * @return
     */
    public float getMax() {
        float max = valor[0];
        for (int i = 0; i < valor.length; i++) {
            if (max < valor[i]) {
                max = valor[i];
            }
        }
        return max;
    }

    /**
     * Retorna el minimo valor de la serie
     * @return
     */
    public float getMin() {
        float min = valor[0];
        for (int i = 0; i < valor.length; i++) {
            if (min > valor[i]) {
                min = valor[i];
            }
        }
        return min;
    }

    /**
     * Retorna el rango
     */
    public float getRango() {
        return getMax() - getMin();
    }

    /**
     * Retorna el numero de intervalos
     */
    public int getK() {
       return Math.round(Math.round((1 + 3.3 * Math.log10(valor.length))+0.5));
    
       //return (int) Math.sqrt(getValor().length);
    }

    /**
     * Retorna la Amplitud de Clase
     */
    public int getA() {
        return Math.round(getRango() / getK());
    }

    /**
     * Devuelve el limite Real inferior
     */
    public float getLimiteInferior() {
        return (getMin() - 0.5f);
    }

    /**
     * Devuelve el limite Real superior
     */
    public float getLimiteSuperior() {
        return getMax() + 0.5f;
    }

    public Clase[] getClases() {
        Clase[] limites = new Clase[getK()];
        limites[0] = new Clase(getMin(), getMin() + getA());
        for (int i = 1; i < limites.length; i++) {
            Clase anterior = limites[i - 1];
            limites[i] = new Clase(anterior.getLimSup(), anterior.getLimSup() + getA());
        }
        return limites;
    }

    /**
     * Retorna la frecuencia relativa de la serie de datos
     */
    public int[] getFrecAbs() {
        int[] frec = new int[getK()];
        Clase clase[] = getClases();
        for (int i = 0; i < frec.length-1; i++) {
            frec[i] = contar(clase[i].getLimInf(), clase[i].getLimSup());
        }
        int ultimo=frec.length-1;
        frec[frec.length-1]=contar(clase[ultimo].getLimInf(), clase[ultimo].getLimSup()+0.5f);
        return frec;
    }

    /**
     * Retorna las frecuencias absolutas acumuladas
     */
    public int[] getFrecAbsAc() {
        int[] ac = new int[getK()];
        int[] abs = getFrecAbs();
        ac[0] = abs[0];
        for (int i = 1; i < ac.length; i++) {
            ac[i] = ac[i - 1] + abs[i];
        }
        return ac;
    }

    /**
     * Retorna las frecuencias relativas de la serie
     */
    public float [] getFrecRel() {
        float[] rel = new float[getK()];
        int[] abs = getFrecAbs();
        for (int i = 0; i < rel.length; i++) {
            rel[i] = Float.parseFloat(abs[i]+"")  / Float.parseFloat(valor.length+"");
        }
        return rel;
    }

    /**
     * Retorna las frecuencias relativas acumuladas
     * @return
     */
    public float [] getFrecRelAc() {
        float[] ac = new float[getK()];
        float[] rel = getFrecRel();
        ac[0] = rel[0];
        for (int i = 1; i < ac.length; i++) {
            ac[i] = ac[i - 1] + rel[i];
        }
        return ac;
    }

    /**
     * Cuenta los numeros que estan dentro de un rango de datos
     * @param limInf
     * @param limSup
     * @return
     */
        private int contar(float limInf, float limSup) {
        int count = 0;
        for (int i = 0; i < valor.length; i++) {
            if (valor[i] >= limInf && valor[i] < limSup) {
                count++;
            }
        }
        return count;
    }
        
        
        public float media()
        {
            float total=0;
            float media=0;
            
            for(int i=0; i<valor.length; i++)
            {
                total +=valor[i];
            }
            
            return media=total/getValor().length;
            
            
        }
        
        public float mediana()
        {
            float mediana=0;
            float valor1 = 0,valor2 = 0;
            
            Arrays.sort(valor);
            
            if(valor.length % 2==0)
            {
                
                
                valor1=(valor.length/2);
                valor2=+(valor.length/2) +1 ;
                
            for(int i=1; i<valor.length; i++)
            {
               if(i==valor1)
               {
                   System.out.println("valor 1"+i);
                   valor1=valor[i-1];
               }
               
               if(i==valor2)
               {
                 System.out.println("valor 2"+i);

                   valor2=valor[i-1];
               }
            }
                mediana=(valor1+valor2)/2;
            }else
            {
                mediana=(valor.length + 1)/2;
                
                  
                
             for(int i=1; i<valor.length; i++)
            {
                if(mediana==i)
                {
                    mediana=valor[i-1];
                }
            }
            }
            
            
            
            return mediana;
        }
        
        
        public float moda ( ) {
            float num_mas_usado = 0;
            int veces [ ] = new int [valor.length];
            int posicion = 0;
            for(int i = 0; i < valor.length; i++){
             num_mas_usado = valor[i];
            for(int j = i; j < valor.length; j++)
            {
                if(valor[j] == num_mas_usado)
                {
                    veces[i]++;
                }
           }
        }
            num_mas_usado = 0;
            for(int k = 0; k < veces.length; k++)
            {
                if(num_mas_usado < veces [k])
                {
                    num_mas_usado = veces [k];
                    posicion = k;
                }
            }           
            return valor[posicion];
        }
        
        
        public float varianza()
        {
            float va=0;
            float parcial=0;
            float dispersion=0;
            
            float resultado;
            
            for(int i=0; i<valor.length; i++)
            {
                
                dispersion=valor[i]- media();
                parcial=(float) Math.pow(dispersion , 2);
                
                va +=parcial;
            }
            
            resultado=va/(valor.length-1);
            
            return resultado;
            
        }
        
        public float desviacion_estandar()
        {
           float s=0;
            
            s=(float) Math.sqrt(varianza());
            
            return s;
        }
        
        
        public float coeficiente()
        {
            float coeficiente=0;
            
            coeficiente=(desviacion_estandar()/media()) * 100;
            
            return coeficiente;
        }
}
