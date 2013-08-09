using System;
using System.Web.UI;

namespace SIMGA.Administrador
{
    public partial class Administrador : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblNombreUsuario.Text = "ROGER ROJAS";
                uc_Menu1.iniciar();
            }
        }

        protected void RadScriptManager1_AsyncPostBackError(object sender, AsyncPostBackErrorEventArgs e)
        {
            RadScriptManager1.AsyncPostBackErrorMessage = e.Exception.Message;
        }
    }
}