<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="mrv_salud.Pages.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <!-- aqui va el enlace al css -->
    <link href="<%= ResolveUrl("~/Styles/Styles_Default.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
     <!-- aqui va el contenido que solo usa esta pagina -->
    <main>
    <!-- Banner Principal -->
    <section class="bannerprincipal">
        <div class="banner-box">
            <span class="tag">CUIDAMOS LO QUE MÁS IMPORTA</span>   
            <h1>
                Medicina humana.<br>
                <span class="text-green">Atención extraordinaria.</span>
            </h1>
            <p>Un equipo médico de excelencia, tecnología moderna y la calidez que tu familia merece. Tu bienestar comienza aquí.</p>
            
            <div class="banner-botones">
                  <a class="btn-agendar" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">
              
                 <img src="<%= ResolveUrl("~/Images/telefono.svg") %>" alt="Icono calendario" class="icono-btn">
                 <span>Agendar una cita</span>
             </a>
            </div>

            <!-- Estadísticas -->
            <div class="estadisticas">
                <div class="stat-item">
                    <h3>25+</h3>
                    <p>Años de experiencia</p>
                </div>
                <div class="stat-item">
                    <h3>9</h3>
                    <p>Especialistas certificados</p>
                </div>
                <div class="stat-item">
                    <h3>98%</h3>
                    <p>Pacientes satisfechos</p>
                </div>
            </div>
        </div>

        <div class="banner-box imagen-derecha">
            <img src="<%= ResolveUrl("~/Images/banner-principal.jpg") %>" alt="Banner Principal" class="banner-image" />  <!--banner principal -->
            <div class="floating-card">
                <img src="<%= ResolveUrl("~/Images/punto.svg") %>" alt="icono" />  
                <div>
                    <strong>Citas disponibles hoy</strong>
                    <span>Consulta los horarios médicos</span>
                </div>
            </div>
        </div>
    </section>

    <!-- tarjetas blancas -->
    <section class="accesos-rapidos">
                          

       <a class="card-acceso" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">
        <!--revisar esta ruta -->

            <div class="card-icon"><img src="<%= ResolveUrl("~/Images/calendario_verde.svg") %>" alt="icono_calendario" /></div>

            <div>
                <h4>Reserva en línea</h4>
                <p>Elige médico, fecha y hora</p>
            </div>
            <span class="flecha-card">&rarr;</span>
        </a>


        <a class="card-acceso" href="<%= ResolveUrl("~/Pages/ConsultarCita.aspx") %>">
            <div class="card-icon"><img src="<%= ResolveUrl("~/Images/lupa.svg") %>" alt="icono_lupa" /> </div>
            <div>
                <h4>Consulta tu cita</h4>
                <p>Ver el estado de tu reserva</p>
            </div>
            <span class="flecha-card">&rarr;</span>
        </a>

        <a class="card-acceso" href="<%= ResolveUrl("~/Pages/Contacto.aspx") %>"><!--revisar esta ruta -->
            <div class="card-icon"><img src="<%= ResolveUrl("~/Images/ubicacion.svg") %>" alt="icono" /> </div>
            <div>
                <h4>Visítanos</h4>
                <p>Encuentra nuestra sede</p>
            </div>
            <span class="flecha-card">&rarr;</span>
        </a>
    </section>

    <!-- Sección de Especialidades -->
    <section class="seccion-especialidades">
        <div class="seccion-header">
            <span class="tag">ATENCIÓN INTEGRAL</span>
            <h2>Especialidades para cada etapa de tu vida</h2>
            <p>Reunimos experiencia, tecnología y un enfoque humano para brindarte diagnósticos precisos y tratamientos personalizados.</p>
        </div>

        <div class="grid-especialidades">
            <div class="card-especialidad">
                <div class="icono-esp"><img src="<%= ResolveUrl("~/Images/cardiologia.svg") %>" alt="Cardiología" /></div>
                <h3>Cardiología</h3>
                <p>Prevención, diagnóstico y tratamiento integral de enfermedades cardiovasculares.</p>
                        <a class="enlace-card" href="<%= ResolveUrl("~/Pages/Especialidades.aspx") %>">    
                        Ver especialidad 
                        </a>
            </div>

            <div class="card-especialidad">
                <div class="icono-esp"><img src="<%= ResolveUrl("~/Images/pediatria.svg") %>" alt="Pediatría" /></div>
                <h3>Pediatría</h3>
                <p>Atención médica y especializada para acompañar el sano crecimiento.</p>
                        <a class="enlace-card" href="<%= ResolveUrl("~/Pages/Especialidades.aspx") %>">    
                        Ver especialidad 
                        </a>
            </div>

            <div class="card-especialidad">
                <div class="icono-esp"><img src="<%= ResolveUrl("~/Images/neurologia.svg") %>" alt="Neurología" /></div>
                <h3>Neurología</h3>
                <p>Estudio y tratamiento de las lesiones del sistema nervioso central y periférico.</p>
                        <a class="enlace-card" href="<%= ResolveUrl("~/Pages/Especialidades.aspx") %>">   
                        Ver especialidad 
                        </a>
            </div>

            <div class="card-especialidad">
                <div class="icono-esp"><img src="<%= ResolveUrl("~/Images/ortopedia.svg") %>" alt="Ortopedia"/></div>
                <h3>Ortopedia</h3>
                <p>Prevención de las lesiones del aparato locomotor y tratamiento musculoesquelético.</p>
                        <a class="enlace-card" href="<%= ResolveUrl("~/Pages/Especialidades.aspx") %>">    
                        Ver especialidad 
                        </a>
            </div>
        </div>

        <div class="contenedor-boton-centro">

            <a class="btn-outline" href="<%= ResolveUrl("~/Pages/Especialidades.aspx") %>">    
            Ver todas las especialidades
            </a>
           
        </div>
    </section>

    <!-- Banner Oscuro Inferior -->
    <section class="banner-dark-cta">
        <div class="cta-contenido">
            <span class="tag-light">TU SALUD NO PUEDE ESPERAR</span>
            <h2>Una atención más simple, cercana y oportuna.</h2>
        </div>
        <div><a  class="btn-white" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">Solicitar cita ahora &rarr;</a>
        </div>
    </section>
</main>
</asp:Content>
