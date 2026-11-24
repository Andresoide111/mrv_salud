<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="mrv_salud.Pages.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- aqui va el enlace al css -->
    <link href="<%= ResolveUrl("~/Styles/Styles_Login_Registro.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
     <!-- aqui va el contenido que solo usa esta pagina -->
    <main class="login-page">
        <!-- Encabezado de página -->
        <section class="login-section" aria-label="Registro en el portal de pacientes">
            <!-- Columna Izquierda: Banner informativo -->
            <aside class="login-banner">
                <img src="<%= ResolveUrl("~/images/banner_login.svg") %>" alt="" aria-hidden="true" class="login-banner-bg">
                <div class="login-banner-content">
                    <span class="portal-tag">PORTAL DE PACIENTES</span>
                    <h1>Tu salud,<br>organizada en un<br>solo lugar.</h1>
                    <p class="banner-desc">
                        Agenda consultas más rápido, revisa tu historial y mantén tus datos siempre actualizados.
                    </p>

                    <ul class="beneficios-lista">
                        <li>
                            <span class="check-icon" aria-hidden="true">&#10003;</span>
                            <span>Reserva sin repetir tus datos</span>
                        </li>
                        <li>
                            <span class="check-icon" aria-hidden="true">&#10003;</span>
                            <span>Historial de citas centralizado</span>
                        </li>
                        <li>
                            <span class="check-icon" aria-hidden="true">&#10003;</span>
                            <span>Información personal protegida</span>
                        </li>
                    </ul>
                </div>
            </aside>

            <!-- Columna Derecha: Formulario de registro -->
            <div class="login-form-panel">
                <div class="login-form-container register-container">
                    <!-- Pestañas superiores -->
                    <div class="auth-tabs" role="tablist">
                        <a href="<%= ResolveUrl("~/Pages/Login.aspx") %>" class="tab-item" role="tab" aria-selected="false">Iniciar sesión</a>
                        <a href="<%= ResolveUrl("~/Pages/Registrar.aspx") %>" class="tab-item active" role="tab" aria-selected="true">Crear
                            cuenta</a>
                    </div>

                    <!-- Encabezado del formulario -->
                    <div class="form-header">
                        <div class="login-icon-circle">
                            <img src="<%= ResolveUrl("~/Images/user_pen.svg") %>" alt="Crear cuenta MRV Salud">
                        </div>
                        <h2>Crear cuenta</h2>
                        <p>Completa tus datos para agilizar tus próximas reservas.</p>
                    </div>

                    <div class="register-form">
                        <!-- Columna Izquierda: Datos personales -->
                        <div class="columna-form">
                            <div class="campo-grupo">
                                <label for="nombre">NOMBRE</label>
                                <input type="text" id="nombre" name="nombre completo" required autocomplete="given-name"
                                    placeholder="Tu nombre">
                            </div>

                            <div class="campo-grupo">
                                <label for="apellido">APELLIDO</label>
                                <input type="text" id="apellido" name="apellido" required autocomplete="family-name"
                                    placeholder="Tu apellido">
                            </div>

                            <div class="campo-grupo">
                                <label for="fecha_nacimiento">FECHA DE NACIMIENTO</label>
                                <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" required
                                    autocomplete="bday">
                            </div>

                            <div class="campo-grupo">
                                <label for="telefono">TELÉFONO</label>
                                <input type="tel" id="telefono" name="telefono" required autocomplete="tel"
                                    placeholder="Ej. 9999-9999">
                            </div>
                        </div>

                        <!-- Columna Derecha: Datos de acceso -->
                        <div class="columna-form">
                            <div class="campo-grupo">
                                <label for="username">USUARIO</label>
                                <input type="text" id="username" name="username" required autocomplete="username"
                                    placeholder="Tu nombre de usuario">
                            </div>

                            <div class="campo-grupo">
                                <label for="email">CORREO ELECTRÓNICO</label>
                                <input type="email" id="email" name="email" required autocomplete="email"
                                    placeholder="Tu correo electrónico">
                            </div>

                            <div class="campo-grupo">
                                <label for="password">CONTRASEÑA</label>
                                <input type="password" id="password" name="password" required minlength="8"
                                    autocomplete="new-password" placeholder="Mínimo 8 caracteres">
                            </div>

                            <div class="campo-grupo">
                                <label for="confirm_password">CONFIRMAR CONTRASEÑA</label>
                                <input type="password" id="confirm_password" name="confirm_password" required
                                    minlength="8" autocomplete="new-password" placeholder="Confirma tu contraseña">
                            </div>
                        </div>

                        <!-- Fila inferior completa: Términos y botón -->
                        <div class="form-footer-full">
                            <div class="form-opciones">
                                <label class="checkbox-label">
                                    <input type="checkbox" name="terms" id="terms" required>
                                    <p>Acepto los
                                        <a href="<%= ResolveUrl("Terminos_y_condiciones.aspx") %>" class="forgot-password" target="_blank" rel="noopener noreferrer">
                                        términos y condiciones</a>
                                    </p>

                                </label>
                            </div>

                            <button type="submit" class="btn-submit">
                                <span>Crear cuenta</span>
                                <span aria-hidden="true">&rarr;</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    </asp:Content>