using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mrv_salud.Pages
{
    public partial class Contraseña_olvidada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlMensaje.Visible = false;
            }
        }
        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text.Trim();
            // Validar que el campo no esté vacío
            if (string.IsNullOrEmpty(usuario))
            {
                MostrarMensaje("Por favor ingresa tu usuario o correo electrónico.", esError: true);
                return;
            }
            // Aquí iría la lógica para enviar las instrucciones de recuperación de contraseña
            MostrarMensaje("Si el usuario o correo electrónico existe, se enviarán instrucciones para recuperar la contraseña.", esError: false);
        }
        private void MostrarMensaje(string mensaje, bool esError)
        {
            pnlMensaje.Visible = true;
            pnlMensaje.CssClass = esError
                ? "mensaje-registro mensaje-registro--error"
                : "mensaje-registro mensaje-registro--exito";
            lblMensaje.Text = mensaje;
        }
    }
}