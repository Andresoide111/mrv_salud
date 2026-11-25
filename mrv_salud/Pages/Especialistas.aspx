<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="mrv_salud.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- aqui va el enlace al css -->
    <link href="<%= ResolveUrl("~/Styles/Styles_Especialistas.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
     <!-- aqui va el contenido que solo usa esta pagina -->
    <main class="especialistas-page" id="especialistas">

        <!-- Encabezado superior centrado sobre fondo crema -->
        <header class="especialistas-hero">
            <div class="especialistas-hero__inner">
                <span class="especialistas-hero__etiqueta">EQUIPO MÉDICO</span>
                <h1 class="especialistas-hero__titulo">Expertos que cuidan de ti</h1>
                <p class="especialistas-hero__descripcion">
                    Profesionales certificados, comprometidos con una medicina rigurosa, cercana y comprensible.
                </p>
            </div>
        </header>

        <!-- Cuadrícula de especialistas -->
        <section class="especialistas-grid-section" aria-label="Directorio de especialistas">
            <div class="contenedor">

                <!-- Filtro rápido por especialidad -->
                <div class="filtros-especialidad" role="tablist" aria-label="Filtrar por especialidad">
                    <button type="button" class="filtro-btn activo" data-especialidad="todas">Todas</button>
                    <button type="button" class="filtro-btn" data-especialidad="Cardiología">Cardiología</button>
                    <button type="button" class="filtro-btn" data-especialidad="Neurología">Neurología</button>
                    <button type="button" class="filtro-btn" data-especialidad="Pediatría">Pediatría</button>
                    <button type="button" class="filtro-btn" data-especialidad="Ortopedia">Ortopedia</button>
                    <button type="button" class="filtro-btn" data-especialidad="Medicina Interna">Medicina Interna</button>
                    <button type="button" class="filtro-btn" data-especialidad="Ginecología">Ginecología</button>
                    <button type="button" class="filtro-btn" data-especialidad="Dermatología">Dermatología</button>
                    <button type="button" class="filtro-btn" data-especialidad="Urología">Urología</button>
                    <button type="button" class="filtro-btn" data-especialidad="Andrología">Andrología</button>
                </div>

                <div class="especialistas-grid" id="gridEspecialistas">

                    <!-- 1. Cardiología -->
                    <article class="especialista-card" data-especialidad="Cardiología">
                        <div class="especialista-card__foto">
                            <img src="<%= ResolveUrl("~/images/Elena_Martinez.webp") %>" alt="Dra. Elena Martínez">
                        </div>
                        <div class="especialista-card__cuerpo">
                            <span class="especialista-card__especialidad">CARDIOLOGÍA</span>
                            <h2 class="especialista-card__nombre">Dra. Elena Martínez</h2>
                            <p class="especialista-card__detalle">Cardióloga intervencionista · 14 años de experiencia</p>
                            <a href="../citas.html?especialista=elena-martinez" class="especialista-card__enlace">
                                <span>Solicitar cita</span>
                                <span aria-hidden="true">&rarr;</span>
                            </a>
                        </div>
                    </article>

                    <!-- 2. Neurología -->
                    <article class="especialista-card" data-especialidad="Neurología">
                        <div class="especialista-card__foto">
                            <img src="<%= ResolveUrl("~/images/Sofia_lopez.webp") %>" alt="Dra. Sofía López">
                        </div>
                        <div class="especialista-card__cuerpo">
                            <span class="especialista-card__especialidad">NEUROLOGÍA</span>
                            <h2 class="especialista-card__nombre">Dra. Sofía López</h2>
                            <p class="especialista-card__detalle">Neuróloga clínica · 9 años de experiencia</p>
                            <a href="../citas.html?especialista=sofia-lopez" class="especialista-card__enlace">
                                <span>Solicitar cita</span>
                                <span aria-hidden="true">&rarr;</span>
                            </a>
                        </div>
                    </article>

                    <!-- 3. Pediatría -->
                    <article class="especialista-card" data-especialidad="Pediatría">
                        <div class="especialista-card__foto">
                            <img src="<%= ResolveUrl("~/images/Carlos_Rivera.webp") %>" alt="Dr. Carlos Rivera">
                        </div>
                        <div class="especialista-card__cuerpo">
                            <span class="especialista-card__especialidad">PEDIATRÍA</span>
                            <h2 class="especialista-card__nombre">Dr. Carlos Rivera</h2>
                            <p class="especialista-card__detalle">Pediatra y neonatólogo · 11 años de experiencia</p>
                            <a href="../citas.html?especialista=carlos-rivera" class="especialista-card__enlace">
                                <span>Solicitar cita</span>
                                <span aria-hidden="true">&rarr;</span>
                            </a>
                        </div>
                    </article>

                    <!-- 4. Ortopedia -->
                    <article class="especialista-card" data-especialidad="Ortopedia">
                        <div class="especialista-card__foto">
                            <img src="<%= ResolveUrl("~/images/Andres_Mejia.webp") %>" alt="Dr. Andrés Mejía">
                        </div>
                        <div class="especialista-card__cuerpo">
                            <span class="especialista-card__especialidad">ORTOPEDIA</span>
                            <h2 class="especialista-card__nombre">Dr. Andrés Mejía</h2>
                            <p class="especialista-card__detalle">Cirujano ortopeda · 10 años de experiencia</p>
                            <a href="../citas.html?especialista=andres-mejia" class="especialista-card__enlace">
                                <span>Solicitar cita</span>
                                <span aria-hidden="true">&rarr;</span>
                            </a>
                        </div>
                    </article>

                    <!-- 5. Medicina Interna -->
                    <article class="especialista-card" data-especialidad="Medicina Interna">
                        <div class="especialista-card__foto">
                            <img src="<%= ResolveUrl("~/images/Fernando_Castellanos.webp") %>" alt="Dr. Fernando Castellanos">
                        </div>
                        <div class="especialista-card__cuerpo">
                            <span class="especialista-card__especialidad">MEDICINA INTERNA</span>
                            <h2 class="especialista-card__nombre">Dr. Fernando Castellanos</h2>
                            <p class="especialista-card__detalle">Especialista en medicina interna · 12 años de experiencia</p>
                            <a href="../citas.html?especialista=fernando-castellanos" class="especialista-card__enlace">
                                <span>Solicitar cita</span>
                                <span aria-hidden="true">&rarr;</span>
                            </a>
                        </div>
                    </article>

                    <!-- 6. Ginecología -->
                    <article class="especialista-card" data-especialidad="Ginecología">
                        <div class="especialista-card__foto">
                            <img src="<%= ResolveUrl("~/images/Valeria_Mendoza.webp") %>" alt="Dra. Valeria Mendoza">
                        </div>
                        <div class="especialista-card__cuerpo">
                            <span class="especialista-card__especialidad">GINECOLOGÍA</span>
                            <h2 class="especialista-card__nombre">Dra. Valeria Mendoza</h2>
                            <p class="especialista-card__detalle">Ginecóloga y obstetra · 10 años de experiencia</p>
                            <a href="../citas.html?especialista=valeria-mendoza" class="especialista-card__enlace">
                                <span>Solicitar cita</span>
                                <span aria-hidden="true">&rarr;</span>
                            </a>
                        </div>
                    </article>

                    <!-- 7. Dermatología -->
                    <article class="especialista-card" data-especialidad="Dermatología">
                        <div class="especialista-card__foto">
                            <img src="<%= ResolveUrl("~/images/Lucia_Herrera.webp") %>" alt="Dra. Lucía Herrera">
                        </div>
                        <div class="especialista-card__cuerpo">
                            <span class="especialista-card__especialidad">DERMATOLOGÍA</span>
                            <h2 class="especialista-card__nombre">Dra. Lucía Herrera</h2>
                            <p class="especialista-card__detalle">Dermatóloga clínica y estética · 8 años de experiencia</p>
                            <a href="../citas.html?especialista=lucia-herrera" class="especialista-card__enlace">
                                <span>Solicitar cita</span>
                                <span aria-hidden="true">&rarr;</span>
                            </a>
                        </div>
                    </article>

                    <!-- 8. Urología -->
                    <article class="especialista-card" data-especialidad="Urología">
                        <div class="especialista-card__foto">
                            <img src="<%= ResolveUrl("~/images/Ricardo_Zelaya.webp") %>" alt="Dr. Ricardo Zelaya">
                        </div>
                        <div class="especialista-card__cuerpo">
                            <span class="especialista-card__especialidad">UROLOGÍA</span>
                            <h2 class="especialista-card__nombre">Dr. Ricardo Zelaya</h2>
                            <p class="especialista-card__detalle">Urólogo especialista · 13 años de experiencia</p>
                            <a href="../citas.html?especialista=ricardo-zelaya" class="especialista-card__enlace">
                                <span>Solicitar cita</span>
                                <span aria-hidden="true">&rarr;</span>
                            </a>
                        </div>
                    </article>

                    <!-- 9. Andrología -->
                    <article class="especialista-card" data-especialidad="Andrología">
                        <div class="especialista-card__foto">
                            <img src="<%= ResolveUrl("~/images/Javier_Pineda.webp") %>" alt="Dr. Javier Pineda">
                        </div>
                        <div class="especialista-card__cuerpo">
                            <span class="especialista-card__especialidad">ANDROLOGÍA</span>
                            <h2 class="especialista-card__nombre">Dr. Javier Pineda</h2>
                            <p class="especialista-card__detalle">Andrólogo y salud reproductiva masculina · 9 años de experiencia</p>
                            <a href="../citas.html?especialista=javier-pineda" class="especialista-card__enlace">
                                <span>Solicitar cita</span>
                                <span aria-hidden="true">&rarr;</span>
                            </a>
                        </div>
                    </article>

                </div>
            </div>
        </section>

        <!-- Sección de Horarios de atención -->
        <section class="horarios-section" aria-label="Horarios de atención semanal">
            <div class="contenedor">
                <div class="horarios-cabecera">
                    <div>
                        <span class="horarios-etiqueta">DISPONIBILIDAD SEMANAL</span>
                        <h2 class="horarios-titulo">Horarios de atención</h2>
                    </div>
                    <p class="horarios-nota">
                        Los horarios pueden variar. Confirma la disponibilidad exacta al completar tu reserva.
                    </p>
                </div>

                <div class="tabla-responsive">
                    <table class="tabla-horarios">
                        <thead>
                            <tr>
                                <th>Especialista</th>
                                <th>Lunes</th>
                                <th>Martes</th>
                                <th>Miércoles</th>
                                <th>Jueves</th>
                                <th>Viernes</th>
                                <th>Sábado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <strong>Dra. Elena Martínez</strong>
                                    <span>Cardiología</span>
                                </td>
                                <td>8:00 a.m. – 12:00 p.m.</td>
                                <td>8:00 a.m. – 12:00 p.m.</td>
                                <td>2:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 12:00 p.m.</td>
                                <td>8:00 a.m. – 12:00 p.m.</td>
                                <td>No disponible</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Dra. Sofía López</strong>
                                    <span>Neurología</span>
                                </td>
                                <td>8:00 a.m. – 3:00 p.m.</td>
                                <td>9:00 a.m. – 2:00 p.m.</td>
                                <td>9:00 a.m. – 2:00 p.m.</td>
                                <td>2:00 – 6:00 p.m.</td>
                                <td>9:00 a.m. – 2:00 p.m.</td>
                                <td>No disponible</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Dr. Carlos Rivera</strong>
                                    <span>Pediatría</span>
                                </td>
                                <td>8:00 a.m. – 3:00 p.m.</td>
                                <td>1:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>1:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 3:00 p.m.</td>
                                <td>8:00 a.m. – 12:00 p.m.</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Dr. Andrés Mejía</strong>
                                    <span>Ortopedia</span>
                                </td>
                                <td>2:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>2:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 12:00 p.m.</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Dr. Fernando Castellanos</strong>
                                    <span>Medicina Interna</span>
                                </td>
                                <td>8:00 a.m. – 2:00 p.m.</td>
                                <td>8:00 a.m. – 2:00 p.m.</td>
                                <td>8:00 a.m. – 2:00 p.m.</td>
                                <td>1:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 2:00 p.m.</td>
                                <td>8:00 a.m. – 12:00 p.m.</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Dra. Valeria Mendoza</strong>
                                    <span>Ginecología</span>
                                </td>
                                <td>9:00 a.m. – 3:00 p.m.</td>
                                <td>9:00 a.m. – 3:00 p.m.</td>
                                <td>1:00 – 6:00 p.m.</td>
                                <td>9:00 a.m. – 3:00 p.m.</td>
                                <td>9:00 a.m. – 2:00 p.m.</td>
                                <td>8:00 a.m. – 12:00 p.m.</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Dra. Lucía Herrera</strong>
                                    <span>Dermatología</span>
                                </td>
                                <td>1:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>1:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>No disponible</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Dr. Ricardo Zelaya</strong>
                                    <span>Urología</span>
                                </td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>1:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>1:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>No disponible</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Dr. Javier Pineda</strong>
                                    <span>Andrología</span>
                                </td>
                                <td>1:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>1:00 – 6:00 p.m.</td>
                                <td>8:00 a.m. – 1:00 p.m.</td>
                                <td>1:00 – 5:00 p.m.</td>
                                <td>No disponible</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr class="fila-emergencia">
                                <td colspan="7">
                                    Para emergencias, nuestra unidad de atención inmediata está disponible las 24 horas.
                                </td>
                            </tr>
                            <tr class="fila-pie-tabla">
                                <td colspan="7">
                                    Horario semanal de especialistas — MRV Salud
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </section>

    </main>
    </asp:Content>