Feature: Actualizar Registro de Inventario

    Scenario: Actualización exitosa de un registro de inventario
        Given el endpoint "/api/v1/products/{id}" está disponible
        When se envía una solicitud PUT con el id y los valores actualizados para productId y cantidad
        Then se recibe una respuesta con estado 200
        And el recurso de Inventario actualizado está incluido en el cuerpo de la respuesta con los nuevos valores para productId y cantidad.

    Scenario: Actualización de un registro de inventario inexistente
        Given el endpoint "/api/v1/products/{id}" está disponible
        When se envía una solicitud PUT con un id inválido y valores actualizados
        Then se recibe una respuesta con estado 404
        And se incluye un mensaje en el cuerpo de la respuesta, con el valor "Registro de inventario no encontrado para actualizar."