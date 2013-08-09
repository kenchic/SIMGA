<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Gremios.aspx.cs" Inherits="SIMGA.Administrador.Gremios" %>
<%@ Register Src="../Controles/Administrador/uc_Gremios.ascx" TagName="uc_Gremios" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
        PAISES
    </div>
    <div style="text-align: center;">
        Aquí se administran los paises.
    </div>
    <div style=" float:left;  width: 100%;">
         <uc1:uc_Gremios ID="Gremios1" runat="server" />
    </div>
</asp:Content>
