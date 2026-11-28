<%@ Page Title="Especialidades" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Especialidades.aspx.cs" Inherits="mrv_salud.Pages.Especialidades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Styles/Styles_Especialidades.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
        <main>
        <!-- Encabezado superior estilo maqueta -->
        <section class="hero-especialidades">
            <div class="hero-especialidades-inner">
                <span class="subtitulo-superior">NUESTRA ATENCIÓN</span>
                <h1>Especialidades médicas</h1>
                <p>Cuidado experto y coordinado, diseñado alrededor de las necesidades de cada paciente.</p>
            </div>
        </section>

        <!-- Contenedor principal de especialidades -->
        <section class="pagina-especialidades">

            <!-- Cuadrícula de especialidades -->
            <div class="especialidades-grid">

                <!-- 01 Cardiología -->
                <article class="especialidad-card">
                    <div class="card-cabecera">
                        <span class="card-numero">01</span>
                        <span class="especialidad-icono">
                            <img src="<%= ResolveUrl("~/images/cardiologia.svg") %>" alt="Icono Cardiología" class="icono">
                        </span>
                    </div>
                    <h2>Cardiología</h2>
                    <p>Prevención, diagnóstico y tratamiento integral de enfermedades cardiovasculares.</p>
                    <hr class="card-divisor">
                    <h3 class="servicios-titulo">SERVICIOS PRINCIPALES</h3>
                    <ul class="lista-servicios">
                        <li>Electrocardiograma</li>
                        <li>Evaluación de riesgo</li>
                        <li>Control de hipertensión</li>
                    </ul>
                    <a class="enlace-agendar" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">Agendar en Cardiología &rarr;</a>
                </article>

                <!-- 02 Neurología -->
                <article class="especialidad-card">
                    <div class="card-cabecera">
                        <span class="card-numero">02</span>
                        <span class="especialidad-icono">
                            <img src="<%= ResolveUrl("~/images/neurologia.svg") %>" alt="Icono Neurología" class="icono">
                        </span>
                    </div>
                    <h2>Neurología</h2>
                    <p>Evaluación clínica avanzada del sistema nervioso central y periférico.</p>
                    <hr class="card-divisor">
                    <h3 class="servicios-titulo">SERVICIOS PRINCIPALES</h3>
                    <ul class="lista-servicios">
                        <li>Cefaleas</li>
                        <li>Trastornos del sueño</li>
                        <li>Evaluación neurológica</li>
                    </ul>
                    <a class="enlace-agendar" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">Agendar en Neurología &rarr;</a>
                </article>

                <!-- 03 Pediatría -->
                <article class="especialidad-card">
                    <div class="card-cabecera">
                        <span class="card-numero">03</span>
                        <span class="especialidad-icono">
                            <img src="<%= ResolveUrl("~/images/pediatria.svg") %>" alt="Icono Pediatría" class="icono">
                        </span>
                    </div>
                    <h2>Pediatría</h2>
                    <p>Atención cálida y especializada para acompañar cada etapa del crecimiento.</p>
                    <hr class="card-divisor">
                    <h3 class="servicios-titulo">SERVICIOS PRINCIPALES</h3>
                    <ul class="lista-servicios">
                        <li>Control del niño sano</li>
                        <li>Vacunación</li>
                        <li>Nutrición infantil</li>
                    </ul>
                    <a class="enlace-agendar" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">Agendar en Pediatría &rarr;</a>
                </article>

                <!-- 04 Ortopedia -->
                <article class="especialidad-card">
                    <div class="card-cabecera">
                        <span class="card-numero">04</span>
                        <span class="especialidad-icono">
                            <img src="<%= ResolveUrl("~/images/ortopedia.svg") %>" alt="Icono Ortopedia" class="icono">
                        </span>
                    </div>
                    <h2>Ortopedia</h2>
                    <p>Recuperación de la movilidad con diagnóstico y tratamiento musculoesquelético.</p>
                    <hr class="card-divisor">
                    <h3 class="servicios-titulo">SERVICIOS PRINCIPALES</h3>
                    <ul class="lista-servicios">
                        <li>Lesiones deportivas</li>
                        <li>Dolor articular</li>
                        <li>Rehabilitación</li>
                    </ul>
                    <a class="enlace-agendar" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">Agendar en Ortopedia &rarr;</a>
                </article>

                <!-- 05 Medicina Interna -->
                <article class="especialidad-card">
                    <div class="card-cabecera">
                        <span class="card-numero">05</span>
                        <span class="especialidad-icono">
                            <img src="<%= ResolveUrl("~/images/medicina_interna.svg") %>" alt="Icono Medicina Interna" class="icono">
                        </span>
                    </div>
                    <h2>Medicina Interna</h2>
                    <p>Atención integral del adulto y seguimiento de condiciones crónicas.</p>
                    <hr class="card-divisor">
                    <h3 class="servicios-titulo">SERVICIOS PRINCIPALES</h3>
                    <ul class="lista-servicios">
                        <li>Chequeo general</li>
                        <li>Diabetes</li>
                        <li>Medicina preventiva</li>
                    </ul>
                    <a class="enlace-agendar" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">Agendar en Medicina Interna &rarr;</a>
                </article>

                <!-- 06 Ginecología -->
                <article class="especialidad-card">
                    <div class="card-cabecera">
                        <span class="card-numero">06</span>
                        <span class="especialidad-icono">
                            <img src="<%= ResolveUrl("~/images/ginecologia.svg") %>" alt="Icono Ginecología" class="icono">
                        </span>
                    </div>
                    <h2>Ginecología</h2>
                    <p>Salud integral de la mujer, prevención y seguimiento en cada etapa.</p>
                    <hr class="card-divisor">
                    <h3 class="servicios-titulo">SERVICIOS PRINCIPALES</h3>
                    <ul class="lista-servicios">
                        <li>Control ginecológico</li>
                        <li>Salud preventiva</li>
                        <li>Asesoría integral</li>
                    </ul>
                    <a class="enlace-agendar" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">Agendar en Ginecología &rarr;</a>
                </article>

                <!-- 07 Dermatología -->
                <article class="especialidad-card">
                    <div class="card-cabecera">
                        <span class="card-numero">07</span>
                        <span class="especialidad-icono">
                            <img src="<%= ResolveUrl("~/images/dermatologia.svg") %>" alt="Icono Dermatología" class="icono">
                        </span>
                    </div>
                    <h2>Dermatología</h2>
                    <p>Diagnóstico y cuidado especializado de la piel, cabello y uñas.</p>
                    <hr class="card-divisor">
                    <h3 class="servicios-titulo">SERVICIOS PRINCIPALES</h3>
                    <ul class="lista-servicios">
                        <li>Evaluación de piel</li>
                        <li>Tratamiento del acné</li>
                        <li>Prevención dermatológica</li>
                    </ul>
                    <a class="enlace-agendar" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">Agendar en Dermatología &rarr;</a>
                </article>

                <!-- 08 Urología -->
                <article class="especialidad-card">
                    <div class="card-cabecera">
                        <span class="card-numero">08</span>
                        <span class="especialidad-icono">
                            <img src="<%= ResolveUrl("~/images/urologia.svg") %>" alt="Icono Urología" class="icono">
                        </span>
                    </div>
                    <h2>Urología</h2>
                    <p>Atención médica especializada del sistema urinario y salud urológica.</p>
                    <hr class="card-divisor">
                    <h3 class="servicios-titulo">SERVICIOS PRINCIPALES</h3>
                    <ul class="lista-servicios">
                        <li>Evaluación urológica</li>
                        <li>Chequeo preventivo</li>
                        <li>Control de vías urinarias</li>
                    </ul>
                    <a class="enlace-agendar" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">Agendar en Urología &rarr;</a>
                </article>

                <!-- 09 Andrología -->
                <article class="especialidad-card">
                    <div class="card-cabecera">
                        <span class="card-numero">09</span>
                        <span class="especialidad-icono">
                            <img src="<%= ResolveUrl("~/images/andrologia.svg") %>" alt="Icono Andrología" class="icono">
                        </span>
                    </div>
                    <h2>Andrología</h2>
                    <p>Evaluación clínica y seguimiento especializado de la salud masculina.</p>
                    <hr class="card-divisor">
                    <h3 class="servicios-titulo">SERVICIOS PRINCIPALES</h3>
                    <ul class="lista-servicios">
                        <li>Evaluación masculina</li>
                        <li>Salud reproductiva</li>
                        <li>Seguimiento clínico</li>
                    </ul>
                    <a class="enlace-agendar" href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>">Agendar en Andrología &rarr;</a>
                </article>

            </div>

            <!-- Desglose de alcance y requisitos con lista de definición -->
            <section class="bloque-requisitos">
                <h2>Alcance y requisitos por especialidad</h2>
                <dl class="lista-requisitos">
                    <dt>Cardiología</dt>
                    <dd><strong>Alcance:</strong> Evaluación cardiovascular, control de presión arterial y seguimiento de factores de riesgo cardíaco.</dd>
                    <dd><strong>Requisitos:</strong> Llegar 30 minutos antes para toma de signos vitales y traer resultados previos si los tiene.</dd>

                    <dt>Neurología</dt>
                    <dd><strong>Alcance:</strong> Diagnóstico y manejo de cefaleas, trastornos del sueño y alteraciones neurológicas.</dd>
                    <dd><strong>Requisitos:</strong> Presentar documento de identidad y traer estudios o recetas previas si cuenta con ellos.</dd>

                    <dt>Pediatría</dt>
                    <dd><strong>Alcance:</strong> Control de crecimiento y desarrollo, atención de cuadros febriles o respiratorios y seguimiento infantil.</dd>
                    <dd><strong>Requisitos:</strong> Presentar carnet de vacunación actualizado y partida de nacimiento o identificación del responsable.</dd>

                    <dt>Ortopedia</dt>
                    <dd><strong>Alcance:</strong> Diagnóstico y tratamiento de lesiones deportivas, dolor articular y procesos de rehabilitación.</dd>
                    <dd><strong>Requisitos:</strong> Presentar identificación y traer radiografías o exámenes recientes si aplica.</dd>

                    <dt>Medicina Interna</dt>
                    <dd><strong>Alcance:</strong> Atención integral del adulto, chequeos preventivos y seguimiento de enfermedades crónicas.</dd>
                    <dd><strong>Requisitos:</strong> Presentar documento de identidad y traer historial médico o resultados de laboratorio recientes.</dd>

                    <dt>Ginecología</dt>
                    <dd><strong>Alcance:</strong> Consulta ginecológica de rutina, prevención y orientación médica integral.</dd>
                    <dd><strong>Requisitos:</strong> Presentar documento de identidad y traer exámenes o controles previos si los posee.</dd>

                    <dt>Dermatología</dt>
                    <dd><strong>Alcance:</strong> Diagnóstico y tratamiento de afecciones cutáneas, lesiones o manchas y cuidado de la piel.</dd>
                    <dd><strong>Requisitos:</strong> Presentar documento de identidad y acudir sin maquillaje ni cremas aplicadas en la zona a evaluar.</dd>

                    <dt>Urología</dt>
                    <dd><strong>Alcance:</strong> Diagnóstico y seguimiento de trastornos del tracto urinario y evaluaciones urológicas preventivas.</dd>
                    <dd><strong>Requisitos:</strong> Presentar documento de identidad y traer análisis o estudios previos si cuenta con ellos.</dd>

                    <dt>Andrología</dt>
                    <dd><strong>Alcance:</strong> Valoración médica especializada de la salud reproductiva y funcional masculina.</dd>
                    <dd><strong>Requisitos:</strong> Presentar documento de identidad y traer historial clínico o resultados recientes si aplica.</dd>
                </dl>
            </section>

        </section>

    </main>
    </asp:Content>