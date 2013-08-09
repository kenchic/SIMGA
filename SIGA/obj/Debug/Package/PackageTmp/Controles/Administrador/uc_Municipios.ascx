<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_Municipios.ascx.cs" Inherits="SIMGA.Controles.Administrador.uc_Municipios" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<telerik:RadGrid ID="rgrFormulario" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True"
    AllowPaging="True" AllowSorting="True" CellSpacing="0" Culture="es-ES"
    GridLines="None" AllowAutomaticUpdates="True" AllowCustomPaging="True" OnNeedDataSource="rgrFormulario_NeedDataSource">
    <PagerStyle Visible="true" Mode="NextPrevAndNumeric" AlwaysVisible="True" />
    <ExportSettings ExportOnlyData="True" FileName="HSESP_Usuarios" HideStructureColumns="True"
        IgnorePaging="True" OpenInNewWindow="True">
    </ExportSettings>
    <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" OverrideDataSourceControlSorting="True" >
        <CommandItemSettings ExportToPdfText="Export to PDF" ShowExportToExcelButton="True"></CommandItemSettings>
        <%--Encabezado manual--%>
        <CommandItemTemplate>
            <div style="padding: 5px 5px; float: left; text-align: left;">
                <asp:LinkButton  ID="InitInsertButton" runat="server" CommandName="InitInsert" ToolTip=" Agregar Nuevo Registro"><img style="border:0px;vertical-align:middle;" alt="" src='<%=ResolveUrl("~/Imagenes/Iconos/AddRecord.gif") %>' />&nbsp;&nbsp; Agregar &nbsp;&nbsp;</asp:LinkButton>|
                <asp:CheckBox ID="ckbActivarFiltro" runat="server" OnCheckedChanged="ckbActivarFiltro_CheckedChanged"
                    Text=" Activar Filtro" ToolTip=" Activar filtro de Busqueda" AutoPostBack="true"
                    CssClass="checkbox" />
            </div>
            <div style="padding: 5px 5px; float: right; text-align: right;">
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="RebindGrid" ToolTip=" Actualizar Tabla"><img style="border:0px;vertical-align:middle;" alt="" src='<%=ResolveUrl("~/Imagenes/Iconos/Refresh.gif") %>' />&nbsp;&nbsp; Actualizar&nbsp;&nbsp;</asp:LinkButton>|&nbsp;&nbsp;
                <asp:Button ID="btnExpXLS" runat="server" Text=" " CssClass="rgExpXLS" CommandName="ExportToExcel"
                    ToolTip=" Exportar a Excel" />
            </div>
        </CommandItemTemplate>
        <RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column">
            <HeaderStyle Width="20px"></HeaderStyle>
        </RowIndicatorColumn>
        <ExpandCollapseColumn Visible="True" FilterControlAltText="Filter ExpandColumn column">
            <HeaderStyle Width="20px"></HeaderStyle>
        </ExpandCollapseColumn>
        <Columns>
            <telerik:GridEditCommandColumn FilterControlAltText="Filter Editar column" UniqueName="Editar"
                ButtonType="ImageButton">
            </telerik:GridEditCommandColumn>
            <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="Delete" ConfirmDialogType="RadWindow"
                ConfirmText="¿Eliminar el registro?" ConfirmTitle="Eliminar" FilterControlAltText="Filter DeleteColumn column"
                Text="Eliminar" UniqueName="DeleteColumn">
            </telerik:GridButtonColumn>
        </Columns>
        <EditFormSettings>
            <EditColumn FilterControlAltText="Filter EditCommandColumn column" ButtonType="ImageButton">
            </EditColumn>
        </EditFormSettings>
        <PagerStyle AlwaysVisible="True" />
    </MasterTableView>
    <HeaderStyle HorizontalAlign="Center" />
    <FilterMenu EnableImageSprites="False">
    </FilterMenu>
    <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Web20">
    </HeaderContextMenu>
</telerik:RadGrid>

<telerik:RadWindowManager ID="rwmManagerPopUp" runat="server" Skin="Default">
</telerik:RadWindowManager>
<telerik:RadAjaxLoadingPanel ID="rlpUsuarios" runat="server" Skin="Web20">
</telerik:RadAjaxLoadingPanel>
<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
    <AjaxSettings>
        <telerik:AjaxSetting AjaxControlID="rgrFormulario">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="rgrFormulario"
                    LoadingPanelID="rlpUsuarios" />
            </UpdatedControls>
        </telerik:AjaxSetting>
    </AjaxSettings>
</telerik:RadAjaxManagerProxy>
