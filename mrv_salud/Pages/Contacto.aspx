<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="mrv_salud.Pages.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- aqui va el enlace al css -->
    <link href="<%= ResolveUrl("~/Styles/Styles_contacto.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
     <!-- aqui va el contenido que solo usa esta pagina -->
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
                            <img src="<%= ResolveUrl("~/Images/telefono.svg") %>" class="icono-verde" alt="Icono teléfono" >
                        </div>
                        <div class="info-item__texto">
                            <span class="info-item__label">TELÉFONOS</span>
                            <h2><a href="tel:+50422345555">+504 2234-5555</a></h2>
                            <p>Emergencias: <a href="tel:+50422345500">+504 2234-5500</a> · Correo: <a href="mailto:contacto@mrvsalud.hn">contacto@mrvsalud.hn</a></p>
                        </div>
                    </div>

                    <div class="info-item">
                        <div class="info-item__icono">
                            <img src="<%= ResolveUrl("~/Images/horario.svg") %>" class="icono-verde" alt="Icono horario">
                        </div>
                        <div class="info-item__texto">
                            <span class="info-item__label">HORARIOS</span>
                            <h2>Lunes a sábado</h2>
                            <p>7:00 a. m. – 7:00 p. m. · Emergencias 24/7</p>
                        </div>
                    </div>
                    <div class="info-item">
                        <div class="info-item__icono">
                            <img src="<%= ResolveUrl("~/Images/ubicacion.svg") %>" alt="Icono ubicación">
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

                    <form id="formulario" class="formulario" novalidate>
                        <div class="formulario__grupo">
                            <label for="nombre">NOMBRE COMPLETO *</label>
                            <input
                                type="text"
                                id="nombre"
                                name="nombre"
                                placeholder="Tu nombre"
                                autocomplete="name"
                                required
                            >
                        </div>

                        <div class="formulario__grupo">
                            <label for="correo">CORREO ELECTRÓNICO *</label>
                            <input
                                type="email"
                                id="correo"
                                name="correo"
                                placeholder="nombre@correo.com"
                                autocomplete="email"
                                required
                            >
                        </div>

                        <div class="formulario__grupo">
                            <label for="telefono">TELÉFONO</label>
                            <input
                                type="tel"
                                id="telefono"
                                name="telefono"
                                placeholder="+504 0000-0000"
                                autocomplete="tel"
                            >
                        </div>

                        <div class="formulario__grupo">
                            <label for="motivo">ASUNTO *</label>
                            <select id="motivo" name="motivo" required>
                                <option value="" selected disabled>Seleccionar asunto</option>
                                <option value="cita">Información de servicios</option>
                                <option value="informacion">Ayuda con una cita</option>
                                <option value="resultados">Consultar resultados</option>
                                <option value="otro">Otro motivo</option>
                            </select>
                        </div>

                        <div class="formulario__grupo">
                            <label for="mensaje">MENSAJE *</label>
                            <textarea
                                id="mensaje"
                                name="mensaje"
                                placeholder="Escribe tu consulta aquí"
                                required
                            ></textarea>
                        </div>

                        <button class="boton-enviar" type="submit">
                            <span>Enviar consulta</span>
                            <img src="<%= ResolveUrl("~/Images/envio.svg") %>" alt="" aria-hidden="true" class="boton-enviar__icono">
                        </button>

                        <div
                            class="mensaje-formulario"
                            id="mensajeExito"
                            role="status"
                            aria-live="polite"
                        >
                            Tu consulta se envió correctamente. Nuestro equipo se pondrá en contacto contigo pronto.
                        </div>
                    </form>
                </div>

            </div>
        </section>
    </main>
    </asp:Content>