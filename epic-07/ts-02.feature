Feature: Leer registro de inventario

    Scenario: Recuperación exitosa de un registro de inventario
        Given el endpoint "/api/v1/products/{id}" está disponible
        When se envía una solicitd GET con un id válido
        Then se recibe una respuesta con estado 200
        And el recurso de inventario está incluido en el cuerpo de la respuesta con los detalles del id especificado.

    Scenario: Recuperación de un registro de inventario inexistente
        Given el endpoint "/api/v1/products/{id}" está disponible
        When se envía una solicitd GET con un id inválido
        Then se recibe una respues con estado 404
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registtro de inventario no encontrado".