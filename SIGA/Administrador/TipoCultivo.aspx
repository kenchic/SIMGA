<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="TipoCultivo.aspx.cs" Inherits="SIMGA.Administrador.TipoCultivo" %>
<%@ Register src="../Controles/Administrador/uc_TipoCultivo.ascx" tagname="uc_TipoCultivo" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:uc_TipoCultivo ID="uc_TipoCultivo1" runat="server" />
</asp:Content>
