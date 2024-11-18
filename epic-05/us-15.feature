Feature: Cancelación de solicitudes de equipos

    Scenario: Cancelación de solicitud exitosa
        Given el usuario ha realizado una solicitud y desea cancelarla
        When accede a la opción de cancelar antes del envío del equipo
        Then el sistema confirma la cancelación
        And el usuario recibe una confirmación sobre la cancelación.

    Scenario: Error en la cancelaciónde la solicitud
        Given el usuario ha realizado una solicitud
        And el equipo ya ha sido enviado
        When el usuario selecciona la opción para cancelar la solicitud
        Then el sistema muestra un mensaje indicando que no es posible cancelar la solicitud.