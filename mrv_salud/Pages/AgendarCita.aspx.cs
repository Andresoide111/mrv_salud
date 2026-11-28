using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mrv_salud.Pages
{

    public partial class AgendarCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_fecha_registro.Text = DateTime.Today.ToString("yyyy-MM-dd");

        }
        protected async void btn_agendar_Click(object sender, EventArgs e)
        { //los limpia cada vez uque se ejecuta el evento
            lbl_mensaje.Text = "";
            lbl_mensaje_fecha_nacimiento.Text = "";
            lbl_mensaje_fecha_cita.Text = "";

            //declaracion de variables 
            string nombre = txt_nombre.Text.Trim();
            string apellido = txt_apellido.Text.Trim();
            string lis_genero = lista_genero.SelectedValue;
            string nacimiento = txt_fecha_nacimiento.Text; //priemro tomar el dato luego el parse 
            string correo = txt_correo.Text.Trim();
            string celular = txt_cel.Text.Trim();
            string tipoCita = tipo_cita.SelectedValue;
            string lis_especialidad = especialidad.SelectedValue;
            string lis_especialista = especialista.SelectedValue;
            string fechaCita = txt_fecha_cita.Text;
            DateTime fechaRegistro = DateTime.Today;
            string codigo = Guid.NewGuid().ToString("N").Substring(0, 9).ToUpper();



            //espacios vacios

            if (string.IsNullOrWhiteSpace(txt_nombre.Text) ||
                string.IsNullOrWhiteSpace(txt_apellido.Text) ||
                string.IsNullOrWhiteSpace(lista_genero.SelectedValue) ||
                string.IsNullOrWhiteSpace(txt_fecha_nacimiento.Text) ||
                string.IsNullOrWhiteSpace(txt_correo.Text) ||
                string.IsNullOrWhiteSpace(txt_cel.Text) ||
                string.IsNullOrWhiteSpace(tipo_cita.SelectedValue) ||
                string.IsNullOrWhiteSpace(especialidad.SelectedValue) ||
                string.IsNullOrWhiteSpace(especialista.SelectedValue) ||
                string.IsNullOrWhiteSpace(txt_fecha_cita.Text) ||
                string.IsNullOrWhiteSpace(txt_hora_cita.Text))
            {
                lbl_mensaje.Text = "Por favor, complete todos los campos.";
                return;

            }
            //como ya esta verificado que no estan vacios 
            int cel = int.Parse(txt_cel.Text.Trim());

            DateTime fecha_nacimiento; //variable para guardar fecha

            //!Si NO se puede convertir el texto recibido en una fecha válida, detiene la ejecucion
            if (!DateTime.TryParse(nacimiento, out fecha_nacimiento)) //intenta convertir la fecha 
            { //try(intentar) parse(analizar) out(entregar)
                return;
            }

            DateTime fecha_cita;
            if (!DateTime.TryParse(fechaCita, out fecha_cita)) //intenta convertir la fecha 
            { //try(intentar) parse(analizar) out(entregar)
                return;
            }

            //que no sea del futuro
            if (fecha_nacimiento > DateTime.Today)
            {
                lbl_mensaje_fecha_nacimiento.Text = "La fecha de nacimiento no puede ser futura";
                return;
            }

            if (fecha_cita.Date < DateTime.Today)
            {
                lbl_mensaje_fecha_cita.Text = "No puede seleccionar una fecha pasada..";
               
                return;
            }

            try
            {
                var direccion = new MailAddress(correo);

                if (direccion.Address != correo)
                {
                    lbl_mensaje_correo.Text =
                        "Ingrese un correo electrónico válido.";
                    return;
                }
            }
            catch (FormatException)
            {
                lbl_mensaje_correo.Text =
                    "Ingrese un correo electrónico válido.";
                return;
            }

            //calculamos la edad del paciente 
            int edad = DateTime.Today.Year - fecha_nacimiento.Year;

            if (fecha_nacimiento.Date > DateTime.Today.AddYears(-edad))
            {
                edad--;
            }

            //guardar de forma temporal con sesion 
            Session["NombreCita"] = nombre;
            Session["Apellido"] = apellido;
            Session["Genero"] = lis_genero;
            Session["NacimientoCita"] = nacimiento;
            Session["CorreoCita"] = correo;
            Session["Celular"] = celular;
            Session["TipoCita"] = tipoCita;
            Session["Especialidad"] = lis_especialidad;
            Session["Especialista"] = lis_especialista;
            Session["FechaCita"] = fechaCita;
            Session["HoraCita"] = txt_hora_cita.Text;
            Session["Edad"] = edad;
            Session["FechaRegistro"] = fechaRegistro;
            Session["Codigo"] = codigo;

            //enviar correo de confirmacion al paciente
            string asuntoRespuesta = $"Confirmación de cita - {codigo}";

            string cuerpoRespuesta =
                $"Hola {nombre}.\n\n" +
                "Tu cita se agendó correctamente.\n\n" +
                "Resumen de tu solicitud:\n" +
                $"- Código de cita: {Session["Codigo"]}\n" +
                $"- Nombre de quien solicita: {nombre} {apellido}\n" +
                $"- Tipo de cita: {tipoCita}\n" +
                $"- Especialidad: {lis_especialidad}\n" +
                $"- Especialista: {lis_especialista}\n" +
                $"- Teléfono: {celular}\n" +
                $"- Fecha de la cita: {fechaCita}\n" +
                "Atentamente,\n" +
                "MRV Salud";

            try
            {
                await EnviarMensaje(
                    correo,
                    asuntoRespuesta,
                    cuerpoRespuesta
                );

                // Redirigir después de completar el envío.
                Response.Redirect("ConfirmacionCita.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            catch (Exception ex)
            {
                lbl_mensaje.Text =
                    "No se pudo enviar el correo de confirmación. " +
                    "Detalle: " + ex.Message;
            }
        }

        //Declaración del método para enviar el correo electrónico de confirmación
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


    }
}