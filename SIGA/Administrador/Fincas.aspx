<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Fincas.aspx.cs" Inherits="SIMGA.Administrador.Fincas" %>

<%@ Register Src="../Controles/Administrador/uc_Fincas.ascx" TagName="uc_Fincas" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div style="text-align: center;">
        FINCAS
    </div>
    <div style="text-align: center;">
        Aquí se administran las fincas del cliente. 
    </div>
    <div style=" float:left;  width: 49%;">
        <uc1:uc_Fincas ID="uc_Fincas1" runat="server" />
    </div>
    <div style="float:right;  width: 50%; height: 500px">
        <iframe style="width: 100%; height: 100%" src="http://www.arcgis.com/home/webmap/viewer.html?webmap=591d7c40f4694377bb485e99400af2b6"></iframe>
    </div>
</asp:Content>
