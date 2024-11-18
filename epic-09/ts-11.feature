Feature: Actualizar registro de usuario

    Scenario: Actualización exitosa de un registro de usuario
        Given el endpoint "/api/v1/users/{id}" está disponible
        When se envía una solicitud PUT con el id y valores actualizados para userId y userDetails
        Then se recibe una respuesta con estado 200
        And el recurso de Usuario actualizado está incluido en el cuerpo de la respuesta con los nuevos valores para userId y userDetails.

    Scenario: Actualización de un registro de usuario inexistente
        Given el endpoint "/api/v1/users/{id}" está disponible
        When se envía una solicitud PUT con un id inválido y valores actualizados
        Then se recibe una respuesta con estado 404
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registro de usuario no encontrado para actualizar."