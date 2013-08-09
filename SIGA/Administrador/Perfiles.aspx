<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Perfiles.aspx.cs" Inherits="SIMGA.Administrador.Perfiles" %>
<%@ Register src="../Controles/Administrador/uc_Perfiles.ascx" tagname="uc_Perfiles" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:uc_Perfiles ID="uc_Perfiles1" runat="server" />
</asp:Content>
