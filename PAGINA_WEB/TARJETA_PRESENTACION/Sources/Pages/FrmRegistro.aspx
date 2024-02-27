<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRegistro.aspx.cs" Inherits="TARJETA_PRESENTACION.Sources.Pages.FrmRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maxiimum-scale=1.0, minimum-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="../JavaScript/JavaScript.js"></script>

    <title>Registro de Usuarios</title>
</head>
<body>
    <form id="FrmRegistro" runat="server">
        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div class="form-control card card-body">
                    <div class="row justify-content-center">
                        <asp:Label runat="server" CssClass="row justify-content-center h3">Registro de usuarios</asp:Label>
                    </div>
                    <fieldset>
                        <legend class="row justify-content-center">Datos Personales</legend>
                        <div class="input-group">
                            <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Nombres y Apellidos:"></asp:Label>
                            <asp:TextBox ID="tbNombres" CssClass="form-control" runat="server" placeholder="Nombre y Apellido"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Correo:"></asp:Label>
                            <asp:TextBox ID="tbCorreo" CssClass="form-control" runat="server" placeholder="Correo"></asp:TextBox>
                        </div>
                        <br />
                         <div class="input-group">
                            <asp:Label ID="Label3" CssClass="form-control" runat="server" Text="Celular:"></asp:Label>
                            <asp:TextBox ID="tbFacebook" CssClass="form-control" runat="server" placeholder="Numero"></asp:TextBox>
                        </div>
                         <br />
                         <div class="input-group" hidden="hidden">
                            <asp:Label ID="Label7" CssClass="form-control" runat="server" Text="WhatsApp:"></asp:Label>
                            <asp:TextBox ID="tbWhatsApp" CssClass="form-control"  runat="server" placeholder="link WhatsApp"></asp:TextBox>
                        </div>
                         <br />
                         <div class="input-group" hidden="hidden">
                            <asp:Label ID="Label8" CssClass="form-control" runat="server" Text="Correo:"></asp:Label>
                            <asp:TextBox ID="tbCorreolink" CssClass="form-control" runat="server" placeholder="link correo"></asp:TextBox>
                        </div>
                        <br />
                         <div class="input-group" hidden="hidden">
                            <asp:Label ID="Label9" CssClass="form-control" runat="server" Text="Instagram:"></asp:Label>
                            <asp:TextBox ID="tbInstagram" CssClass="form-control" runat="server" placeholder="link Instagram"></asp:TextBox>
                        </div>
                    </fieldset>
                    <br />
                    <fieldset>
                        <legend class="row justify-content-center">Datos de Inicio de Sesión</legend>
                        <div class="input-group">
                            <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="Usuario:"></asp:Label>
                            <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Usuario"></asp:TextBox>
                        </div>  
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label5" CssClass="form-control" runat="server" Text="Clave:"></asp:Label>
                            <asp:TextBox ID="tbClave" CssClass="form-control" runat="server" Textmode="Password" placeholder="Clave"></asp:TextBox>
                        </div> 
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label6" CssClass="form-control" runat="server" Text="Repetir Clave:"></asp:Label>
                            <asp:TextBox ID="tbClave2" CssClass="form-control" runat="server" Textmode="Password" placeholder="Clave nuevamente"></asp:TextBox>
                        </div>  
                        <br />
                        <div class="row justify-content-center">
                            <asp:Image runat="server" CssClass="img-thumbnail" Width="150" Height="150" ImageUrl="~/Sources/Images/User.png"/>
                        </div>
                        <div class="row justify-content-center">
                            <asp:FileUpload runat="server" CssClass="small form-control" ID="FUImage" onchange="mostrarimagen(this)"/>
                        </div>
                    </fieldset>
                    <br />
                    <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    <br />
                    <div class="row">
                        <asp:Button runat="server" Cssclass="form-control btn btn-success" Text="Completar Registro" OnClick="Registrar"/>
                        <hr />
                        <asp:Button runat="server" Cssclass="form-control btn btn-warning" Text="Cancelar" OnClick="Cancelar"/>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
