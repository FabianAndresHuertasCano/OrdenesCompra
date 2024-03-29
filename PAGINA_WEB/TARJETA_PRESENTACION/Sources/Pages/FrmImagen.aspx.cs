﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TARJETA_PRESENTACION.Sources.Pages
{
    public partial class FrmImagen : System.Web.UI.Page
    {
       // private static string con = ConfigurationManager.ConnectionStrings["conexion"].ToString();
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuariologueado"]==null)
            {
                Response.Redirect("/Sources/Pages/FrmLogin.aspx");
            }
            else
            {
                using (con)
                {
                    using(SqlCommand cmd = new SqlCommand("CargarImagen",con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = Request.QueryString["id"];
                        con.Open();
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            byte[] imagen = (byte[])dr["Imagen"];
                            Response.BinaryWrite(imagen);
                        }
                    }
                }
            }
        }
    }
}