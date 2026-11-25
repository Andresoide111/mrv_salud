<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="mrv_salud.Pages.Registrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Styles/Styles_Login_Registro.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
    <main class="login-page">
        <section class="login-section" aria-label="Registro en el portal de pacientes">
            <!-- Columna Izquierda: Banner informativo -->
            <aside class="login-banner">
                <img src="<%= ResolveUrl("~/Images/banner_login.svg") %>" alt="" aria-hidden="true" class="login-banner-bg">
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
                        <a href="<%= ResolveUrl("~/Pages/Registrar.aspx") %>" class="tab-item active" role="tab" aria-selected="true">Crear cuenta</a>
                    </div>

                    <!-- Encabezado del formulario -->
                    <div class="form-header">
                        <div class="login-icon-circle">
                            <img src="<%= ResolveUrl("~/Images/user_pen.svg") %>" alt="Crear cuenta MRV Salud">
                        </div>
                        <h2>Crear cuenta</h2>
                        <p>Completa tus datos para agilizar tus próximas reservas.</p>
                    </div>

                    <!-- Mensajes de validación / confirmación -->
                    <asp:Panel ID="pnlMensaje" runat="server" Visible="false" CssClass="mensaje-registro">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </asp:Panel>

                    <div class="register-form">
                        <!-- Columna Izquierda: Datos personales -->
                        <div class="columna-form">
                            <div class="campo-grupo">
                                <label for="<%= txtNombre.ClientID %>">NOMBRE</label>
                                <asp:TextBox ID="txtNombre" runat="server" placeholder="Tu nombre" autocomplete="given-name" />
                            </div>

                            <div class="campo-grupo">
                                <label for="<%= txtApellido.ClientID %>">APELLIDO</label>
                                <asp:TextBox ID="txtApellido" runat="server" placeholder="Tu apellido" autocomplete="family-name" />
                            </div>

                            <div class="campo-grupo">
                                <label for="<%= txtFechaNacimiento.ClientID %>">FECHA DE NACIMIENTO</label>
                                <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date" autocomplete="bday" />
                            </div>

                            <div class="campo-grupo">
                                <label for="<%= txtTelefono.ClientID %>">TELÉFONO</label>
                                <asp:TextBox ID="txtTelefono" runat="server" TextMode="Phone" placeholder="Ej. 9999-9999" autocomplete="tel" />
                            </div>
                        </div>

                        <!-- Columna Derecha: Datos de acceso -->
                        <div class="columna-form">
                            <div class="campo-grupo">
                                <label for="<%= txtUsername.ClientID %>">USUARIO</label>
                                <asp:TextBox ID="txtUsername" runat="server" placeholder="Tu nombre de usuario" autocomplete="username" />
                            </div>

                            <div class="campo-grupo">
                                <label for="<%= txtEmail.ClientID %>">CORREO ELECTRÓNICO</label>
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Tu correo electrónico" autocomplete="email" />
                            </div>

                            <div class="campo-grupo">
                                <label for="<%= txtPassword.ClientID %>">CONTRASEÑA</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Mínimo 8 caracteres" autocomplete="new-password" />
                            </div>

                            <div class="campo-grupo">
                                <label for="<%= txtConfirmPassword.ClientID %>">CONFIRMAR CONTRASEÑA</label>
                                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirma tu contraseña" autocomplete="new-password" />
                            </div>
                        </div>

                        <!-- Fila inferior completa: Términos y botón -->
                        <div class="form-footer-full">
                            <div class="form-opciones">
                                <label class="checkbox-label">
                                    <asp:CheckBox ID="chkTerms" runat="server" CssClass="form-checkbox" />
                                    <span>Acepto los
                                        <a href="<%= ResolveUrl("~/Pages/Terminos_y_condiciones.aspx") %>" class="forgot-password" target="_blank" rel="noopener noreferrer">
                                            términos y condiciones</a>
                                    </span>
                                </label>
                            </div>

                            <asp:LinkButton
                                ID="btnRegistrar"
                                runat="server"
                                CssClass="btn-submit"
                                OnClick="btnRegistrar_Click">
                                <span>Crear cuenta</span>
                                <span aria-hidden="true">&rarr;</span>
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>