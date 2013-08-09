using System;
using System.Data;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace SIMGA.Controles.Administrador
{
    public partial class uc_Secciones : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            var datos = new DataTable();
            datos.Columns.Add("Lote");
            datos.Columns.Add("Número");
            datos.Columns.Add("Nombre");
            datos.Columns.Add("Tipo Cultivo");
            datos.Columns.Add("Número de Hectárias");
            datos.Columns.Add("Número de Secciones");
            datos.Columns.Add("Latitud");
            datos.Columns.Add("Longitud");
            datos.Columns.Add("Altitud");

            var row = datos.NewRow();
            row["Lote"] = "Finca 1 - Lote 1";
            row["Número"] = "1";
            row["Nombre"] = "Sección 1";
            row["Tipo Cultivo"] = "Palma";
            row["Número de Hectárias"] = "5";
            row["Número de Secciones"] = "2";
            row["Latitud"] = "768950";
            row["Longitud"] = "450869";
            row["Altitud"] = "680";
            datos.Rows.Add(row);

            row = datos.NewRow();
            row["Lote"] = "Finca 1 - Lote 1";
            row["Número"] = "2";
            row["Nombre"] = "Sección 2";
            row["Tipo Cultivo"] = "Otros";
            row["Número de Hectárias"] = "5";
            row["Número de Secciones"] = "1";
            row["Latitud"] = "764450";
            row["Longitud"] = "560869";
            row["Altitud"] = "380";
            datos.Rows.Add(row);
        }

        protected void rgrFormulario_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
        {
            rgrFormulario.DataSource = ViewState["Datos"];
        }

        protected void rgrFormulario_PreRender(object sender, EventArgs e)
        {
            //Si seleccion filtrar se debe habilitar el checkbox
            if (rgrFormulario.MasterTableView.GetItems(GridItemType.CommandItem).Length > 0)
            {
                var cbox = (CheckBox)rgrFormulario.MasterTableView.GetItems(GridItemType.CommandItem)[0].FindControl("ckbActivarFiltro");
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
                rgrFormulario.AllowFilteringByColumn = true;
            }
            else
            {
                ViewState["ckbActivarFiltro"] = "false";
                rgrFormulario.AllowFilteringByColumn = false;
            }
            rgrFormulario.Rebind();
        }
    }
}