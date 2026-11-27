using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mrv_salud
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ConfigurarBotonCuenta();
        }

        private void ConfigurarBotonCuenta()
        {
            bool sesionActiva = Session["SesionActiva"] != null && (bool)Session["SesionActiva"];

            if (sesionActiva)
            {
                string nombre = Session["Nombre"] as string;
                string apellido = Session["Apellido"] as string;
                string usuario = Session["UsuarioActual"] as string;

                string nombreMostrar = !string.IsNullOrWhiteSpace(nombre)
                    ? $"{nombre}".Trim()
                    : (!string.IsNullOrWhiteSpace(usuario) ? usuario : "Mi perfil");

                litTextoBotonCuenta.Text = Server.HtmlEncode(nombreMostrar);
                hlCuentaUsuario.NavigateUrl = ResolveUrl("~/Pages/Perfil.aspx");
            }
            else
            {
                litTextoBotonCuenta.Text = "Inicia sesión";
                hlCuentaUsuario.NavigateUrl = ResolveUrl("~/Pages/Login.aspx");
            }
        }
    }
}