using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mrv_salud.Pages
{
    public partial class ConsultarCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            //primero recuperar lo escrito por el usuario
            string codigo = txt_cod.Text.Trim();
            //recuperar el codigo que genero
            string codigo_guardado = Session["Codigo"]?.ToString();


            if (string.IsNullOrWhiteSpace(txt_cod.Text))
            {
                lbl_mensaje_consulta.Text = "Ingrese su código.";
                return;
            }

            // ver si el código coincide
            if (codigo == codigo_guardado)
            {
                lbl_nombre.Text = "Nombre: " + Session["NombreCita"].ToString() + " " + Session["Apellido"].ToString();
                lbl_dni.Text = "DNI: " + Session["DNI"].ToString();
                lbl_especialidad.Text = "Especialidad: " + Session["Especialidad"].ToString();
                lbl_especialista.Text = "Especialista: " + Session["Especialista"].ToString();
                lbl_fecha.Text = "Fecha: " + Session["FechaCita"].ToString();
                lbl_hora.Text = "Hora: " + Session["HoraCita"].ToString();
                lbl_codigo.Text = "Código: " + Session["Codigo"].ToString();
                lbl_estado.Text = "Estado: Pendiente";

                panel_resultado.Visible = true;
            }
            else
            {
                lbl_mensaje_consulta.Text = "No se encontró ninguna cita con ese código.";
                panel_resultado.Visible = false;
            }
        }
    }
}