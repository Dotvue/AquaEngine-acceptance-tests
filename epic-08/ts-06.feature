Feature: Leer Registro de Maquinaria de Pesca

    Scenario: Recuperación exitosa de un registro de maquinaria de pesca
        Given el endpoint "/api/v1/monitored-machines/{id}" está disponible
        When se envía una solicitud GET con un id válido
        Then se recibe una respuesta con estado 200
        And el recurso de Maquinaria de Pesca está incluido en el cuerpo de la respuesta con los detalles del id especificado.

    Scenario: Recuperación de un registro de maquinaria de pesca inexistente
        Given el endpoint "/api/v1/monitored-machines/{id}" está disponible
        When se envía una solicitud GET con un id inválido
        Then se recibe una respuesta con estado 404
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registro de maquinaria de pesca no encontrado."