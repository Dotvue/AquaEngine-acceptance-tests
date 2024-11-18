Feature: Actualizar Registro de Maquinaria de Pesca

    Scenario: Actualización exitosa de un registro de maquinaria de pesca
        Given el endpoint "/api/v1/monitored-machines/{id}" está disponible
        When se envía una solicitud PUT con el id y los valores actualizados para equipmentId y cantidad
        Then se recibe una respuesta con estado 200
        And el recurso de Maquinaria de Pesca actualizado está incluido en el cuerpo de la respuesta con los nuevos valores para equipmentId y cantidad.

    Scenario: Actualización de un registro de maquinaria de pesca inexistente
        Given el endpoint "/api/v1/monitored-machines/{id}" está disponible
        When se envía una solicitud PUT con un id inválido y valores actualizados
        Then se recibe una respuesta con estado 404
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registro de maquinaria de pesca no encontrado para actualizar."