<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="TARJETA_PRESENTACION.Sources.Pages.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maxiimum-scale=1.0, minimum-scale=1.0"/>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <title>Inicio de Sesión</title>
</head>
<body>
    <br />
    <br />
    <br />
    <br />
    <form id="FrmLogin" runat="server" class="container d-flex justify-content-center align-items-center">
        <div class="col-5">
            <div class="form-control card card-body align-items-center">
                <div class="modal-title align-content-center h3">
                     <asp:Label runat="server" Text="Inicio de sesión" Font-Size="Larger"></asp:Label>
                </div>     
                 <br />
                 <div class="input-group">
                     <asp:TextBox runat="server" CssClass="form-control" placeholder="User" ID="tbUsuario"></asp:TextBox>
                 </div>
                 <br />
                 <div class="input-group">
                     <asp:TextBox runat="server" CssClass="form-control" placeholder="Password" TextMode="Password" ID="tbClave"></asp:TextBox>
                 </div>
                 <br />
                 <div class="input-group">
                     <asp:Button runat="server" CssClass="form-control btn btn-dark" Text="LOGIN" OnClick="Iniciar"></asp:Button>
                 </div>
                 <br />
                 <br />
                 <div>
                     <asp:Label runat="server" ID="lblError" class="alert-danger"></asp:Label>
                     <br />
                     <asp:Label runat="server" Text="¿No tienes una cuenta?"></asp:Label>
                     <asp:LinkButton runat="server" Text="Registrate aqui" OnClick="Registrarse"></asp:LinkButton>
                 </div>
            </div>
        </div>
    </form>
</body>
</html>
