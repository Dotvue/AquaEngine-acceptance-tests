Feature: Eliminar Registro de Inventario

    Scenario: Eliminación exitosa de un registro de inventario
        Given el "endpoint /api/v1/products/{id}" está disponible
        When se envía una solicitud DELETE con un id válido
        Then se recibe una respuesta con estado 200
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registro de inventario eliminado con éxito".

    Scenario: Eliminación de un registro de inventario inexistente
        Given el endpoint "/api/v1/products/{id}" está disponible
        When se envía una solicitud DELETE con un id inválido
        Then se recibe una respuesta con estado 404
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registro de inventario no encontrado para eliminar."