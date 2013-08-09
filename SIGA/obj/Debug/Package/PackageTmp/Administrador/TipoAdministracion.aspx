<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="TipoAdministracion.aspx.cs" Inherits="SIMGA.Administrador.TipoAdministracion" %>
<%@ Register src="../Controles/Administrador/uc_TipoAdministracion.ascx" tagname="uc_TipoAdministracion" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:uc_TipoAdministracion ID="uc_TipoAdministracion1" runat="server" />
</asp:Content>
