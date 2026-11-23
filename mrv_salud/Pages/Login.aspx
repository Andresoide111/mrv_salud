<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="mrv_salud.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- aqui va el enlace al css -->
    <link href="<%= ResolveUrl("~/Styles/Styles_Login_Registro.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
     <!-- aqui va el contenido que solo usa esta pagina -->
    <main class="login-page">
        <section class="login-section" aria-label="Acceso al portal de pacientes">
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

            <!-- Columna Derecha: Formulario de acceso -->
            <div class="login-form-panel">
                <div class="login-form-container">
                    <!-- Pestañas superiores -->
                    <div class="auth-tabs" role="tablist">
                        <a href="<%= ResolveUrl("~/Pages/Login.aspx") %>" class="tab-item active" role="tab" aria-selected="true">Iniciar sesión</a>
                        <a href="<%= ResolveUrl("~/Pages/Registrar.aspx") %>" class="tab-item" role="tab" aria-selected="false">Crear cuenta</a>
                    </div>

                    <!-- Encabezado del formulario -->
                    <div class="form-header">
                        <div class="login-icon-circle">
                            <img src="<%= ResolveUrl("~/Images/user_lock.svg") %>" alt="Acceso seguro MRV Salud">
                        </div>
                        <h2>Bienvenido de nuevo</h2>
                        <p>Ingresa a tu espacio personal de salud</p>
                    </div>

                    <form>
                        <div class="campo-grupo">
                            <label for="username">USUARIO O CORREO</label>
                            <input type="text" id="username" name="username" required autocomplete="username" placeholder="Tu usuario o correo">
                        </div>

                        <div class="campo-grupo">
                            <label for="password">CONTRASEÑA</label>
                            <input type="password" id="password" name="password" required autocomplete="current-password" placeholder="Tu contraseña">
                        </div>

                        <div class="form-opciones">
                            <label class="checkbox-label">
                                <input type="checkbox" name="remember" id="remember">
                                <span>Recordarme</span>
                            </label>
                            <a href="<%= ResolveUrl("~/Pages/Contraseña_olvidada.aspx") %>" class="forgot-password">¿Olvidaste tu contraseña?</a>
                        </div>

                        <button type="submit" class="btn-submit">
                            <span>Iniciar sesión</span>
                            <span aria-hidden="true">&rarr;</span>
                        </button>
                    </form>
                </div>
            </div>
        </section>
    </main>
    </asp:Content>