using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TARJETA_PRESENTACION.Sources.Pages
{
    public partial class FrmIndex : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Admin(object sender, EventArgs e)
        {
            Response.Redirect("/Sources/Pages/Admin.aspx");
        }
        protected void Trans(object sender, EventArgs e)
        {
            Response.Redirect("/Sources/Pages/Trans.aspx");
        }
    }
}