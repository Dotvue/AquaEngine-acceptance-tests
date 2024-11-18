Feature: Leer Registro de usuario

    Scenario: Recuperación exitosa de un registro de usuario
        Given el endpoint "/api/v1/user/{id}" está disponible
        When se envía una solicitud GET con un id válido
        Then se recibe una respuesta con estado 200
        And el recurso de Usuario está incluido en el cuerpo de la respuesta con los detalles del id especificado.

    Scenario: Recuperación de un registro de usuario inexistente
        Given el endpoint "/api/v1/user/{id}" está disponible
        When se envía una solicitud GET con un id inválido
        Then se recibe una respuesta con estado 404
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registro de usuario no encontrado."