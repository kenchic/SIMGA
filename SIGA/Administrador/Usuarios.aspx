<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="SIMGA.Administrador.Usuarios" %>
<%@ Register src="../Controles/Administrador/uc_Usuarios.ascx" tagname="uc_Usuarios" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:uc_Usuarios ID="uc_Usuarios1" runat="server" />
</asp:Content>
