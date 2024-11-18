Feature: Solicitud de compra de equipo estándar

    Scenario: Solicitud de compra enviada exitosamente
        Given el usuario accede a la opción de pedidos
        When selecciona un equipo estándar y completa el formulario de compra
        Then el sistema confirma la solicitud
        And el usuario recibe una notificación de compra exitosa

    Scenario: Error en la solicitud de compra
        Given el usuario intenta completar la solicitud de compra
        When hay un error en el envío del formulario
        Then el sistema muestra un mensaje de error
        And solicita al usuario que lo intente nuevamente.