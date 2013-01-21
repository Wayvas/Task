using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Logica
{
    public class Log
    {
        public bool insertar(Comun.Vars p)
        {
            bool Resultado = false;

            

            if (p != null)
            {
                if (p.StartDate != null)
                { 
                    if  (!string.IsNullOrEmpty(p.TaskName))
                    {
                        if (p.DueDate != null)
                        {
                            AccesoADatos.Conn o = new AccesoADatos.Conn();
                            Resultado = o.Insertar(p);
                        }

                    }
                }
            }

            return Resultado;
        }
       public  System.Collections.Generic.List<Comun.Vars> ObtenerCatalogo()
        {
           AccesoADatos.Conn o = new AccesoADatos.Conn();//Creacion de una instancia
           return o.ObtenerCatalogo();
        }
       public System.Collections.Generic.List<Comun.Vars> TareasPendientes()
       {
           AccesoADatos.Conn o = new AccesoADatos.Conn();//Creacion de una instancia
           return o.TareasPendientes();
       }
    }



}
