using System;
using System.Data;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace SIMGA.Controles.Administrador
{
    public partial class uc_Administracion : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            var datos = new DataTable();
            datos.Columns.Add("Nombre");
            datos.Columns.Add("Tipo Componente");
            datos.Columns.Add("Latitud");
            datos.Columns.Add("Longitud");
            datos.Columns.Add("Altitud");
           
            var row = datos.NewRow();
            row["Nombre"] = "Establos NN";
            row["Tipo Componente"] = "Establo";
            row["Latitud"] = "768950";
            row["Longitud"] = "450869";
            row["Altitud"] = "680";
            datos.Rows.Add(row);

            row = datos.NewRow();
            row["Nombre"] = "Taller NN";
            row["Tipo Componente"] = "Almacen - Taller";
            row["Latitud"] = "768950";
            row["Longitud"] = "450869";
            row["Altitud"] = "680";
            datos.Rows.Add(row);

            row = datos.NewRow();
            row["Nombre"] = "Vivienda NN";
            row["Tipo Componente"] = "Vivienda";
            row["Latitud"] = "768950";
            row["Longitud"] = "450869";
            row["Altitud"] = "680";
            datos.Rows.Add(row);

            row = datos.NewRow();
            row["Nombre"] = "Oficina NN";
            row["Tipo Componente"] = "Oficina";
            row["Latitud"] = "768950";
            row["Longitud"] = "450869";
            row["Altitud"] = "680";
            datos.Rows.Add(row);

            row = datos.NewRow();
            row["Nombre"] = "Almacen NN";
            row["Tipo Componente"] = "Almacen";
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