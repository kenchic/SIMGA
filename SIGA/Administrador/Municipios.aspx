<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Municipios.aspx.cs" Inherits="SIMGA.Administrador.Municipios" %>

<%@ Register Src="../Controles/Administrador/uc_Municipios.ascx" TagName="uc_Municipios" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div style="text-align: center;">
        FINCAS
    </div>
    <div style="text-align: center;">
        Aquí se administran las fincas del cliente. 
    </div>
    <div style=" float:left;  width: 100%;">
        <uc1:uc_Municipios ID="uc_Fincas1" runat="server" />
    </div>
    
</asp:Content>
