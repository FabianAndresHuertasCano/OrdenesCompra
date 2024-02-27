using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TARJETA_PRESENTACION.Sources.Pages
{
    public partial class Trans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Cancelar(object sender, EventArgs e)
        {
            Response.Redirect("/Sources/Pages/FrmIndex.aspx");
        }
        protected void Modificar(object sender, EventArgs e)
        {
            Response.Redirect("/Sources/Pages/FrmEstado.aspx");
        }
    }
}