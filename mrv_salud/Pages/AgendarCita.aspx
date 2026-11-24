<%@ Page Title="AgendarCita" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgendarCita.aspx.cs" Inherits="mrv_salud.Pages.AgendarCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Styles/Styles_agendar.css") %>" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
    <main>

        <!-- Títulos de la página -->
        <section class="titulos_pagina">

            <p class="titulo_pequeño">RESERVA EN LÍNEA</p>

            <p class="subtitulo_pagina">
                Agenda cita médica
            </p>

            <p class="descripcion_pagina">
                Completa los datos y recibe tu comprobante de reserva al instante.
            </p>

        </section>



        <div class="contenedor_cita">


            <!-- FORMULARIO, en asp no se pueden tener formularios anidados-->
            <div class="formulario_cita">

                <div class="formulario">


                    <!-- SECCIÓN 1: DATOS DEL PACIENTE -->

                    <div class="datos_paciente">

                        <h2>Datos del paciente</h2>

                        <!-- aqui empezamos a construir las columnas -->
                        <div class="fila_1">

                            <div class="campo">

                                <label for="nombre"> Nombre completo: </label>

                                <input type="text" id="nombre"name="nombre" placeholder="Escribe tu nombre" required>

                            </div>


                            <div class="campo">

                                <label for="apellido">Apellido:</label>

                                <input type="text" id="apellido"name="apellido" placeholder="Escribe tu apellido"required>

                            </div>

                        </div>


                        <!-- Fila 2: Género y fecha de nacimiento -->
                        <div class="fila_2">

                            <div class="campo">

                                <label for="genero"> Género: </label>

                                <select id="genero" name="genero" required>

                                    <option value="">
                                        Seleccione un género
                                    </option>

                                    <option value="masculino">
                                        Masculino
                                    </option>

                                    <option value="femenino">
                                        Femenino
                                    </option>

                                </select>

                            </div>


                            <div class="campo">

                                <label for="fecha_nacimiento"> Fecha de nacimiento: </label>

                                <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" placeholder="Selecciona tu fecha de nacimiento"required>

                            </div>

                        </div>


                        <!-- Fila 3: Correo y teléfono -->
                        <div class="fila_3">

                            <div class="campo">

                                <label for="email_paciente"> Correo electrónico:</label>

                                <input type="email" id="email_paciente" name="email" placeholder="Escribe tu correo electrónico" required>

                            </div>


                            <div class="campo">

                                <label for="telefono_paciente"> Teléfono:</label>

                                <input type="tel"id="telefono_paciente"name="telefono" placeholder="Escribe tu teléfono" required>

                            </div>

                        </div>

                    </div>


                    <div class="datos_cita">

                        <h2>Datos de la cita</h2>


                        <!-- Fila 4: Tipo de cita y especialidades -->
                        <div class="fila_6">


                            <!-- Tipo de cita -->
                            <div class="campo tipo_cita">

                                <p>Tipo de cita</p>

                                <select id="tipo" name="tipo_cita"required>

                                    <option value="">Seleccione un tipo de cita</option>

                                    <option value="nuevo"> Nuevo</option>

                                    <option value="subsecuente"> Subsecuente</option>

                                </select>


                            </div>


                            <!-- Especialidad y especialista -->
                            <div class="fila_7">

                                <div class="campo">

                                    <label for="especialidad"> Especialidad: </label>

                                    <input type="text" id="especialidad" name="especialidad" placeholder="Escribe la especialidad" required>

                                </div>


                                <div class="campo">

                                    <label for="especialista"> Especialista:</label>

                                    <input type="text" id="especialista" name="especialista" placeholder="Escribe el nombre del especialista" required>

                                </div>

                            </div>

                        </div>


                        <!-- Fila 5: Fecha y horario -->
                        <div class="fila_8">

                            <div class="campo">

                                <label for="fecha_cita">Fecha:</label>

                                <input type="date"id="fecha_cita"name="fecha_cita"required placeholder="Selecciona la fecha de la cita">

                            </div>


                            <div class="campo">

                                <label for="horario_cita"> Horario:</label>

                                <input type="text"id="horario_cita"name="horario"required placeholder="Escribe el horario de la cita">

                            </div>

                        </div>


                        <!-- Botón para enviar -->
                        <button class="btn_enviar_cita" type="submit">
                            Agendar cita
                        </button>

                    </div>

                </div>
                </div>

        


            <!-- =====================================
                 4. PANEL LATERAL
            ====================================== -->

            <aside class="panel_pasos">

                <h2 class="paso_a_paso">Tu cita, paso a paso</h2>
                <hr>

                <p class="paso_1">1. Ingresa tus datos personales</p>
                <p class="explicacion">Usaremos esta información para identificarte.</p>
                <hr>

                <p class="paso_1">2. Selecciona</p>
                <p class="explicacion">Especialidad, médico y horario.</p>
                <hr>

                <p class="paso_1">3. Recibe tu comprobante</p>
                <p class="explicacion">Guarda tu código para consultar la cita.</p>
                
                <a href="../pages/consultar-cita.html" class="consulta">Ya tengo una cita</a>

            </aside>

        </div>

    </main>

</asp:Content>
