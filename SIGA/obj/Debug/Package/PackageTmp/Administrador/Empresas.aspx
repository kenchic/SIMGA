<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Empresas.aspx.cs" Inherits="SIMGA.Administrador.Empresas" %>
<%@ Register src="../Controles/Administrador/uc_Empresas.ascx" tagname="uc_Empresas" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
        EMPRESA
    </div>
    <div style="text-align: center;">
        Aquí se administran los datos de la empresa del cliente.
    </div>
    <div style=" float:left;  width: 49%;">
         <uc1:uc_Empresas ID="uc_Empresas1" runat="server" />
    </div>
    <div style="float:right;  width: 50%; height: 500px">
        <iframe style="width: 100%; height: 100%" src="http://www.arcgis.com/home/webmap/viewer.html?webmap=591d7c40f4694377bb485e99400af2b6"></iframe>
    </div>
</asp:Content>
