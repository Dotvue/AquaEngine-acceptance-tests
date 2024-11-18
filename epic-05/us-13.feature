Feature: Solicitud de compra de equipo personalizado

    Scenario: Solicitud de equipo personalizado realizada con éxito
        Given el usuario accede a la sección de equipos personalizados
        When completa el formulario con las especificaciones técnicas del equipo
        Then el sistema envía la solicitud al proveedor
        And el usuario recibe una confirmación del pedido siendo procesado correctamente.

    Scenario: Error en la solicitud de equipo personalizado
        Given el usuario intenta enviar una solicitud personalizada
        When el usuario envíe información incompleta o erroena en el formulario
        Then el sistema muestra un mensaje de error 
        And informa al usuario sobre los campos incompletos o imposibles de realizar.