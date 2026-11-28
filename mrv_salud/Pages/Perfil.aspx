<%@ Page Title="Área Personal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="mrv_salud.Pages.Perfil" %>

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
                            <span aria-hidden="true"></span>
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

                        <div id="formEditarPerfil">
                            <div class="form-editar-grid">
                                <div class="campo-perfil">
                                    <label for="inputNombre">NOMBRE</label>
                                    <input type="text" id="inputNombre" class="input-perfil">
                                </div>

                                <div class="campo-perfil">
                                    <label for="inputApellido">APELLIDO</label>
                                    <input type="text" id="inputApellido" class="input-perfil">
                                </div>

                                <div class="campo-perfil">
                                    <label for="inputNacimiento">FECHA DE NACIMIENTO</label>
                                    <input type="date" id="inputNacimiento" class="input-perfil">
                                </div>

                                <div class="campo-perfil">
                                    <label for="inputTelefono">TELÉFONO</label>
                                    <input type="tel" id="inputTelefono" class="input-perfil">
                                </div>

                                <div class="campo-perfil campo-perfil--full">
                                    <label for="inputCorreo">CORREO</label>
                                    <input type="email" id="inputCorreo" class="input-perfil">
                                </div>
                            </div>

                            <div class="acciones-edicion">
                                <button type="button" class="btn-secundario" id="btnCancelarEdicion">Cancelar</button>
                                <button type="button" class="btn-primario" id="btnGuardarCambiosJS">Guardar cambios</button>
                            </div>
                        </div>
                    </section>

                    <!-- Vista 3: Historial de citas -->
                    <section id="seccionHistorial" class="seccion-panel" hidden>
                        <div class="seccion-cabecera">
                            <div>
                                <h2 class="seccion-titulo">Historial de citas</h2>
                                <p class="seccion-subtitulo">Seguimiento de tus consultas programadas.</p>
                            </div>
                        </div>

                        <div id="contenedorHistorial"></div>
                    </section>
                </div>
            </div>
        </section>

    </main>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Obtiene los datos del usuario serializados desde C# (Session) en Perfil.aspx.cs
            const usuario = <%= ObtenerUsuarioJson() %>;

            // Referencias a los botones del menú lateral y a las secciones intercambiables
            const botonesMenu = document.querySelectorAll(".menu-perfil__item[data-seccion]");
            const secciones = {
                resumen: document.getElementById("seccionResumen"),
                editar: document.getElementById("seccionEditar"),
                historial: document.getElementById("seccionHistorial")
            };

            // Controles de mensajes y botones de acción de la vista de perfil
            const mensajePerfil = document.getElementById("mensajePerfil");
            const btnEditarRapido = document.getElementById("btnEditarRapido");
            const btnCancelarEdicion = document.getElementById("btnCancelarEdicion");
            const btnGuardarCambios = document.getElementById("btnGuardarCambiosJS");

            // Asegura que el nombre de usuario siempre tenga el "@" al mostrarse
            function formatearHandle(userStr) {
                if (!userStr) return "@usuario";
                return userStr.startsWith("@") ? userStr : "@" + userStr;
            }

            // Rellena el saludo, tarjeta lateral, tabla de resumen e inputs de edición con los datos actuales
            function renderizarUsuario() {
                const nombre = usuario.nombre || "User";
                const apellido = usuario.apellido || "";
                const nombreCompleto = (nombre + " " + apellido).trim();
                const handle = formatearHandle(usuario.usuario);

                // Calcula las iniciales para el avatar circular (inicial de nombre + inicial de apellido o 2da letra)
                const ini1 = (nombre[0] || "U").toUpperCase();
                const ini2 = (apellido[0] || nombre[1] || "").toUpperCase();

                // Encabezado y barra lateral
                document.getElementById("tituloSaludo").textContent = "Hola, " + nombre;
                document.getElementById("avatarIniciales").textContent = ini1 + ini2;
                document.getElementById("nombreSidebar").textContent = nombreCompleto;
                document.getElementById("usuarioHandle").textContent = handle;

                // Celdas de "Información personal" (Resumen)
                document.getElementById("datoNombreCompleto").textContent = nombreCompleto;
                document.getElementById("datoNacimiento").textContent = usuario.nacimiento || "0000-00-00";
                document.getElementById("datoUsuario").textContent = handle;
                document.getElementById("datoCorreo").textContent = usuario.correo || "";
                document.getElementById("datoTelefono").textContent = usuario.telefono || "";

                // Campos precargados del formulario "Editar perfil"
                document.getElementById("inputNombre").value = nombre;
                document.getElementById("inputApellido").value = apellido;
                document.getElementById("inputNacimiento").value = usuario.nacimiento || "";
                document.getElementById("inputTelefono").value = usuario.telefono || "";
                document.getElementById("inputCorreo").value = usuario.correo || "";
            }

            // Muestra la sección elegida (resumen, editar o historial), oculta las demás y marca el botón activo
            function cambiarSeccion(nombreSeccion) {
                Object.keys(secciones).forEach(function (clave) {
                    secciones[clave].hidden = clave !== nombreSeccion;
                });

                botonesMenu.forEach(function (btn) {
                    btn.classList.toggle("activo", btn.dataset.seccion === nombreSeccion);
                });
            }

            // Muestra una alerta visual de éxito o error encima de la sección activa
            function mostrarMensaje(texto, esError) {
                mensajePerfil.hidden = false;
                mensajePerfil.textContent = texto;
                mensajePerfil.className = esError
                    ? "mensaje-estado mensaje-error"
                    : "mensaje-estado mensaje-exito";
            }

            // Navegación entre pestañas desde el menú lateral
            botonesMenu.forEach(function (btn) {
                btn.addEventListener("click", function () {
                    mensajePerfil.hidden = true;
                    cambiarSeccion(btn.dataset.seccion);
                });
            });

            // Atajo "Editar" dentro de la sección Información personal
            btnEditarRapido.addEventListener("click", function () {
                mensajePerfil.hidden = true;
                cambiarSeccion("editar");
            });

            // Cancela la edición, descarta cambios no guardados y regresa al resumen
            btnCancelarEdicion.addEventListener("click", function () {
                mensajePerfil.hidden = true;
                renderizarUsuario();
                cambiarSeccion("resumen");
            });

            // Valida y guarda los cambios editados en el objeto local de la vista
            btnGuardarCambios.addEventListener("click", function () {
                const nuevoNombre = document.getElementById("inputNombre").value.trim();
                const nuevoApellido = document.getElementById("inputApellido").value.trim();
                const nuevoNacimiento = document.getElementById("inputNacimiento").value.trim();
                const nuevoTelefono = document.getElementById("inputTelefono").value.trim();
                const nuevoCorreo = document.getElementById("inputCorreo").value.trim();

                // Validación básica de campos obligatorios
                if (!nuevoNombre || !nuevoCorreo) {
                    mostrarMensaje("El nombre y el correo son obligatorios.", true);
                    return;
                }

                // Actualiza los datos y refresca la vista
                usuario.nombre = nuevoNombre;
                usuario.apellido = nuevoApellido;
                usuario.nacimiento = nuevoNacimiento;
                usuario.telefono = nuevoTelefono;
                usuario.correo = nuevoCorreo;

                renderizarUsuario();
                cambiarSeccion("resumen");
                mostrarMensaje("Datos actualizados en la vista actual.", false);
            });

            // Carga inicial de los datos al abrir la página
            renderizarUsuario();

            const cita = <%= ObtenerCitaJson() %>;
            const contenedorHistorial = document.getElementById("contenedorHistorial");

            if (contenedorHistorial) {
                if (cita) {
                    contenedorHistorial.innerHTML = `
            <div class="tarjeta-cita">
                <div class="tarjeta-cita__header">
                    <span class="tarjeta-cita__codigo">Código: ${cita.codigo}</span>
                    <span class="tarjeta-cita__estado">Confirmada</span>
                </div>
                <h3>${cita.especialidad} — ${cita.especialista}</h3>
                <p><strong>Tipo:</strong> ${cita.tipoCita}</p>
                <p><strong>Fecha y hora:</strong> ${cita.fechaCita} a las ${cita.horaCita}</p>
                <p><small>Registrada el: ${cita.fechaRegistro}</small></p>
            </div>
        `;
                } else {
                    contenedorHistorial.innerHTML = `
            <p class="texto-vacio">No tienes citas registradas asociadas a tu correo electrónico.</p>
        `;
                }
            }
        });
    </script>
</asp:Content>