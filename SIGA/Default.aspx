<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SIMGA.Default" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
       <telerik:RadScriptManager ID="RadScriptManagerGeneral" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js"></asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js"></asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js"></asp:ScriptReference>
            </Scripts>
        </telerik:RadScriptManager>
        <div id="web-page-background-middle-texture" style="margin: 0px; padding: 0px; height: 768px; text-align: center;">
            <div style="height: 100px">
                <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" />
            </div>
            <table cellpadding="0" cellspacing="0" style="width: 100%;">
                <tr>
                    <td style="width: 15%">&nbsp;</td>
                    <td>
                        <div id="FlashDoc" style="width: 560px; height: 360px; background: url(Imagenes/Diseno/fondo_home.jpg);">
                            LOGO SIMGA
                        </div>
                    </td>
                    <td style="width: 10%">
                        &nbsp;
                    </td>
                    <td style="width: 259px">
                        <div  style="margin-bottom: 120px">
                            <div >
                                <div >
                                    <div >
                                        <div style="background: no-repeat url(Imagenes/Diseno/fondo_login.png); width: 329px;
                                            height: 180px; padding: 30px 0 0 30px;">
                                            <asp:Login ID="IniciarSesion" runat="server" BorderPadding="4" FailureText="Nombre de usuario ó contraseña inválida"
                                                Font-Size="10pt" LoginButtonText="Ingresar" Font-Names="Arial, Verdana, Helvetica, sans-serif"
                                                PasswordLabelText="Contraseña:" PasswordRecoveryText="¿Olvidó su contraseña?"
                                                PasswordRecoveryUrl="~/RecordarContrasena.aspx" PasswordRequiredErrorMessage="Contraseña es obligatorio."
                                                RememberMeText="Recordar datos de acceso." TitleText="Iniciar Sesión" UserNameLabelText="Usuario:"
                                                UserNameRequiredErrorMessage="Usuario es obligatorio." DisplayRememberMe="False"
                                                OnAuthenticate="IniciarSesion_Authenticate" Style="text-align: right; margin-left: 0px;">
                                                <TextBoxStyle Font-Size="10pt" Width="100px" />
                                                <LayoutTemplate>
                                                    <div>
                                                        <div>
                                                            <table border="0" cellpadding="0" cellspacing="0" style="width: 270px;">
                                                                <tr>
                                                                    <td align="right" valign="top">
                                                                        <asp:Label ID="UserNameLabel" Text="Usuario:" runat="server" AssociatedControlID="UserName"
                                                                            CssClass="auto-style2"></asp:Label>
                                                                    </td>
                                                                    <td valign="top">
                                                                        <asp:TextBox ID="UserName" runat="server" Font-Size="10pt" Width="100px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                                            ErrorMessage="Usuario es obligatorio." ToolTip="Usuario es obligatorio." ValidationGroup="IniciarSesion">*</asp:RequiredFieldValidator>
                                                                    </td>
                                                                    <td align="right" valign="top">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" valign="top">
                                                                        <asp:Label ID="PasswordLabel" Text="Contraseña:" runat="server" AssociatedControlID="Password"
                                                                            CssClass="auto-style2"></asp:Label>
                                                                    </td>
                                                                    <td valign="top">
                                                                        <asp:TextBox ID="Password" runat="server" Font-Size="10pt" TextMode="Password" Width="100px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                                            ErrorMessage="Contraseña es obligatorio." ToolTip="Contraseña es obligatorio."
                                                                            ValidationGroup="IniciarSesion">*</asp:RequiredFieldValidator>
                                                                    </td>
                                                                    <td align="left" valign="top">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" valign="top">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td colspan="2" valign="top" align="center">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3" style="text-align: center">
                                                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Ingresar" ValidationGroup="IniciarSesion" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" colspan="3" style="color: Red;">
                                                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3" style="text-align: right">
                                                                        <asp:HyperLink ID="PasswordRecoveryLink" runat="server" NavigateUrl="~/RecordarContrasena.aspx"
                                                                            Style="text-align: right; color: #1a8fac;">¿Olvidó 
                                                                        su clave de ingreso?</asp:HyperLink>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </LayoutTemplate>
                                                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                                <TitleTextStyle BackColor="#2B4590" Font-Bold="True" Font-Size="10pt" ForeColor="White" />
                                            </asp:Login>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td width="15%">
                        &nbsp;
                    </td>
                </tr>
            </table>
            <div>&nbsp;</div>
            <div style="text-align: center;">
                <asp:Label ID="lblMensaje" runat="server" SkinID="sknLabelResultado" ForeColor="Red"></asp:Label>
            </div>
            <div id="divEM" style="text-align: center; font-family: 'Arial, Verdana, Helvetica, sans-serif';
                color: #808080;">
                <a href="mailto:info@sigmasig.net">
                    <%= ConfigurationManager.AppSettings["EmailAdmon"]%></a>
            </div>
                <p style="text-align: center;" class="auto-style3">
                    © 2013 SIMGA. Todos los derechos reservados.</p>
        </div>
        </form>
</body>
</html>
