﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TARJETA_PRESENTACION.Sources.Pages
{
    public partial class FrmRegistro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Cancelar(object sender, EventArgs e)
        {
            Response.Redirect("/Sources/Pages/FrmLogin.aspx");
        }
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        protected void Registrar(object sender, EventArgs e)
        {
            
            int tamanioimagen = int.Parse(FUImage.FileContent.Length.ToString());
            string contraseniasinverificar = tbClave.Text;
            Regex letras = new Regex(@"[a-zA-Z]");
            Regex numeros = new Regex(@"[0-9]");
            Regex especiales = new Regex("[!\"#\\$%&'()*+,-./:;=?@\\[\\]{|}~]");
            con.Open();
            SqlCommand usuario = new SqlCommand("ContarUsuario",con)
            {
                CommandType = CommandType.StoredProcedure
            };
            usuario.Parameters.Add("@usuario", SqlDbType.VarChar).Value = tbUsuario.Text;
            int user = Convert.ToInt32(usuario.ExecuteScalar());
            if (tbNombres.Text==""||tbCorreo.Text==""||tbFacebook.Text==""||tbUsuario.Text=="")
            {
                lblError.Text = "Los campos no pueden quedar vacios!";
            }
            else if (user >= 1)
            {
                lblError.Text = "El usuario"+tbUsuario.Text+ "ya existe";
            }
            else if(tbClave.Text!=tbClave2.Text)
            {
                lblError.Text = "Las contraseñas no coinciden";
            }
            else if (!letras.IsMatch(contraseniasinverificar))
            {
                lblError.Text = "La contraseña debe contener letras";
            }
            else if (!numeros.IsMatch(contraseniasinverificar))
            {
                lblError.Text = "La contraseña debe contener numeros";
            }
            else if (!especiales.IsMatch(contraseniasinverificar))
            {
                lblError.Text = "La contraseña debe contener algun caracter especial !#$%&'()*+,-./:;=?@[]{|}~ ";
            }
            else if(!FUImage.HasFile)
            {
                lblError.Text = "No se ha cargado una imagen de perfil";
            }
            else if(tamanioimagen>=2097151000)
            {
                lblError.Text = "El tamaño de la imagen no puede ser mayor a 10 Mb";
            }
            else
            {
                byte[] imagen = FUImage.FileBytes;
                string patron = "TarjetaPresentacion";
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand("Registrar", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Nombres", SqlDbType.VarChar).Value=tbNombres.Text;
                        cmd.Parameters.Add("@Correo", SqlDbType.VarChar).Value = tbCorreo.Text;
                        cmd.Parameters.Add("@Facebook", SqlDbType.VarChar).Value = tbFacebook.Text;
                        cmd.Parameters.Add("@WhatsApp", SqlDbType.VarChar).Value = tbWhatsApp.Text;
                        cmd.Parameters.Add("@Correolink", SqlDbType.VarChar).Value = tbCorreolink.Text;
                        cmd.Parameters.Add("@Instagram", SqlDbType.VarChar).Value = tbInstagram.Text;
                        cmd.Parameters.Add("@Usuario", SqlDbType.VarChar).Value = tbUsuario.Text;
                        cmd.Parameters.Add("@Clave", SqlDbType.VarChar).Value = tbClave.Text;
                        cmd.Parameters.Add("@Patron", SqlDbType.VarChar).Value = patron;
                        cmd.Parameters.Add("@Imagen", SqlDbType.Image).Value = imagen;
                        cmd.Parameters.Add("@IdUsuario", SqlDbType.Int).Value = 0;               
                        cmd.ExecuteNonQuery();
                    }
                    con.Close();
                    Response.Redirect("/Sources/Pages/FrmLogin.aspx");
                }
            }
        }


    }
}