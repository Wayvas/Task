using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddTask : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {            
            GridView1.DataBind();
        }
 
     

    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    but
    //    Response.Redirect("~/Default.aspx");
       
    //}
    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        lblResultado.Text = "";
        
        Logica.Log o = new Logica.Log();
        Comun.Vars p = new Comun.Vars(
            txtTaskName.Text,
            System.DateTime.Parse(txtStartDate.Text),  
            System.DateTime.Parse(txtDueDate.Text),
            txtCompDate.Text,
            txtTaskComs.Text);
        
        bool resultado = o.insertar(p);

        if (resultado) 
        {lblResultado.Text = "Se resgitro el país";}
        else
        {lblResultado.Text = "Error al Agregar pais";}
        
        
        //Limpieza del las cajas de texto
        txtTaskName.Text = "";
        txtStartDate.Text = "";
        txtDueDate.Text = "";
        txtCompDate.Text = "";
        txtTaskComs.Text = "";

      
           //AccesoADatos.Conn c = new AccesoADatos.Conn();//Creacion de una instancia

        GridView1.DataBind();
        GridView2.DataBind();
    }




    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect" ";
    //}


    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}