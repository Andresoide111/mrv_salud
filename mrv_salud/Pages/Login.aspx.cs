using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace mrv_salud.Pages
{
    public partial class Login : System.Web.UI.Page
    {

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string usuarioIngresado = txtUsuario.Text.Trim();
            string passwordIngresada = txtPassword.Text;

            if (string.IsNullOrEmpty(usuarioIngresado) || string.IsNullOrEmpty(passwordIngresada))
            {
                MostrarError("Por favor ingresa tu usuario o correo y tu contraseña.");
                return;
            }

            string usuarioGuardado = Session["UsuarioRegistrado"] as string;
            string correoGuardado = Session["Correo"] as string;
            string passwordGuardada = Session["PasswordRegistrado"] as string;

            bool esUsuarioRegistrado =
                (!string.IsNullOrEmpty(usuarioGuardado) &&
                 !string.IsNullOrEmpty(passwordGuardada) &&
                 (usuarioIngresado.Equals(usuarioGuardado, StringComparison.OrdinalIgnoreCase) ||
                  (!string.IsNullOrEmpty(correoGuardado) && usuarioIngresado.Equals(correoGuardado, StringComparison.OrdinalIgnoreCase))) &&
                 passwordIngresada == passwordGuardada);

            bool esUsuarioPredeterminado =
                (usuarioIngresado.Equals("admin123", StringComparison.OrdinalIgnoreCase) ||
                 usuarioIngresado.Equals("admin@mrvsalud.com", StringComparison.OrdinalIgnoreCase)) &&
                passwordIngresada == "admin123";

            if (esUsuarioRegistrado || esUsuarioPredeterminado)
            {
                string nombreUsuarioActivo = esUsuarioRegistrado ? usuarioGuardado : "admin123";

                Session["SesionActiva"] = true;
                Session["UsuarioActual"] = nombreUsuarioActivo;

                if (esUsuarioPredeterminado && string.IsNullOrEmpty(Session["Nombre"] as string))
                {
                    Session["Nombre"] = "Administrador";
                    Session["Apellido"] = "MRVSalud";
                    Session["Correo"] = "admin@mrvsalud.com";
                }

            }
            else
            {
                MostrarError("Usuario, correo o contraseña incorrectos.");
            }
        }

        private void MostrarError(string mensaje)
        {
            pnlError.Visible = true;
            pnlError.CssClass = "mensaje-estado mensaje-error";
            lblMensaje.Text = Server.HtmlEncode(mensaje);
        }
    }
}