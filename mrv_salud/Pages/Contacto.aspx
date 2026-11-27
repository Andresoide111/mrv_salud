<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Async="true" CodeBehind="Contacto.aspx.cs" Inherits="mrv_salud.Pages.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Styles/Styles_Contacto.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
    <main class="contacto" id="contacto">
        <!-- Encabezado superior centrado sobre fondo crema -->
        <header class="contacto__hero">
            <div class="contacto__hero-inner">
                <span class="contacto__etiqueta">ESTAMOS CERCA</span>
                <h1 class="contacto__titulo">Contacto y ubicación</h1>
                <p class="contacto__descripcion">
                    Nuestro equipo de atención está disponible para orientarte antes, durante y después de tu visita.
                </p>
            </div>
        </header>

        <!-- Cuerpo principal en dos columnas -->
        <section class="contacto__cuerpo" aria-label="Información de contacto y formulario">
            <div class="contacto__contenedor">

                <!-- Columna Izquierda: Datos de contacto y mapa/ubicación -->
                <aside class="info-contacto">
                    <div class="info-item">
                        <div class="info-item__icono">
                            <img src="<%= ResolveUrl("~/Images/telefono.svg") %>" class="icono-verde" alt="Icono teléfono" />
                        </div>
                        <div class="info-item__texto">
                            <span class="info-item__label">TELÉFONOS</span>
                            <h2><a href="tel:+50422345555">+504 2234-5555</a></h2>
                            <p>Emergencias: <a href="tel:+50422345500">+504 2234-5500</a> · Correo: <a href="mailto:contacto@mrvsalud.hn">contacto@mrvsalud.hn</a></p>
                        </div>
                    </div>

                    <div class="info-item">
                        <div class="info-item__icono">
                            <img src="<%= ResolveUrl("~/Images/horario.svg") %>" class="icono-verde" alt="Icono horario" />
                        </div>
                        <div class="info-item__texto">
                            <span class="info-item__label">HORARIOS</span>
                            <h2>Lunes a sábado</h2>
                            <p>7:00 a. m. – 7:00 p. m. · Emergencias 24/7</p>
                        </div>
                    </div>

                    <div class="info-item">
                        <div class="info-item__icono">
                            <img src="<%= ResolveUrl("~/Images/ubicacion.svg") %>" alt="Icono ubicación" />
                        </div>
                        <div class="info-item__texto">
                            <span class="info-item__label">DIRECCIÓN</span>
                            <h2>Bulevar Morazán, Edificio 1240</h2>
                            <p>Comayagüela / Tegucigalpa, Francisco Morazán, Honduras</p>
                        </div>
                    </div>

                    <!-- Tarjeta visual de ubicación -->
                    <div class="ubicacion-tarjeta">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3869.6126262752555!2d-87.18898702513742!3d14.100029986328888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8f6fa326da9c4fab%3A0xcc904d27d8633f76!2sBlvd.%20Moraz%C3%A1n%2C%20Tegucigalpa%2C%20Francisco%20Moraz%C3%A1n!5e0!3m2!1ses-419!2shn!4v1795481392630!5m2!1ses-419!2shn" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="strict-origin-when-cross-origin"></iframe>
                    </div>
                </aside>

                <!-- Columna Derecha: Tarjeta del formulario -->
                <div class="formulario-panel">
                    <span class="formulario-panel__etiqueta">ESCRÍBENOS</span>
                    <h2 class="formulario-panel__titulo">¿Cómo podemos ayudarte?</h2>
                    <p class="formulario-panel__subtitulo">
                        Déjanos tu consulta y nuestro equipo te contactará en el menor tiempo posible.
                    </p>

                    <div class="formulario">
                        <div class="formulario__grupo">
                            <label for="<%= txtNombre.ClientID %>">NOMBRE COMPLETO *</label>
                            <asp:TextBox
                                ID="txtNombre"
                                runat="server"
                                placeholder="Tu nombre"
                                autocomplete="name" />
                        </div>

                        <div class="formulario__grupo">
                            <label for="<%= txtCorreo.ClientID %>">CORREO ELECTRÓNICO *</label>
                            <asp:TextBox
                                ID="txtCorreo"
                                runat="server"
                                TextMode="Email"
                                placeholder="nombre@correo.com"
                                autocomplete="email" />
                        </div>

                        <div class="formulario__grupo">
                            <label for="<%= txtTelefono.ClientID %>">TELÉFONO</label>
                            <asp:TextBox
                                ID="txtTelefono"
                                runat="server"
                                TextMode="Phone"
                                placeholder="+504 0000-0000"
                                autocomplete="tel" />
                        </div>

                        <div class="formulario__grupo">
                            <label for="<%= ddlMotivo.ClientID %>">ASUNTO *</label>
                            <asp:DropDownList ID="ddlMotivo" runat="server">
                                <asp:ListItem Text="Seleccionar asunto" Value="" Selected="True" />
                                <asp:ListItem Text="Información de servicios" Value="Información de servicios" />
                                <asp:ListItem Text="Ayuda con una cita" Value="Ayuda con una cita" />
                                <asp:ListItem Text="Consultar resultados" Value="Consultar resultados" />
                                <asp:ListItem Text="Otro motivo" Value="Otro motivo" />
                            </asp:DropDownList>
                        </div>

                        <div class="formulario__grupo">
                            <label for="<%= txtMensaje.ClientID %>">MENSAJE *</label>
                            <asp:TextBox
                                ID="txtMensaje"
                                runat="server"
                                TextMode="MultiLine"
                                Rows="5"
                                placeholder="Escribe tu consulta aquí" />
                        </div>

                        <asp:LinkButton
                            ID="btnEnviar"
                            runat="server"
                            CssClass="boton-enviar"
                            OnClick="btnEnviar_Click">
                            <span>Enviar consulta</span>
                            <img src="<%= ResolveUrl("~/Images/envio.svg") %>" alt="" aria-hidden="true" class="boton-enviar__icono" />
                        </asp:LinkButton>

                        <asp:Panel
                            ID="pnlEstado"
                            runat="server"
                            Visible="false"
                            CssClass="mensaje-formulario"
                            role="status"
                            aria-live="polite">
                            <asp:Label ID="lblEstado" runat="server" />
                        </asp:Panel>
                    </div>
                </div>

            </div>
        </section>
    </main>
</asp:Content>