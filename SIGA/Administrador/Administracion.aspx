<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Administracion.aspx.cs" Inherits="SIMGA.Administrador.Administracion" %>
<%@ Register src="../Controles/Administrador/uc_Administracion.ascx" tagname="uc_Administracion" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:uc_Administracion ID="uc_Administracion1" runat="server" />
</asp:Content>
