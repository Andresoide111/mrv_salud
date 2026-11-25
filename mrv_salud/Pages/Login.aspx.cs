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

                // Si existe cookie de "Recordarme", precargar usuario
                HttpCookie cookieUsuario = Request.Cookies["MRV_Usuario"];
                if (cookieUsuario != null)
                {
                    txtUsuario.Text = cookieUsuario.Value;
                    chkRecordarme.Checked = true;
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

            bool credencialesValidas = ValidarCredenciales(usuarioIngresado, passwordIngresada);

            if (credencialesValidas)
            {
                // Guardar sesión del paciente
                Session["UsuarioLogueado"] = usuarioIngresado;

                // Manejar "Recordarme"
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

                // Redirigir al inicio o panel principal
                Response.Redirect(ResolveUrl("Default.aspx"), false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                MostrarError("Usuario, correo o contraseña incorrectos.");
            }
        }

        private bool ValidarCredenciales(string usuario, string password)
        {
            // Prueba de validación simple: usuario y contraseña correctos
            return (usuario.Equals("admin@gmail.com", StringComparison.OrdinalIgnoreCase)
                    || usuario.Equals("admin123", StringComparison.OrdinalIgnoreCase))
                   && password == "12345678";
        }

        private void MostrarError(string mensaje)
        {
            pnlError.Visible = true;
            lblMensaje.Text = Server.HtmlEncode(mensaje);
        }
    }
    
    
}