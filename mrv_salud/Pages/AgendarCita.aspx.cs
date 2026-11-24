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

        }
        protected void btn_agendar_Click(object sender, EventArgs e)
        {
            //declaracion de variables 
            string nombre = txt_nombre.Text.Trim();
            string apellido = txt_apellido.Text.Trim();
            string lis_genero = lista_genero.SelectedValue;
            String nacimiento = txt_fecha_nacimiento.Text; //priemro tomar el dato luego el parse 
            string correo = txt_correo.Text.Trim();
            int celular = int.Parse(txt_cel.Text.Trim());
            string tipoCita = tipo_cita.SelectedValue;
            string lis_especialidad = especialidad.SelectedValue;
            string lis_especialista = especialista.SelectedValue;
            DateTime fechaCita = DateTime.Parse(txt_fecha_cita.Text);
            

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
                string.IsNullOrWhiteSpace(txt_fecha_cita.Text))
            {
                lbl_mensaje.Text = "Por favor, complete todos los campos.";
                return;
            }
            


            //fechas aqui hay algo es que no puede ser una fecha invalida 
        }
    }
}