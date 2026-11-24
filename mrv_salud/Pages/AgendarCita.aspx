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
                                <asp:TextBox ID="txt_nombre"runat="server"placeholder="Escribe tu nombre"></asp:TextBox>  

                            </div>


                            <div class="campo">

                                <label for="apellido">Apellido:</label>
                                <asp:TextBox ID="txt_apellido"runat="server"placeholder="Escribe tu apellido"></asp:TextBox>

                            </div>

                        </div>


                        <!-- Fila 2: Género y fecha de nacimiento -->
                        <div class="fila_2">

                            <div class="campo">

                                <label for="genero"> Género: </label>

                                <asp:DropDownList ID="lista_genero" runat="server">

                                 <asp:ListItem Value="">Seleccione un género</asp:ListItem>

                                  <asp:ListItem Value="masculino">Masculino</asp:ListItem>

                                  <asp:ListItem Value="femenino">Femenino</asp:ListItem>

                                  </asp:DropDownList>

                                <asp:Label ID="lbl_mensaje" runat="server" ForeColor="Red"></asp:Label>

                            </div>


                            <div class="campo">

                                <label for="fecha_nacimiento"> Fecha de nacimiento: </label>

                                <asp:TextBox ID="txt_fecha_nacimiento"  runat="server" TextMode="Date"></asp:TextBox>
                            </div>

                        </div>


                        <!-- Fila 3: Correo y teléfono -->
                        <div class="fila_3">

                            <div class="campo">

                                <label for="email_paciente"> Correo electrónico:</label>

                                <asp:TextBox ID="Text_correo"  runat="server" TextMode="Email" placeholder="Escribe tu correo electrónico">></asp:TextBox>


                            </div>


                            <div class="campo">

                                <label for="telefono_paciente"> Teléfono:</label>

                                <asp:TextBox ID="txt_cel" runat="server" TextMode="Phone" placeholder="Escribe tu número de celular"></asp:TextBox>

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
                                <asp:DropDownList ID="tipo_cita" runat="server">

                                <asp:ListItem Value="">Seleccione un tipo de cita</asp:ListItem>

                                <asp:ListItem Value="nuevo">Nuevo</asp:ListItem>

                                <asp:ListItem Value="subsecuente">Subsecuente</asp:ListItem>

                                </asp:DropDownList>

                                <asp:Label ID="mensaje_tipo" runat="server" ForeColor="Red"></asp:Label>

                            </div>


                            <!-- Especialidad y especialista -->
                            <div class="fila_7">

                                <div class="campo">

                                    <label for="especialidad"> Especialidad: </label>
                                    <asp:DropDownList ID="especialidad" runat="server">

                                    <asp:ListItem Value="">Seleccione un tipo de cita</asp:ListItem>

                                    <asp:ListItem Value="cardiologia">Cardiología</asp:ListItem>

                                    <asp:ListItem Value="pedriatria">Pedriatría</asp:ListItem>

                                    <asp:ListItem Value="nurologia">Neurología</asp:ListItem>

                                    <asp:ListItem Value="ortopedia">Ortopedia</asp:ListItem>

                                    </asp:DropDownList>
                                    <asp:Label ID="mensaje_especialidad" runat="server" ForeColor="Red"></asp:Label>

                                </div>


                                <div class="campo">

                                    <label for="especialista"> Especialista:</label>

                                    <asp:DropDownList ID="especialista" runat="server">

                                    <asp:ListItem Value="">Primero seleccione una especialidad</asp:ListItem>

                                    </asp:DropDownList>

                                </div>

                            </div>

                        </div>


                        <!-- Fila 5: Fecha y horario -->
                        <div class="fila_8">

                            <div class="campo">

                                <label for="fecha_cita">Fecha:</label>

                                <asp:TextBox ID="txt_fecha_cita" runat="server" TextMode="Date"></asp:TextBox>

                            </div>


                            <div class="campo">

                                <label for="horario_cita"> Horario:</label>

                                <asp:TextBox ID="txt_hora_cita" runat="server" TextMode="Time"></asp:TextBox>

                            </div>

                        </div>


                        <!-- Botón para enviar -->
                        <asp:Button ID="btn_agendar" runat="server" Text="Agendar cita" CssClass="btn_enviar_cita" OnClick="btnAgendar_Click" />
                       
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
