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
        // Almacenamiento temporal
        private static readonly List<UsuarioTemporal> UsuariosTemporales = new List<UsuarioTemporal>();

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

            // 1. Validar campos obligatorios
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

            // 2. Validar longitud mínima de contraseña
            if (password.Length < 8)
            {
                MostrarMensaje("La contraseña debe tener al menos 8 caracteres.", esError: true);
                return;
            }

            // 3. Validar que ambas contraseñas coincidan
            if (password != confirmPassword)
            {
                MostrarMensaje("Las contraseñas no coinciden.", esError: true);
                return;
            }

            // 4. Validar términos y condiciones
            if (!chkTerms.Checked)
            {
                MostrarMensaje("Debes aceptar los términos y condiciones para crear una cuenta.", esError: true);
                return;
            }

            // 5. Evitar duplicados en la lista temporal
            bool yaExiste = UsuariosTemporales.Any(u =>
                u.Username.Equals(username, StringComparison.OrdinalIgnoreCase) ||
                u.Email.Equals(email, StringComparison.OrdinalIgnoreCase));

            if (yaExiste)
            {
                MostrarMensaje("Ese nombre de usuario o correo electrónico ya está registrado en memoria.", esError: true);
                return;
            }

            // 6. Guardar en memoria temporal
            var nuevoUsuario = new UsuarioTemporal
            {
                Nombre = nombre,
                Apellido = apellido,
                FechaNacimiento = fechaNacimiento,
                Telefono = telefono,
                Username = username,
                Email = email,
                Password = password
            };

            UsuariosTemporales.Add(nuevoUsuario);
            Session["UltimoUsuarioRegistrado"] = username;

            LimpiarCampos();
            MostrarMensaje($"Cuenta creada temporalmente para <strong>{Server.HtmlEncode(nombre)} {Server.HtmlEncode(apellido)}</strong> (@{Server.HtmlEncode(username)}).", esError: false);
        }

        private void LimpiarCampos()
        {
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtFechaNacimiento.Text = string.Empty;
            txtTelefono.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtConfirmPassword.Text = string.Empty;
            chkTerms.Checked = false;
        }

        private void MostrarMensaje(string texto, bool esError)
        {
            pnlMensaje.Visible = true;
            pnlMensaje.CssClass = esError
                ? "mensaje-registro mensaje-registro--error"
                : "mensaje-registro mensaje-registro--exito";
            lblMensaje.Text = texto;
        }

        private class UsuarioTemporal
        {
            public string Nombre { get; set; }
            public string Apellido { get; set; }
            public string FechaNacimiento { get; set; }
            public string Telefono { get; set; }
            public string Username { get; set; }
            public string Email { get; set; }
            public string Password { get; set; }
        }
    }
}