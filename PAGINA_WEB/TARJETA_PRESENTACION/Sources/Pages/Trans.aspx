<%@ Page Title="" Language="C#" MasterPageFile="~/Sources/Pages/MP.Master" AutoEventWireup="true" CodeBehind="Trans.aspx.cs" Inherits="TARJETA_PRESENTACION.Sources.Pages.Trans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    TRANSPORTADOR
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
 <br />
 <br />
 <br />
 <div class="container d-flex justify-content-center align-items-center">
     <div class="col-5">
         <div class=" card card-body align-items-center">
             <div class="modal-title align-content-center h3">
                  <asp:Label runat="server" Text="Pedidos" Font-Size="Larger"></asp:Label>
             </div>
             <br />
             <br />
    <div class="input-group">
    <asp:TextBox runat="server" CssClass="form-control" placeholder="IdOrden" ID="tbIdOrden"></asp:TextBox>
</div>
<br />
<br />
<div class="input-group">
    <asp:Button runat="server" CssClass="form-control btn btn-dark" Text="Modificar estado de entrega" OnClick="Modificar"></asp:Button>
</div>
                 <br />
                 <br />
                 <div>
                     <asp:Button runat="server" CssClass="form-control btn btn-danger" Text="Cancelar" OnClick="Cancelar"></asp:Button>
                 </div>
</div>
         </div>
     </div>
</asp:Content>
