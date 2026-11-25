<%@ Page Title="Recuperar Contraseña" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contraseña_olvidada.aspx.cs" Inherits="mrv_salud.Pages.Contraseña_olvidada" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Styles/Styles_Login_Registro.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
    <main class="login-page">
        <section class="login-section" aria-label="Recuperación de contraseña">
            <!-- Columna Izquierda: Banner informativo -->
            <aside class="login-banner">
                <img src="<%= ResolveUrl("~/Images/banner_login.svg") %>" alt="" aria-hidden="true" class="login-banner-bg">
                <div class="login-banner-content">
                    <span class="portal-tag">PORTAL DE PACIENTES</span>
                    <h1>Tu salud,<br>organizada en un<br>solo lugar.</h1>
                    <p class="banner-desc">
                        Recupera el acceso a tu cuenta de forma rápida y segura para seguir gestionando tus citas médicas.
                    </p>

                    <ul class="beneficios-lista">
                        <li>
                            <span class="check-icon" aria-hidden="true">&#10003;</span>
                            <span>Verificación segura por correo o usuario</span>
                        </li>
                        <li>
                            <span class="check-icon" aria-hidden="true">&#10003;</span>
                            <span>Enlace de restablecimiento temporal</span>
                        </li>
                        <li>
                            <span class="check-icon" aria-hidden="true">&#10003;</span>
                            <span>Información personal protegida</span>
                        </li>
                    </ul>
                </div>
            </aside>

            <!-- Columna Derecha: Formulario de recuperación -->
            <div class="login-form-panel">
                <div class="login-form-container recuperar-container">
                    <!-- Pestañas superiores -->
                    <div class="auth-tabs" role="tablist">
                        <a href="<%= ResolveUrl("~/Pages/Login.aspx") %>" class="tab-item" role="tab" aria-selected="false">Iniciar sesión</a>
                        <a href="<%= ResolveUrl("~/Pages/Registrar.aspx") %>" class="tab-item" role="tab" aria-selected="false">Crear cuenta</a>
                    </div>

                    <!-- Encabezado del formulario -->
                    <div class="form-header">
                        <div class="login-icon-circle">
                            <img src="<%= ResolveUrl("~/Images/user_lock.svg") %>" alt="Recuperar contraseña MRV Salud">
                        </div>
                        <h2>¿Olvidaste tu contraseña?</h2>
                        <p>Ingresa tu correo electrónico o nombre de usuario y te enviaremos las instrucciones.</p>
                    </div>

                    <!-- Mensaje de respuesta (éxito o error) -->
                    <asp:Panel ID="pnlMensaje" runat="server" Visible="false" CssClass="mensaje-estado">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </asp:Panel>

                    <div class="login-form">
                        <div class="campo-grupo">
                            <label>CORREO ELECTRÓNICO O USUARIO</label> 
                            <asp:TextBox
                                ID="txtUsuario"
                                runat="server"
                                placeholder="Tu usuario o correo"
                                autocomplete="username" />
                        </div>
                        <asp:LinkButton
                                ID="btnRecuperar"
                                runat="server"
                                CssClass="btn-submit"
                                OnClick="btnRecuperar_Click">
                            <span>Recuperar contraseña</span>
                            <span aria-hidden="true">&rarr;</span>
                        </asp:LinkButton>
                    </div>

                    <p class="volver-login-box">
                        ¿Recordaste tu contraseña? <a href="<%= ResolveUrl("~/Pages/Login.aspx") %>">Volver a iniciar sesión</a>
                    </p>
                </div>
            </div>
        </section>
    </main>
</asp:Content>