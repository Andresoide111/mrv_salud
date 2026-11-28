using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mrv_salud.Pages
{
    public partial class ConfirmacionCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombre = Session["NombreCita"].ToString();
            string apellido = Session["Apellido"].ToString();
            string fecha = Session["FechaCita"].ToString();
            string especialidad = Session["Especialidad"].ToString();

            lbl_nombre.Text = Session["NombreCita"].ToString() + " " + Session["Apellido"].ToString();
            lbl_especialidad.Text = Session["Especialidad"].ToString();
            lbl_fecha_cita.Text = Session["FechaCita"].ToString();
            lbl_hora.Text = Session["HoraCita"].ToString();
            lbl_codigo.Text = Session["Codigo"].ToString();
        }
        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(
            this.GetType(), "imprimir", "window.print();", true
             );

        }
    }
}  