<%@ Page Title="" Language="C#" MasterPageFile="~/Sources/Pages/MP.Master" AutoEventWireup="true" CodeBehind="FrmEstado.aspx.cs" Inherits="TARJETA_PRESENTACION.Sources.Pages.FrmEstado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    ESTADO DE ENTREGA
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
                   <asp:Label runat="server" Text="Estado de la orden" Font-Size="Larger"></asp:Label>
              </div>
                <br />
  <br />
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="CheckCamino">
  <label class="form-check-label" for="flexCheckDefault">
    En Camino
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="CheckEntregado" checked>
  <label class="form-check-label" for="flexCheckDefault">
    Entregado
  </label>
</div>
              <div>
    <asp:Button runat="server" CssClass="form-control btn btn-dark" Text="Aceptar" OnClick="Aceptar"></asp:Button>

                 <br />
                 <br />
            
                     <asp:Button runat="server" CssClass="form-control btn btn-danger" Text="Cancelar" OnClick="Cancelar"></asp:Button>
                 </div>
              </div>
          </div>
      </div>
</asp:Content>
