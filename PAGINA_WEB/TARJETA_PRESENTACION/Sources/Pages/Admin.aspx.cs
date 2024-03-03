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

            using (con)
            {
                using (SqlCommand cmd = new SqlCommand("Crear", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@IdProducto", SqlDbType.VarChar).Value = tbIdProducto.Text;
                    cmd.Parameters.Add("@IdOrden", SqlDbType.VarChar).Value = tbIdOrden.Text;
                    cmd.Parameters.Add("@Destino", SqlDbType.VarChar).Value = tbDestino.Text;
                    cmd.Parameters.Add("@NombreCliente", SqlDbType.VarChar).Value = tbNombreCliente.Text;            
                    cmd.ExecuteNonQuery();
                }
                con.Close();
                Response.Write("<scr" + "ipt language=javascript>alert('Creado Exitosamente');</" + "script>");
            }
            
        
        }
        protected void Modificar(object sender, EventArgs e)
        {
            using (con)
            {
                using (SqlCommand cmd = new SqlCommand("Editar", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@IdPedido", SqlDbType.VarChar).Value = hidenId.Text;
                    cmd.Parameters.Add("@IdProducto", SqlDbType.VarChar).Value = tbIdProducto.Text;
                    cmd.Parameters.Add("@IdOrden", SqlDbType.VarChar).Value = tbIdOrden.Text;
                    cmd.Parameters.Add("@Destino", SqlDbType.VarChar).Value = tbDestino.Text;
                    cmd.Parameters.Add("@NombreCliente", SqlDbType.VarChar).Value = tbNombreCliente.Text;            
                    cmd.ExecuteNonQuery();
                }
                con.Close();
                Response.Write("<scr" + "ipt language=javascript>alert('Modificado Exitosamente');</" + "script>");
            }
            

        }
        protected void Eliminar(object sender, EventArgs e)
        {
            using (con)
            {
                using (SqlCommand cmd = new SqlCommand("Eliminar", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@IdPedido", SqlDbType.VarChar).Value = hidenId.Text;         
                    cmd.ExecuteNonQuery();
                }
                con.Close();
                Response.Write("<scr" + "ipt language=javascript>alert('Eliminado Exitosamente');</" + "script>");
            }

        }
    }
}