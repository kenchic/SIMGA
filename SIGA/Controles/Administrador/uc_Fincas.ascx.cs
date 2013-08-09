using System;
using System.Data;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace SIMGA.Controles.Administrador
{
    public partial class uc_Fincas : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            var datos = new DataTable();
            datos.Columns.Add("Empresa");
            datos.Columns.Add("Número");
            datos.Columns.Add("Nombre");
            datos.Columns.Add("Tipo Cultivo");
            datos.Columns.Add("Número de Hectárias");
            datos.Columns.Add("Número de Lotes");
            datos.Columns.Add("Latitud");
            datos.Columns.Add("Longitud");
            datos.Columns.Add("Altitud");
           
            var row = datos.NewRow();
            row["Empresa"] = "Sociedad Agrícola de Palmeros S.A.";
            row["Número"] = "1";
            row["Nombre"] = "La Primavera";
            row["Tipo Cultivo"] = "Palma";
            row["Número de Hectárias"] = "200 Hts";
            row["Número de Lotes"] = "4";
            row["Latitud"] = "768950";
            row["Longitud"] = "450869";
            row["Altitud"] = "680";
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