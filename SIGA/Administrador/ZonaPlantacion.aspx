<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="ZonaPlantacion.aspx.cs" Inherits="SIMGA.Administrador.ZonaPlantacion" %>

<%@ Register src="../Controles/Administrador/uc_ZonasPlantacion.ascx" tagname="uc_ZonasPlantacion" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
        ZONA PLANTACIÓN
    </div>
    <div style="text-align: center;">
        Aquí se administran las zonas de plantación del país.
    </div>
    <div style=" float:left;  width: 100%;">
         <uc2:uc_ZonasPlantacion ID="uc_ZonasPlantacion1" runat="server" />
    </div>
</asp:Content>
