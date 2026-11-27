<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultarCita.aspx.cs" Inherits="mrv_salud.Pages.ConsultarCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link href="<%= ResolveUrl("~/Styles/Styles_Consultar_Cita.css") %>" rel="stylesheet" /> 
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
        <main>

    <section class="titulos_pagina">

        <p class="titulo_pequeño">SEGUIMIENTO</p>

        <p class="subtitulo_pagina">
            Consulta tu cita médica
        </p>

        <p class="descripcion_pagina">
            Ingresa tu código de reserva para revisar todos los detalles.
        </p>

    </section>

    <div class="contenedor_cita">

        <div class="formulario_cita">

            <div class="campo">

                <label>CÓDIGO DE CITA O IDENTIDAD</label>

                <div class="boton">

                    <asp:TextBox ID="txt_apellido" runat="server" placeholder="Ejemplo: SL-A1B2C3D4"></asp:TextBox>

                    <asp:Button ID="btn_buscar" runat="server" Text="Consultar" CssClass="btn_buscar" CausesValidation="true" OnClick="btn_buscar_Click" />

                </div>

                <small>El código aparece en la parte superior de tu comprobante.</small>

            </div>

        </div>

        <div class="pasos">

            <aside class="panel_pasos">

                <h2 class="paso_a_paso">Consulta tu cita, paso a paso</h2>
                <hr>

                <p class="paso_1">1. Ingresa el código.</p>
                <p class="explicacion">Lo encuentras la parte superior de tu comprobante.</p>
                <hr>

                <p class="paso_1">2. Selecciona Consultar</p>
                <p class="explicacion">Asegurate de haber escrito correctamente el código.</p>
                <hr>

                <p class="paso_1">3. Observa el estado actual de tu cita.</p>
                <p class="explicacion">Puedes gestionar el estado.</p>


            </aside>

        </div>

    </div>

</main>

</asp:Content>
