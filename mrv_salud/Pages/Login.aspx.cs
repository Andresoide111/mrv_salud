using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mrv_salud.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlError.Visible = false;

                HttpCookie cookieUsuario = Request.Cookies["MRV_Usuario"];
                if (cookieUsuario != null)
                {
                    txtUsuario.Text = cookieUsuario.Value;
                    chkRecordarme.Checked = true;
                }
                else if (Session["UsuarioRegistrado"] != null)
                {
                    txtUsuario.Text = Session["UsuarioRegistrado"].ToString();
                }
            }
        }

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

                if (chkRecordarme.Checked)
                {
                    HttpCookie cookie = new HttpCookie("MRV_Usuario", usuarioIngresado);
                    cookie.Expires = DateTime.Now.AddDays(14);
                    Response.Cookies.Add(cookie);
                }
                else if (Request.Cookies["MRV_Usuario"] != null)
                {
                    HttpCookie cookieEliminar = new HttpCookie("MRV_Usuario");
                    cookieEliminar.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(cookieEliminar);
                }

                Response.Redirect("Default.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
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