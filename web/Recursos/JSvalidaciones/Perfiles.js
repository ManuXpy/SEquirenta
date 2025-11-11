/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

// Función de validación de Bootstrap basada en JavaScript
(function () {
    'use strict';

    // Obtener el formulario y mensajes
    const form = document.getElementById('registrationForm');
    const successMessage = document.getElementById('successMessage');
    const errorMessage = document.getElementById('errorMessage');

    // Obtener botones (Modificar y Baja usan type="button" para no disparar la validación por defecto)
    const btnAlta = document.getElementById('btnAlta');
    const btnModificar = document.getElementById('btnModificar');
    const btnBaja = document.getElementById('btnBaja');

    // Función genérica para manejar la validación
    function handleFormSubmission(event, actionName) {
        event.preventDefault();
        event.stopPropagation();

        // Ocultar mensajes previos
        successMessage.classList.add('d-none');
        errorMessage.classList.add('d-none');

        // Solo la Alta/Modificación generalmente requiere validar todos los campos
        if (actionName === 'Alta' || actionName === 'Modificar') {
            if (!form.checkValidity()) {
                form.classList.add('was-validated');
                errorMessage.innerHTML = `Error de validación para la acción "${actionName}": Por favor, revisa los campos marcados en rojo.`;
                errorMessage.classList.remove('d-none');
                return; // Detener si falla la validación
            }
        }

        // Si la acción es Baja, la validación estricta puede no ser necesaria
        if (actionName === 'Baja') {
            // Aquí iría la lógica específica para la baja, por ejemplo, solo necesitar el username

            // En un entorno real, aquí se preguntaría confirmación

        }

        // Si es válido o es Baja (y la validación se pasó o se ignoró)
        form.classList.remove('was-validated');
        successMessage.innerHTML = `¡Operación de **${actionName}** realizada con éxito!`;
        successMessage.classList.remove('d-none');

        // Opcional: Limpiar el formulario solo después de una Alta
        if (actionName === 'Alta') {
            form.reset();
            form.classList.remove('was-validated');
        }
    }


    // Listeners para los botones

    // El botón de Alta usa el 'submit' del formulario (que siempre es tipo submit por defecto)
    form.addEventListener('submit', function (event) {
        handleFormSubmission(event, 'Alta');
    });

    // Modificar y Baja usan un listener de click ya que su type es "button"
    btnModificar.addEventListener('click', function (event) {
        handleFormSubmission(event, 'Modificar');
    });

    btnBaja.addEventListener('click', function (event) {
        handleFormSubmission(event, 'Baja');
    });


    // Envio solicitud de datos
    function buildAdminPayload(opcion) {
        // Definimos el objeto DENTRO de la función para evitar variables globales.
        const payload = {
            "opcion": opcion,
            // Usamos .val() directamente, asumiendo que estos IDs existen en el DOM.
            "codigoAdm": $('#codigoAdm').val(),
            "authAdm": $('#authAdm').val(),
            "passAdm": $('#passAdm').val(),
            "accessAdm": $('#accessAdm').val(),
            "flagAdm": $('#flagAdm').val()
        };
        return payload;
    }

    /**
     * Obtiene y renderiza los administradores activos.
     * Utiliza $.ajax y devuelve su Promesa para manejo de errores.
     */
    function getActivos() {
        const payload = buildAdminPayload(2); // Llamamos y obtenemos el objeto inmediatamente

        return $.ajax({
            url: "/CSCore/adminsSERVLET",
            type: 'POST',
            data: payload,
            cache: false // Generalmente útil para peticiones POST
        })
                .done(function (resp) {
                    // Limpiamos la tabla antes de renderizar
                    $("#tabla-Adm").empty();

                    // Iteramos sobre la respuesta
                    $.each(resp, function (indice, value) {
                        const newRow = `
                <tr>
                    <td>${value.KEY}</td>
                    <td>${value.auth}</td>
                    <td>${value.password}</td>
                    <td>${value.access}</td>
                    <td>${value.flags}</td>
                </tr>
            `;
                        $("#tabla-Adm").append(newRow);
                    });

                    // NOTA: Si 'resp' es una colección de filas de tabla (como sugiere el $.each),
                    // esta línea $('#miTableHtml').html(resp); probablemente es redundante/incorrecta
                    // o asume que 'resp' contiene la tabla HTML completa en el segundo caso.
                })
                .fail(function (xhr, status, error) {
                    console.error("Error al obtener activos:", status, error);
                    // Aquí podrías mostrar un mensaje de error al usuario
                });
    }



})();
   