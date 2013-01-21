    using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccesoADatos
{

    
    //Inicia Modulo de  Metodos
    public class Conn
    {
        public System.Collections.Generic.List<Comun.Vars> TareasPendientes()
        {
            //Realizar metodo de conexión
            System.Data.SqlClient.SqlConnection cn = new System.Data.SqlClient.SqlConnection();
            //Activa o Desactivar String de Conexion
            cn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Wayvas\\Task\\Presentacion\\App_Data\\Task.mdf;Integrated Security=True;User Instance=True";
            //cn.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=Task;Integrated Security=True";      
            cn.Open();//Iniciamos la Conexion

            System.Data.SqlClient.SqlCommand cm = new System.Data.SqlClient.SqlCommand();
            cm.Connection = cn;
            cm.CommandType = System.Data.CommandType.Text;
            cm.CommandText = "select TaskName,StartDate,DueDate,TaskComs from Task where DueDate >= CONVERT(date,getdate());";

            var Resultado = new System.Collections.Generic.List<Comun.Vars>();
            var dr = cm.ExecuteReader();
            while (dr.Read())
            {
                Resultado.Add(new Comun.Vars(dr.GetString(0), dr.GetDateTime(1), dr.GetDateTime(2), dr.GetString(3)));
            }
            cn.Close();
            return Resultado;

        }


        public System.Collections.Generic.List<Comun.Vars> ObtenerCatalogo()
        {
            //Realizar metodo de conexión
            System.Data.SqlClient.SqlConnection cn = new System.Data.SqlClient.SqlConnection();
            //Activa o Desactivar String de Conexion
            cn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Wayvas\\Task\\Presentacion\\App_Data\\Task.mdf;Integrated Security=True;User Instance=True";
            //cn.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=Task;Integrated Security=True";      
            cn.Open();//Iniciamos la Conexion

            System.Data.SqlClient.SqlCommand cm = new System.Data.SqlClient.SqlCommand();
            cm.Connection = cn;
            cm.CommandType = System.Data.CommandType.Text;
            cm.CommandText = "select TaskName,DueDate,TaskComs from Task where DueDate= CONVERT(date,getdate());";

            var Resultado = new System.Collections.Generic.List< Comun.Vars>();
            var dr= cm.ExecuteReader();
            while (dr.Read())
                { 
                Resultado.Add(new Comun.Vars(dr.GetString(0),dr.GetDateTime(1),dr.GetString(2)));
                }
            cn.Close();
            return Resultado;

        }


        //Metodo de Iserción de Datos
        public bool Insertar(Comun.Vars p)
        {  bool Resultado = false;
           //Realizar metodo de conexión
            System.Data.SqlClient.SqlConnection cn = new System.Data.SqlClient.SqlConnection();
            //Activa o Desactivar String de Conexion
            cn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Wayvas\\Task\\Presentacion\\App_Data\\Task.mdf;Integrated Security=True;User Instance=True";
            //cn.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=Task;Integrated Security=True";      
            cn.Open();//Iniciamos la Conexion
          
            System.Data.SqlClient.SqlCommand cm =new System.Data.SqlClient.SqlCommand();
            cm.Connection=cn;
            cm.CommandType=System.Data.CommandType.Text;
            cm.CommandText = "Insert into Task(TaskName,StartDate,DueDate,CompDate,TaskComs) Values(@P_TaskName,@P_StartDate,@P_DueDate,@P_CompDate,@P_TaskComs)";
            
            cm.Parameters.AddWithValue("@P_TaskName", p.TaskName);
            cm.Parameters.AddWithValue("@P_StartDate", p.StartDate);
            cm.Parameters.AddWithValue("@P_DueDate", p.DueDate);
            cm.Parameters.AddWithValue("@P_CompDate", p.CompDate);
            cm.Parameters.AddWithValue("@P_TaskComs", p.TaskComs);

            int ra = cm.ExecuteNonQuery();
                   if (ra==1)
                   { Resultado=true;}
            cn.Close();
            cn.Dispose();
            return Resultado;
        }

          }
    //Fin de Modulo de Metodos


}
