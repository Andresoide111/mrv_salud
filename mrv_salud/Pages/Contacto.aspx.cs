using System;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web.UI;

namespace mrv_salud.Pages
{
    public partial class Contacto : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlEstado.Visible = false;
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text.Trim();
            string correoCliente = txtCorreo.Text.Trim();
            string telefono = txtTelefono.Text.Trim();
            string motivo = ddlMotivo.SelectedValue;
            string mensajeUsuario = txtMensaje.Text.Trim();

            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(correoCliente) ||
                string.IsNullOrEmpty(motivo) || string.IsNullOrEmpty(mensajeUsuario))
            {
                MostrarEstado("Por favor completa todos los campos obligatorios marcados con *.", true);
                return;
            }
            else if (!correoCliente.Contains("@"))
            {
                MostrarEstado("Por favor ingresa un correo electrónico válido.", true);
                return;
            }

            string asuntoRespuesta = $"Re: {motivo} — MRV Salud";
            string telefonoTexto = string.IsNullOrEmpty(telefono) ? "No especificado" : telefono;

            string cuerpoRespuesta =
                $"Hola {nombre},\n\n" +
                "Tu consulta se envió correctamente. Nuestro equipo de MRV Salud se pondrá en contacto contigo pronto.\n\n" +
                "Resumen de tu solicitud:\n" +
                $"- Asunto: {motivo}\n" +
                $"- Teléfono: {telefonoTexto}\n" +
                $"- Mensaje: {mensajeUsuario}\n\n" +
                "Atentamente,\n" +
                "MRV Salud";

            RegisterAsyncTask(new PageAsyncTask(async () =>
            {
                try
                {
                    await EnviarMensaje(correoCliente, asuntoRespuesta, cuerpoRespuesta);

                    txtNombre.Text = string.Empty;
                    txtCorreo.Text = string.Empty;
                    txtTelefono.Text = string.Empty;
                    ddlMotivo.SelectedIndex = 0;
                    txtMensaje.Text = string.Empty;

                    MostrarEstado("Tu consulta se envió correctamente. Nuestro equipo se pondrá en contacto contigo pronto.", false);
                }
                catch (Exception ex)
                {
                    MostrarEstado("No se pudo enviar el correo: " + ex.Message, true);
                }
            }));
        }

        private async Task EnviarMensaje(string emailDestinatario, string asunto, string cuerpo)
        {
            var nuestroEmail = ConfigurationManager.AppSettings["CONFIG_EMAIL:EMAIL"];
            var password = ConfigurationManager.AppSettings["CONFIG_EMAIL:PASSWORD"];
            var host = ConfigurationManager.AppSettings["CONFIG_EMAIL:HOST"];
            var puertoTexto = ConfigurationManager.AppSettings["CONFIG_EMAIL:PUERTO"];

            if (string.IsNullOrWhiteSpace(nuestroEmail) ||
                string.IsNullOrWhiteSpace(password) ||
                string.IsNullOrWhiteSpace(host) ||
                string.IsNullOrWhiteSpace(puertoTexto))
            {
                throw new InvalidOperationException("Faltan claves CONFIG_EMAIL en Web.config.");
            }

            int puerto = int.Parse(puertoTexto);

            using (var smtpCliente = new SmtpClient(host, puerto))
            {
                smtpCliente.EnableSsl = true;
                smtpCliente.UseDefaultCredentials = false;
                smtpCliente.Timeout = 15000;
                smtpCliente.Credentials = new NetworkCredential(nuestroEmail, password);

                using (var mensaje = new MailMessage(nuestroEmail, emailDestinatario, asunto, cuerpo))
                {
                    await smtpCliente.SendMailAsync(mensaje);
                }
            }
        }

        private void MostrarEstado(string texto, bool esError)
        {
            pnlEstado.Visible = true;
            pnlEstado.CssClass = esError
                ? "mensaje-formulario mensaje-formulario--error"
                : "mensaje-formulario";
            lblEstado.Text = Server.HtmlEncode(texto);
        }
    }
}