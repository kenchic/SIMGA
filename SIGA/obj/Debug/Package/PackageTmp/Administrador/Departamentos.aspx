<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Departamentos.aspx.cs" Inherits="SIMGA.Administrador.Departamentos" %>

<%@ Register Src="../Controles/Administrador/uc_Departamentos.ascx" TagName="uc_Departamentos" TagPrefix="uc1" %>
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
        <uc1:uc_Departamentos ID="uc_Fincas1" runat="server" />
    </div>
    
</asp:Content>
