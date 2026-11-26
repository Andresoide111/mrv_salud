<%@ Page Title="Perfil" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="mrv_salud.Pages.Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Styles/Styles_Perfil.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
    <main class="perfil-page">

        <!-- Encabezado superior -->
        <header class="perfil-hero">
            <div class="perfil-contenedor">
                <span class="perfil-hero__etiqueta">ÁREA PERSONAL</span>
                <h1 class="perfil-hero__titulo" id="tituloSaludo">Hola, User</h1>
                <p class="perfil-hero__subtitulo">
                    Gestiona tus datos y revisa el seguimiento de tus citas médicas.
                </p>
            </div>
        </header>

        <!-- Contenido principal -->
        <section class="perfil-cuerpo" aria-label="Panel del paciente">
            <div class="perfil-contenedor perfil-layout">

                <!-- Columna izquierda: Tarjeta de usuario y menú -->
                <aside class="perfil-sidebar">
                    <div class="tarjeta-usuario">
                        <div class="avatar-circulo" id="avatarIniciales">U</div>
                        <h2 class="usuario-nombre" id="nombreSidebar">User</h2>
                        <span class="usuario-handle" id="usuarioHandle">@User</span>
                    </div>

                    <nav class="menu-perfil" aria-label="Secciones del perfil">
                        <button type="button" class="menu-perfil__item activo" data-seccion="resumen">
                            <span class="menu-perfil__icono" aria-hidden="true"></span>
                            <span>Resumen</span>
                        </button>

                        <button type="button" class="menu-perfil__item" data-seccion="editar">
                            <span class="menu-perfil__icono" aria-hidden="true"></span>
                            <span>Editar perfil</span>
                        </button>

                        <button type="button" class="menu-perfil__item" data-seccion="historial">
                            <span class="menu-perfil__icono" aria-hidden="true"></span>
                            <span>Historial de citas</span>
                        </button>

                        <hr class="menu-perfil__separador">
                        <!-- Boton de cerrar sesion que manda a la pagina de inicio -->
                         <asp:LinkButton
                            ID="btnCerrarSesion"
                            runat="server"
                            CssClass="menu-perfil__item menu-perfil__item--salir"
                            OnClick="btnCerrarSesion_Click">
                            <span>Cerrar sesión</span>
                            <span aria-hidden="true">&rarr;</span>
                        </asp:LinkButton>
                    </nav>
                </aside>

                <!-- Columna derecha: Banner CTA + Secciones -->
                <div class="perfil-contenido">

                    <!-- Banner oscuro: Próximo paso -->
                    <section class="banner-consulta" aria-label="Agendar nueva consulta">
                        <div class="banner-consulta__texto">
                            <span class="banner-consulta__etiqueta">PRÓXIMO PASO</span>
                            <h2 class="banner-consulta__titulo">¿Necesitas una nueva consulta?</h2>
                            <p class="banner-consulta__desc">
                                Reserva con tu especialista preferido sin volver a ingresar tus datos personales.
                            </p>
                        </div>
                        <a href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>" class="btn-agendar-cita">
                            Agendar cita
                        </a>
                    </section>

                    <div id="mensajePerfil" class="mensaje-estado mensaje-exito" hidden></div>

                    <!-- Vista 1: Resumen / Información personal (sin DNI) -->
                    <section id="seccionResumen" class="seccion-panel">
                        <div class="seccion-cabecera">
                            <div>
                                <h2 class="seccion-titulo">Información personal</h2>
                                <p class="seccion-subtitulo">Datos asociados a tu cuenta.</p>
                            </div>
                            <button type="button" class="enlace-editar" id="btnEditarRapido">
                                <span aria-hidden="true"></span>
                                <span>Editar</span>
                            </button>
                        </div>

                        <div class="tabla-datos-personales">
                            <div class="dato-celda">
                                <span class="dato-etiqueta">NOMBRE COMPLETO</span>
                                <span class="dato-valor" id="datoNombreCompleto">User 123</span>
                            </div>

                            <div class="dato-celda">
                                <span class="dato-etiqueta">FECHA DE NACIMIENTO</span>
                                <span class="dato-valor" id="datoNacimiento">0000-00-00</span>
                            </div>

                            <div class="dato-celda">
                                <span class="dato-etiqueta">USUARIO</span>
                                <span class="dato-valor" id="datoUsuario">@user</span>
                            </div>

                            <div class="dato-celda">
                                <span class="dato-etiqueta">CORREO</span>
                                <span class="dato-valor" id="datoCorreo">user.123@correo.com</span>
                            </div>

                            <div class="dato-celda dato-celda--full">
                                <span class="dato-etiqueta">TELÉFONO</span>
                                <span class="dato-valor" id="datoTelefono">99999999</span>
                            </div>
                        </div>
                    </section>

                    <!-- Vista 2: Editar perfil -->
                    <section id="seccionEditar" class="seccion-panel" hidden>
                        <div class="seccion-cabecera">
                            <div>
                                <h2 class="seccion-titulo">Editar información personal</h2>
                                <p class="seccion-subtitulo">Actualiza tus datos de contacto y perfil.</p>
                            </div>
                        </div>

                        <form id="formEditarPerfil" novalidate>
                            <div class="form-editar-grid">
                                <div class="campo-perfil">
                                    <label for="inputNombre">NOMBRE</label>
                                    <input type="text" id="inputNombre" class="input-perfil" value="María">
                                </div>

                                <div class="campo-perfil">
                                    <label for="inputApellido">APELLIDO</label>
                                    <input type="text" id="inputApellido" class="input-perfil" value="López">
                                </div>

                                <div class="campo-perfil">
                                    <label for="inputNacimiento">FECHA DE NACIMIENTO</label>
                                    <input type="date" id="inputNacimiento" class="input-perfil" value="1995-04-18">
                                </div>

                                <div class="campo-perfil">
                                    <label for="inputTelefono">TELÉFONO</label>
                                    <input type="tel" id="inputTelefono" class="input-perfil" value="98765432">
                                </div>

                                <div class="campo-perfil campo-perfil--full">
                                    <label for="inputCorreo">CORREO</label>
                                    <input type="email" id="inputCorreo" class="input-perfil" value="maria.lopez@correo.com">
                                </div>
                            </div>

                            <div class="acciones-edicion">
                                <button type="button" class="btn-secundario" id="btnCancelarEdicion">Cancelar</button>
                                <button type="submit" class="btn-primario">Guardar cambios</button>
                            </div>
                        </form>
                    </section>

                    <!-- Vista 3: Historial de citas -->
                    <section id="seccionHistorial" class="seccion-panel" hidden>
                        <div class="seccion-cabecera">
                            <div>
                                <h2 class="seccion-titulo">Historial de citas</h2>
                                <p class="seccion-subtitulo">Seguimiento de tus consultas programadas.</p>
                            </div>
                        </div>

                        <div class="caja-vacia-citas">
                            <p>Aún no tienes citas registradas en esta maqueta.</p>
                            <a href="<%= ResolveUrl("~/Pages/AgendarCita.aspx") %>" class="btn-primario">Agendar mi primera cita</a>
                        </div>
                    </section>

                </div>
            </div>
        </section>

    </main>
    </asp:Content>