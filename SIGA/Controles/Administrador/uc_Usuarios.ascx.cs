using System;
using System.Data;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace SIMGA.Controles.Administrador
{
    public partial class uc_Usuarios : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            var datos = new DataTable();
            datos.Columns.Add("Identificacion");
            datos.Columns.Add("Nombres");
            datos.Columns.Add("Apellidos");
            datos.Columns.Add("Correo");
            datos.Columns.Add("Activo");

            var row = datos.NewRow();
            row["Identificacion"] = "123456789";
            row["Nombres"] = "GERMAN";
            row["Apellidos"] = "ALVAREZ";
            row["Correo"] = "rojas@gmail.com";
            row["Activo"] = true;
            datos.Rows.Add(row);

            row = datos.NewRow();
            row["Identificacion"] = "123456789";
            row["Nombres"] = "ROGER";
            row["Apellidos"] = "ROJAS";
            row["Correo"] = "rojas@gmail.com";
            row["Activo"] = true;
            datos.Rows.Add(row);

            ViewState["Datos"] = datos;
            ViewState["ckbActivarFiltro"] = "";
        }

        protected void rgrUsuarios_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
        {
            rgrUsuarios.DataSource = ViewState["Datos"];
        }

        protected void rgrUsuarios_PreRender(object sender, EventArgs e)
        {
            //Si seleccion filtrar se debe habilitar el checkbox
            if (rgrUsuarios.MasterTableView.GetItems(GridItemType.CommandItem).Length > 0)
            {
                var cbox = (CheckBox)rgrUsuarios.MasterTableView.GetItems(GridItemType.CommandItem)[0].FindControl("ckbActivarFiltro");
                if (cbox != null)
                    cbox.Checked = ViewState["ckbActivarFiltro"].ToString() == "true";
            }
        }

        protected void ckbActivarFiltro_CheckedChanged(object sender, EventArgs e)
        {
            var chkbox = (CheckBox)sender;
            if (chkbox.Checked)
            {
                ViewState["ckbActivarFiltro"] = "true";
                rgrUsuarios.AllowFilteringByColumn = true;
            }
            else
            {
                ViewState["ckbActivarFiltro"] = "false";
                rgrUsuarios.AllowFilteringByColumn = false;
            }
            rgrUsuarios.Rebind();
        }
    }
}