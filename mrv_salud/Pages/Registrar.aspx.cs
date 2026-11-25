using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mrv_salud.Pages
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlMensaje.Visible = false;
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();
            string fechaNacimiento = txtFechaNacimiento.Text.Trim();
            string telefono = txtTelefono.Text.Trim();
            string username = txtUsername.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (string.IsNullOrEmpty(nombre) ||
                string.IsNullOrEmpty(apellido) ||
                string.IsNullOrEmpty(fechaNacimiento) ||
                string.IsNullOrEmpty(telefono) ||
                string.IsNullOrEmpty(username) ||
                string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(password) ||
                string.IsNullOrEmpty(confirmPassword))
            {
                MostrarMensaje("Por favor completa todos los campos obligatorios.", esError: true);
                return;
            }

            if (password.Length < 8)
            {
                MostrarMensaje("La contraseña debe tener al menos 8 caracteres.", esError: true);
                return;
            }

            if (password != confirmPassword)
            {
                MostrarMensaje("Las contraseñas no coinciden.", esError: true);
                return;
            }

            if (!chkTerms.Checked)
            {
                MostrarMensaje("Debes aceptar los términos y condiciones para crear una cuenta.", esError: true);
                return;
            }

            // Guardar datos del usuario registrado en Session
            Session["Nombre"] = nombre;
            Session["Apellido"] = apellido;
            Session["Nacimiento"] = fechaNacimiento;
            Session["Celular"] = telefono;
            Session["UsuarioRegistrado"] = username;
            Session["Correo"] = email;
            Session["PasswordRegistrado"] = password;

            // Redirigir al login
            Response.Redirect("Login.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }

        private void MostrarMensaje(string texto, bool esError)
        {
            pnlMensaje.Visible = true;
            pnlMensaje.CssClass = esError
                ? "mensaje-estado mensaje-error"
                : "mensaje-estado mensaje-exito";
            lblMensaje.Text = texto;
        }
    }
}