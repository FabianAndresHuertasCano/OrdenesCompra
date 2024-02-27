using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Web.Services.Description;

namespace TARJETA_PRESENTACION.Sources.Pages
{
    public partial class Admin : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Cancelar(object sender, EventArgs e)
        {
            Response.Redirect("/Sources/Pages/FrmIndex.aspx");
        }

        protected void Crear(object sender, EventArgs e)
        {

            Response.Write("<scr" + "ipt language=javascript>alert('Creado Exitosamente');</" + "script>");
        
        }
        protected void Modificar(object sender, EventArgs e)
        {

            Response.Write("<scr" + "ipt language=javascript>alert('Modificado Exitosamente');</" + "script>");

        }
        protected void Eliminar(object sender, EventArgs e)
        {

            Response.Write("<scr" + "ipt language=javascript>alert('Eliminado Exitosamente');</" + "script>");

        }
    }
}