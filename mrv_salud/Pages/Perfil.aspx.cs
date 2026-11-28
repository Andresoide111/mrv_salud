using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mrv_salud.Pages
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string ObtenerUsuarioJson()
        {
            string nombre = Session["Nombre"] as string;
            string apellido = Session["Apellido"] as string;
            string nacimiento = Session["Nacimiento"] as string;
            string correo = Session["Correo"] as string;
            string telefono = (Session["Telefono"] ?? Session["Celular"]) as string;
            string usuario = (Session["UsuarioActual"] ?? Session["UsuarioRegistrado"]) as string;

            if (string.IsNullOrWhiteSpace(nombre))
                nombre = !string.IsNullOrWhiteSpace(usuario) ? usuario : "User";

            if (string.IsNullOrWhiteSpace(usuario))
                usuario = nombre.ToLower().Replace(" ", "");

            var datos = new
            {
                nombre = nombre,
                apellido = apellido ?? "",
                nacimiento = nacimiento ?? "",
                usuario = usuario,
                correo = correo ?? "",
                telefono = telefono ?? ""
            };

            JavaScriptSerializer serializer = new JavaScriptSerializer();
            return serializer.Serialize(datos);
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["SesionActiva"] = false;
            Session.Remove("UsuarioActual");

            Response.Redirect(ResolveUrl("Default.aspx"), false);
            Context.ApplicationInstance.CompleteRequest();
        }
        public string ObtenerCitaJson()
        {
            string correoLogueado = (Session["Correo"] as string ?? "").Trim().ToLowerInvariant();
            string correoCita = (Session["CorreoCita"] as string ?? "").Trim().ToLowerInvariant();

            // Verifica que exista una cita agendada y que ambos correos coincidan
            bool coincide = !string.IsNullOrEmpty(correoLogueado) &&
                            !string.IsNullOrEmpty(correoCita) &&
                            correoLogueado == correoCita &&
                            Session["Codigo"] != null;

            if (!coincide)
            {
                return "null";
            }

            var cita = new
            {
                codigo = Session["Codigo"]?.ToString() ?? "",
                tipoCita = Session["TipoCita"]?.ToString() ?? "",
                especialidad = Session["Especialidad"]?.ToString() ?? "",
                especialista = Session["Especialista"]?.ToString() ?? "",
                fechaCita = Session["FechaCita"]?.ToString() ?? "",
                horaCita = Session["HoraCita"]?.ToString() ?? "",
                fechaRegistro = Session["FechaRegistro"]?.ToString() ?? ""
            };

            return new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(cita);
        }
    }
}