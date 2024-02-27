<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TARJETA_PRESENTACION.Sources.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maxiimum-scale=1.0, minimum-scale=1.0"/>
   
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <style>
        .contenedor{
            
            background-color:cornsilk;
            height:90vh;
            width: 50vh;
            margin: 1% 0.5% 0.5% 30%;

            display: flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
        }
    </style>

    <title>TARJETA</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <br />
            <br />
            <asp:Image runat="server" ID="image" CssClass="form-control img-thumbnail" Height="200px" Width="201px" />
            <br />
            <br />
            <p>
                <asp:TextBox ID="tbNombres" runat="server" Enabled="false" BackColor="Transparent" BorderColor="Transparent"></asp:TextBox>
            </p>
            <asp:TextBox ID="tbCorreo" runat="server" Enabled="false" BackColor="Transparent" BorderColor="Transparent"></asp:TextBox>
            <p>
                <br />
                <br />
                <asp:Button CssClass=" btn-outline-primary btn-m" ID ="Facebook" runat="server" Text="Facebook" />
                <asp:Button CssClass=" btn-outline-success btn-m" ID="Whatsapp" runat="server" Text="WhatsApp" />
                <asp:Button CssClass=" btn-outline-danger btn-m" ID="Correo" runat="server" Text="Correo" />
                <asp:Button CssClass=" btn-outline-info btn-m" ID="Instagram" runat="server" Text="Instagram" />
            </p>
     </div>
    </form>
</body>
</html>
