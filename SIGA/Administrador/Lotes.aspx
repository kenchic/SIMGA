<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Lotes.aspx.cs" Inherits="SIMGA.Administrador.Lotes" %>
<%@ Register src="../Controles/Administrador/uc_Lotes.ascx" tagname="uc_Lotes" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
        LOTES
    </div>
    <div style="text-align: center;">
        Aquí se administran los lotes de la finca.
    </div>
    <div style=" float:left;  width: 49%;">
         <uc1:uc_Lotes ID="uc_Lotes1" runat="server" />
    </div>
    <div style="float:right;  width: 50%; height: 500px">
        <iframe style="width: 100%; height: 100%" src="http://www.arcgis.com/home/webmap/viewer.html?webmap=591d7c40f4694377bb485e99400af2b6"></iframe>
    </div>
</asp:Content>
