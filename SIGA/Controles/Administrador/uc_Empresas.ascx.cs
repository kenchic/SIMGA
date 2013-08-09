using System;
using System.Data;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace SIMGA.Controles.Administrador
{
    public partial class uc_Empresas : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            var datos = new DataTable();
            datos.Columns.Add("País");
            datos.Columns.Add("Zona de Plantación");
            datos.Columns.Add("Municipio");
            datos.Columns.Add("Tipo de Gremio");
            datos.Columns.Add("Sección de Gremio");
            datos.Columns.Add("Nombre");
            datos.Columns.Add("Sigla(s)");
            datos.Columns.Add("Nit/Rut/CC");
            datos.Columns.Add("Numero de Finca(s)");
            datos.Columns.Add("Video Empresa");

            var row = datos.NewRow();
            row["País"] = "Colombia";
            row["Zona de Plantación"] = "Central";
            row["Municipio"] = "Puerto Wilches";
            row["Tipo de Gremio"] = "Empresarial";
            row["Sección de Gremio"] = "Asociación";
            row["Nombre"] = "Sociedad Agrícola de Palmeros S.A.";
            row["Sigla(s)"] = "Agropalma S.A.";
            row["Nit/Rut/CC"] = "800.235.218 – 1";
            row["Numero de Finca(s)"] = "1";
            row["Video Empresa"] = "https://www.youtube.com/watch?v=Be9DQYXzg1Q";
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