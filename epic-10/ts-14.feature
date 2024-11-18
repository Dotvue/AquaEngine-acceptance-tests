Feature: Leer registro de facturación

    Scenario: Recuperación exitosa de un registro de facturación
        Given el endpoint "/api/v1/invoices/{id}" está disponible
        When se envía una solicitud GET con un id válido
        Then se recibe una respuesta con estado 200
        And el recurso de Facturación está incluido en el cuerpo de la respuesta con los detalles del id especificado.

    Scenario: Recuperación de un registro de facturación inexistente
        Given el endpoint "/api/v1/invoices/{id}" está disponible
        When se envía una solicitud GET con un id inválido
        Then se recibe una respuesta con estado 404
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registro de facturación no encontrado."