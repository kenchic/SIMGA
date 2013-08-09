using System;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace SIMGA
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void IniciarSesion_Authenticate(object sender, AuthenticateEventArgs e)
        {
            e.Authenticated = true;
            FormsAuthentication.SetAuthCookie("Administrador", false);
            Response.Redirect("Administrador");
        }
    }
}