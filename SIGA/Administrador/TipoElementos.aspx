<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="TipoElementos.aspx.cs" Inherits="SIMGA.Administrador.TipoElementos" %>
<%@ Register src="../Controles/Administrador/uc_TipoElemento.ascx" tagname="uc_TipoElemento" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:uc_TipoElemento ID="uc_TipoElemento1" runat="server" />
</asp:Content>
