<%@ Page Title="Confirmacion Cita" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmacionCita.aspx.cs" Inherits="mrv_salud.Pages.ConfirmacionCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Styles/Style_Confirmacion_Cita.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
    <main>
         <!-- Títulos de la página -->
        <section class="titulos_pagina">

            <p class="titulo_pequeño">RESERVA COMPLETADA</p> 

            <p class="subtitulo_pagina">Tu cita está confirmada</p>

            <p class="descripcion_pagina">
                Hemos registrado tu cita. Guarda tu código de confirmación para futuras consultas.
            </p>

        </section>
        
            <table class="tabla_confirmacion">

                <thead>
                    <tr>
                        <th colspan="2" class="encabezado_tabla">MRV SALUD | CENTRO MÉDICO</th>
                        
                    </tr>
                    <tr>
                        <th colspan="2" class="subtitulo_tabla">Detalles de la cita</th>
                    </tr>
                    </thead>

                <tr>
                    <th>Código de confirmación</th>
                    <td><asp:Label ID="lbl_codigo" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Nombre del paciente</th>
                    <td><asp:Label ID="lbl_nombre" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Especialidad</th>
                    <td><asp:Label ID="lbl_especialidad" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Fecha de la cita</th>
                    <td><asp:Label ID="lbl_fecha_cita" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Horario</th>
                    <td><asp:Label ID="lbl_hora" runat="server"></asp:Label></td>
                </tr>
               
            </table>
        <asp:Button ID="btn_guardar" runat="server" Text="Guardar comprobante" CssClass="btn_guardar" CausesValidation="true" OnClick="btn_guardar_Click" />
        <p class="ultima_fila">RECUERDE LLEGAR CON 30 MINUTOS DE ANTICIPACIÓN, PARA TOMA DE SIGNOS VITALES.</p>
       
    
        
    </main>

</asp:Content>
