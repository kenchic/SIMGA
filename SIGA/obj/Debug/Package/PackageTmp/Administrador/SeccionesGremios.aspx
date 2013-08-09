<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="SeccionesGremios.aspx.cs" Inherits="SIMGA.Administrador.SeccionesGremios" %>
<%@ Register Src="../Controles/Administrador/uc_SeccionesGremios.ascx" TagName="uc_SeccionesGremios" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
        SECCIÓN GREMIO
    </div>
    <div style="text-align: center;">
        Aquí se administran las secciones de gremios.
    </div>
    <div style=" float:left;  width: 100%;">
         <uc1:uc_SeccionesGremios ID="SeccionesGremios1" runat="server" />
    </div>
</asp:Content>
