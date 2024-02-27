<%@ Page Title="" Language="C#" MasterPageFile="~/Sources/Pages/MP.Master" AutoEventWireup="true" CodeBehind="FrmIndex.aspx.cs" Inherits="TARJETA_PRESENTACION.Sources.Pages.FrmIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Inicio
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    
<div class="col-15 row justify-content-center">
<div class="align-items-center col-auto">
    <br />
    <br />
<fieldset>
<asp:table runat="server" >
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button runat="server" CssClass="form-control btn btn-dark" ID="BtnAdmin" Text="Administrador" OnClick="Admin"></asp:Button>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button runat="server" CssClass="form-control btn btn-danger" ID="BtnTrans" Text="Transportador" OnClick="Trans"></asp:Button>
            </asp:TableCell>
        </asp:TableRow>
    </asp:table>
    </fieldset>
    </div>
    </div>


</asp:Content>
