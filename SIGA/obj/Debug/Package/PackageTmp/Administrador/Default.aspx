<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SIMGA.Administrador.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            font-family: Arial;
        }

        .style4
        {
            font-family: Arial;
            font-size: small;
        }

        .style5
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <table style="width: 100%; font-family: Arial">
        <tbody class="style5">
            <tr style="background-color: #749F57" valign="baseline">
                <td align="left" class="style6">
                    <asp:Label ID="lblIndex1" runat="server" SkinID="sknEncabezadoPagGrande"
                        Text="BIENVENIDO" Style="color: #FFFFFF"></asp:Label>
                </td>
            </tr>
            <tr valign="baseline">
                <td align="left">
                    <br />
                    <div id="div2" style="text-align: justify; color: #000000; font-size: ''small'';"
                        class="style3">
                        
                        El sistema 
                    SIMGA, en una herramienta que permite .....<br />
                    </div>
                    <br />
                </td>
            </tr>
            <tr valign="baseline">
                <td align="left">
                    <div id="div3" style="text-align: left; color: #5E5D5B; font-size: ''small'';"
                        class="style3">
                        Manejo de Confidencialidad<br />
                    </div>
                </td>
            </tr>
            <tr valign="baseline">
                <td align="left">
                    <br />
                    <div id="div1" style="text-align: justify; color: #000000; font-size: ''small'';"
                        class="style3">
                        <span>La información que contiene esta herramienta es confidencial ...</span><br />
                    </div>
                    <br />
                </td>
            </tr>
        </tbody>
    </table>
    <p style="text-align: center;"
        class="style4">
        © 2013 xxxxxx.Todos los derechos reservados.
    </p>


</asp:Content>
