using System;
using Telerik.Web.UI;

namespace SIMGA.Controles.Administrador
{
    public partial class uc_Menu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        public void iniciar()
        {
            RadMenu.LoadContentFile("~/xml/mnuAdmin.xml");
        }

        protected void RadMenu_ItemDataBound(object sender, RadMenuEventArgs e)
        {
            switch (e.Item.Text)
            {
                case "Inicio":
                    {
                        e.Item.ImageUrl = "~/Imagenes/Iconos/home.png";
                    }
                    break;

                case "Administración":
                    {
                        e.Item.ImageUrl = "~/Imagenes/Iconos/key.png";
                    }
                    break;

                case "Tablas Básicas":
                    {
                        e.Item.ImageUrl = "~/Imagenes/Iconos/table.png";
                    }
                    break;

                case "Recolección":
                    {
                        e.Item.ImageUrl = "~/Imagenes/Iconos/recoleccion.png";
                    }
                    break;
                case "Clasificación":
                    {
                        e.Item.ImageUrl = "~/Imagenes/Iconos/clasificacion.png";
                    }
                    break;
                case "Manejo":
                    {
                        e.Item.ImageUrl = "~/Imagenes/Iconos/manejo.png";
                    }
                    break;

                case "Reportes":
                    {
                        e.Item.ImageUrl = "~/Imagenes/Iconos/report.png";
                    }
                    break;

                case "Ayuda":
                    {
                        e.Item.ImageUrl = "~/Imagenes/Iconos/lifebuoy.png";
                    }
                    break;

                case "Salir":
                    {
                        e.Item.ImageUrl = "~/Imagenes/Iconos/cross-button.png";
                    }
                    break;
            }

        }

    }
}