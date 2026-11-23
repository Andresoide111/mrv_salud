<%@ Page Title="Terminos y Condiciones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Terminos_y_condiciones.aspx.cs" Inherits="mrv_salud.Pages.Terminos_y_condiciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- aqui va el enlace al css -->
    <link href="<%= ResolveUrl("~/Styles/Styles_terminos_condiciones.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
     <!-- aqui va el contenido que solo usa esta pagina -->
    <main class="terminos-main">
        <!-- Encabezado de página -->
        <section class="terminos-hero">
            <span class="tag">MARCO LEGAL Y USO DEL PORTAL</span>
            <h1>Términos y Condiciones de Uso</h1>
            <p>
                Lee detenidamente las condiciones que regulan el acceso, registro y gestión de citas médicas en el portal digital de <strong>Centro Médico MRV Salud</strong>.
            </p>
            <span class="fecha-actualizacion">Última actualización: Noviembre 2026</span>
        </section>

        <!-- Cuerpo dividido: Índice lateral + Documento -->
        <div class="terminos-layout">
            <!-- Índice de navegación rápida -->
            <aside class="terminos-indice" aria-label="Índice de secciones">
                <h3>Contenido</h3>
                <ul>
                    <li><a href="#aceptacion">1. Aceptación de los términos</a></li>
                    <li><a href="#servicios">2. Alcance de los servicios</a></li>
                    <li><a href="#registro">3. Registro y cuenta de paciente</a></li>
                    <li><a href="#citas">4. Agendamiento y cancelación</a></li>
                    <li><a href="#emergencias">5. Atención de emergencias</a></li>
                    <li><a href="#privacidad">6. Privacidad y confidencialidad</a></li>
                    <li><a href="#propiedad">7. Propiedad intelectual</a></li>
                    <li><a href="#contacto-legal">8. Contacto y consultas</a></li>
                </ul>
            </aside>

            <!-- Cláusulas -->
            <article class="terminos-contenido">
                <section id="aceptacion" class="clausula">
                    <h2>1. Aceptación de los términos</h2>
                    <p>
                        Al acceder, navegar, registrarse o utilizar los servicios del portal web de <strong>Centro Médico MRV Salud</strong>, el usuario acepta quedar vinculado por los presentes Términos y Condiciones. Si no está de acuerdo con alguna de estas disposiciones, deberá abstenerse de utilizar la plataforma.
                    </p>
                </section>

                <section id="servicios" class="clausula">
                    <h2>2. Alcance de los servicios digitales</h2>
                    <p>
                        El portal tiene como finalidad facilitar a los pacientes la consulta de especialidades médicas, directorio de especialistas, solicitud, verificación y administración de citas médicas presenciales o programadas.
                    </p>
                    <p>
                        La información publicada en este sitio web tiene carácter estrictamente informativo y orientativo. En ningún caso sustituye una valoración, diagnóstico o prescripción médica profesional realizada en consulta.
                    </p>
                </section>

                <section id="registro" class="clausula">
                    <h2>3. Registro y cuenta de paciente</h2>
                    <p>Para crear una cuenta en el Portal de Pacientes, el usuario se compromete a:</p>
                    <ul>
                        <li>Proporcionar información veraz, exacta, actual y completa durante el proceso de registro.</li>
                        <li>Mantener la confidencialidad de su usuario y contraseña, siendo responsable de todas las actividades realizadas desde su cuenta.</li>
                        <li>Notificar de inmediato al centro médico ante cualquier uso no autorizado de sus credenciales de acceso.</li>
                    </ul>
                </section>

                <section id="citas" class="clausula">
                    <h2>4. Agendamiento, reprogramación y cancelación de citas</h2>
                    <p>
                        Las reservas realizadas en línea quedan sujetas a confirmación de disponibilidad horaria del especialista seleccionado. Para garantizar una atención puntual a todos nuestros pacientes:
                    </p>
                    <ul>
                        <li>Se recomienda presentarse al menos <strong>15 minutos antes</strong> de la hora programada.</li>
                        <li>En caso de no poder asistir, el paciente deberá cancelar o reprogramar su cita con un mínimo de <strong>12 horas de anticipación</strong> mediante el portal o vía telefónica.</li>
                        <li>La inasistencia reiterada sin previo aviso podrá restringir temporalmente la reserva automática en línea.</li>
                    </ul>
                </section>

                <section id="emergencias" class="clausula">
                    <h2>5. Atención de emergencias médicas</h2>
                    <div class="aviso-emergencia">
                        <strong>Importante:</strong> Este portal web <strong>no</strong> está destinado para la atención de urgencias o emergencias médicas. Si presentas síntomas graves o una situación que ponga en riesgo la vida, comunícate de inmediato a nuestra línea directa <strong>+504 2234-5555</strong> o acude al área de urgencias más cercana.
                    </div>
                </section>

                <section id="privacidad" class="clausula">
                    <h2>6. Privacidad y confidencialidad de datos</h2>
                    <p>
                        Los datos personales y de salud suministrados por los pacientes son tratados bajo estrictos estándares de confidencialidad y secreto médico, utilizándose únicamente para la gestión administrativa, programación de consultas y seguimiento clínico autorizado por el titular.
                    </p>
                </section>

                <section id="propiedad" class="clausula">
                    <h2>7. Propiedad intelectual</h2>
                    <p>
                        Todos los contenidos de este sitio web —incluyendo logotipos, textos, gráficos, íconos, diseños e interfaz— son propiedad exclusiva de <strong>Centro Médico MRV Salud</strong> y están protegidos por las leyes aplicables de propiedad intelectual. Queda prohibida su reproducción o distribución sin autorización previa por escrito.
                    </p>
                </section>

                <section id="contacto-legal" class="clausula">
                    <h2>8. Modificaciones y contacto</h2>
                    <p>
                        MRV Salud se reserva el derecho de actualizar estos Términos y Condiciones en cualquier momento. Para aclaraciones sobre estas disposiciones, puedes escribirnos a <a href="mailto:atencion@mrv_salud.hn">atencion@mrv_salud.hn</a> o comunicarte al <a href="tel:+50422345555">+504 2234-5555</a> en Tegucigalpa, Honduras.
                    </p>
                </section>

                <div class="terminos-acciones">
                    <a href="Default.aspx" class="btn-inicio">Ir al inicio</a>
                </div>
            </article>
        </div>
    </main>
    </asp:Content>