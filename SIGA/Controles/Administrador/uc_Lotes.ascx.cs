using System;
using System.Data;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace SIMGA.Controles.Administrador
{
    public partial class uc_Lotes : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            var datos = new DataTable();
            datos.Columns.Add("Finca");
            datos.Columns.Add("No Lote");
            datos.Columns.Add("Tipo Cultivo");
            datos.Columns.Add("Secciones");
            datos.Columns.Add("Area");
           
            var row = datos.NewRow();
            row["Finca"] = "Finca 1";
            row["No Lote"] = "No. 1";
            row["Tipo Cultivo"] = "Palma";
            row["Secciones"] = "1";
            row["Area"] = "50 mt2";
            datos.Rows.Add(row);

            row = datos.NewRow();
            row["Finca"] = "Finca 1";
            row["No Lote"] = "No. 2";
            row["Secciones"] = "1";
            row["Area"] = "85 mt2";
            datos.Rows.Add(row);

            row = datos.NewRow();
            row["Finca"] = "Finca 1";
            row["No Lote"] = "No. 3";
            row["Secciones"] = "2";
            row["Area"] = "25 mt2";
            datos.Rows.Add(row);

            row = datos.NewRow();
            row["Finca"] = "Finca 1";
            row["No Lote"] = "no. 4";
            row["Secciones"] = "1";
            row["Area"] = "140 mt2";
            datos.Rows.Add(row);

            ViewState["Datos"] = datos;
            ViewState["ckbActivarFiltro"] = "";
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