using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
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
        protected void btn_agendar_Click(object sender, EventArgs e)
        {
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

            DateTime fecha_Nacimiento; //variable para guardar fecha

            //!Si NO se puede convertir el texto recibido en una fecha válida, detiene la ejecucion
            if (!DateTime.TryParse(nacimiento, out fecha_Nacimiento)) //intenta convertir la fecha 
            { //try(intentar) parse(analizar) out(entregar)
                return;
            }

            DateTime fecha_cita;
            if (!DateTime.TryParse(fechaCita, out fecha_cita)) //intenta convertir la fecha 
            { //try(intentar) parse(analizar) out(entregar)
                return;
            }

            //validar que la fecha no sea antes que hoy
            if (fecha_cita.Date < DateTime.Today)
            {
                return;
            }

            //fechas aqui hay algo es que no puede ser una fecha invalida 
        }
    }
}